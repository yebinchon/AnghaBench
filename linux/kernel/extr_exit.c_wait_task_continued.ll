; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_exit.c_wait_task_continued.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_exit.c_wait_task_continued.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wait_opts = type { i32, i32, %struct.waitid_info*, i64 }
%struct.waitid_info = type { i32, i32, i32, i32 }
%struct.task_struct = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@WCONTINUED = common dso_local global i32 0, align 4
@SIGNAL_STOP_CONTINUED = common dso_local global i32 0, align 4
@WNOWAIT = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4
@RUSAGE_BOTH = common dso_local global i32 0, align 4
@CLD_CONTINUED = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wait_opts*, %struct.task_struct*)* @wait_task_continued to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_task_continued(%struct.wait_opts* %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wait_opts*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.waitid_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wait_opts* %0, %struct.wait_opts** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %9 = load %struct.wait_opts*, %struct.wait_opts** %4, align 8
  %10 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @WCONTINUED, align 4
  %13 = and i32 %11, %12
  %14 = call i32 @unlikely(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %117

17:                                               ; preds = %2
  %18 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SIGNAL_STOP_CONTINUED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %117

27:                                               ; preds = %17
  %28 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @spin_lock_irq(i32* %31)
  %33 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SIGNAL_STOP_CONTINUED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %27
  %42 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %43 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock_irq(i32* %45)
  store i32 0, i32* %3, align 4
  br label %117

47:                                               ; preds = %27
  %48 = load %struct.wait_opts*, %struct.wait_opts** %4, align 8
  %49 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @WNOWAIT, align 4
  %52 = and i32 %50, %51
  %53 = call i32 @unlikely(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @SIGNAL_STOP_CONTINUED, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %59 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %57
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %55, %47
  %65 = call i32 (...) @current_user_ns()
  %66 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %67 = call i32 @task_uid(%struct.task_struct* %66)
  %68 = call i32 @from_kuid_munged(i32 %65, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %70 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = call i32 @spin_unlock_irq(i32* %72)
  %74 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %75 = call i32 @task_pid_vnr(%struct.task_struct* %74)
  store i32 %75, i32* %7, align 4
  %76 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %77 = call i32 @get_task_struct(%struct.task_struct* %76)
  %78 = call i32 @read_unlock(i32* @tasklist_lock)
  %79 = call i32 (...) @sched_annotate_sleep()
  %80 = load %struct.wait_opts*, %struct.wait_opts** %4, align 8
  %81 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %64
  %85 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %86 = load i32, i32* @RUSAGE_BOTH, align 4
  %87 = load %struct.wait_opts*, %struct.wait_opts** %4, align 8
  %88 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @getrusage(%struct.task_struct* %85, i32 %86, i64 %89)
  br label %91

91:                                               ; preds = %84, %64
  %92 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %93 = call i32 @put_task_struct(%struct.task_struct* %92)
  %94 = load %struct.wait_opts*, %struct.wait_opts** %4, align 8
  %95 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %94, i32 0, i32 2
  %96 = load %struct.waitid_info*, %struct.waitid_info** %95, align 8
  store %struct.waitid_info* %96, %struct.waitid_info** %6, align 8
  %97 = load %struct.waitid_info*, %struct.waitid_info** %6, align 8
  %98 = icmp ne %struct.waitid_info* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %91
  %100 = load %struct.wait_opts*, %struct.wait_opts** %4, align 8
  %101 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %100, i32 0, i32 1
  store i32 65535, i32* %101, align 4
  br label %115

102:                                              ; preds = %91
  %103 = load i32, i32* @CLD_CONTINUED, align 4
  %104 = load %struct.waitid_info*, %struct.waitid_info** %6, align 8
  %105 = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.waitid_info*, %struct.waitid_info** %6, align 8
  %108 = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.waitid_info*, %struct.waitid_info** %6, align 8
  %111 = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @SIGCONT, align 4
  %113 = load %struct.waitid_info*, %struct.waitid_info** %6, align 8
  %114 = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %102, %99
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %115, %41, %26, %16
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @from_kuid_munged(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @task_uid(%struct.task_struct*) #1

declare dso_local i32 @task_pid_vnr(%struct.task_struct*) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @sched_annotate_sleep(...) #1

declare dso_local i32 @getrusage(%struct.task_struct*, i32, i64) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
