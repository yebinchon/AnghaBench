; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_exit.c_wait_task_stopped.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_exit.c_wait_task_stopped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wait_opts = type { i32, i32, %struct.waitid_info*, i64 }
%struct.waitid_info = type { i32, i32, i32, i32 }
%struct.task_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WUNTRACED = common dso_local global i32 0, align 4
@WNOWAIT = common dso_local global i32 0, align 4
@CLD_TRAPPED = common dso_local global i32 0, align 4
@CLD_STOPPED = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4
@RUSAGE_BOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wait_opts*, i32, %struct.task_struct*)* @wait_task_stopped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_task_stopped(%struct.wait_opts* %0, i32 %1, %struct.task_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wait_opts*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.waitid_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wait_opts* %0, %struct.wait_opts** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.task_struct* %2, %struct.task_struct** %7, align 8
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %3
  %17 = load %struct.wait_opts*, %struct.wait_opts** %5, align 8
  %18 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @WUNTRACED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %142

24:                                               ; preds = %16, %3
  %25 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32* @task_stopped_code(%struct.task_struct* %25, i32 %26)
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %142

30:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  %31 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %32 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @spin_lock_irq(i32* %34)
  %36 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32* @task_stopped_code(%struct.task_struct* %36, i32 %37)
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = icmp ne i32* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  br label %67

46:                                               ; preds = %30
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %67

52:                                               ; preds = %46
  %53 = load %struct.wait_opts*, %struct.wait_opts** %5, align 8
  %54 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @WNOWAIT, align 4
  %57 = and i32 %55, %56
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %52
  %61 = load i32*, i32** %10, align 8
  store i32 0, i32* %61, align 4
  br label %62

62:                                               ; preds = %60, %52
  %63 = call i32 (...) @current_user_ns()
  %64 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %65 = call i32 @task_uid(%struct.task_struct* %64)
  %66 = call i32 @from_kuid_munged(i32 %63, i32 %65)
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %62, %51, %45
  %68 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %69 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock_irq(i32* %71)
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %142

76:                                               ; preds = %67
  %77 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %78 = call i32 @get_task_struct(%struct.task_struct* %77)
  %79 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %80 = call i32 @task_pid_vnr(%struct.task_struct* %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* @CLD_TRAPPED, align 4
  br label %87

85:                                               ; preds = %76
  %86 = load i32, i32* @CLD_STOPPED, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  store i32 %88, i32* %11, align 4
  %89 = call i32 @read_unlock(i32* @tasklist_lock)
  %90 = call i32 (...) @sched_annotate_sleep()
  %91 = load %struct.wait_opts*, %struct.wait_opts** %5, align 8
  %92 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %87
  %96 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %97 = load i32, i32* @RUSAGE_BOTH, align 4
  %98 = load %struct.wait_opts*, %struct.wait_opts** %5, align 8
  %99 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @getrusage(%struct.task_struct* %96, i32 %97, i64 %100)
  br label %102

102:                                              ; preds = %95, %87
  %103 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %104 = call i32 @put_task_struct(%struct.task_struct* %103)
  %105 = load %struct.wait_opts*, %struct.wait_opts** %5, align 8
  %106 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @WNOWAIT, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = call i64 @likely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %102
  %116 = load i32, i32* %9, align 4
  %117 = shl i32 %116, 8
  %118 = or i32 %117, 127
  %119 = load %struct.wait_opts*, %struct.wait_opts** %5, align 8
  %120 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %115, %102
  %122 = load %struct.wait_opts*, %struct.wait_opts** %5, align 8
  %123 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %122, i32 0, i32 2
  %124 = load %struct.waitid_info*, %struct.waitid_info** %123, align 8
  store %struct.waitid_info* %124, %struct.waitid_info** %8, align 8
  %125 = load %struct.waitid_info*, %struct.waitid_info** %8, align 8
  %126 = icmp ne %struct.waitid_info* %125, null
  br i1 %126, label %127, label %140

127:                                              ; preds = %121
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.waitid_info*, %struct.waitid_info** %8, align 8
  %130 = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.waitid_info*, %struct.waitid_info** %8, align 8
  %133 = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load %struct.waitid_info*, %struct.waitid_info** %8, align 8
  %136 = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load %struct.waitid_info*, %struct.waitid_info** %8, align 8
  %139 = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 4
  br label %140

140:                                              ; preds = %127, %121
  %141 = load i32, i32* %13, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %140, %75, %29, %23
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32* @task_stopped_code(%struct.task_struct*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @from_kuid_munged(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @task_uid(%struct.task_struct*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @task_pid_vnr(%struct.task_struct*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @sched_annotate_sleep(...) #1

declare dso_local i32 @getrusage(%struct.task_struct*, i32, i64) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
