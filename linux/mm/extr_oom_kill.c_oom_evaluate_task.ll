; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_oom_kill.c_oom_evaluate_task.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_oom_kill.c_oom_evaluate_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.oom_control = type { i64, %struct.task_struct*, i32 }

@MMF_OOM_SKIP = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i8*)* @oom_evaluate_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oom_evaluate_task(%struct.task_struct* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.oom_control*, align 8
  %7 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.oom_control*
  store %struct.oom_control* %9, %struct.oom_control** %6, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %11 = call i64 @oom_unkillable_task(%struct.task_struct* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %85

14:                                               ; preds = %2
  %15 = load %struct.oom_control*, %struct.oom_control** %6, align 8
  %16 = call i32 @is_memcg_oom(%struct.oom_control* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %20 = load %struct.oom_control*, %struct.oom_control** %6, align 8
  %21 = call i32 @oom_cpuset_eligible(%struct.task_struct* %19, %struct.oom_control* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %85

24:                                               ; preds = %18, %14
  %25 = load %struct.oom_control*, %struct.oom_control** %6, align 8
  %26 = call i32 @is_sysrq_oom(%struct.oom_control* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %24
  %29 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %30 = call i64 @tsk_is_oom_victim(%struct.task_struct* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i32, i32* @MMF_OOM_SKIP, align 4
  %34 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %35 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = call i64 @test_bit(i32 %33, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %85

43:                                               ; preds = %32
  br label %86

44:                                               ; preds = %28, %24
  %45 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %46 = call i64 @oom_task_origin(%struct.task_struct* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i64, i64* @ULONG_MAX, align 8
  store i64 %49, i64* %7, align 8
  br label %66

50:                                               ; preds = %44
  %51 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %52 = load %struct.oom_control*, %struct.oom_control** %6, align 8
  %53 = getelementptr inbounds %struct.oom_control, %struct.oom_control* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @oom_badness(%struct.task_struct* %51, i32 %54)
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.oom_control*, %struct.oom_control** %6, align 8
  %61 = getelementptr inbounds %struct.oom_control, %struct.oom_control* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ult i64 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58, %50
  br label %85

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %48
  %67 = load %struct.oom_control*, %struct.oom_control** %6, align 8
  %68 = getelementptr inbounds %struct.oom_control, %struct.oom_control* %67, i32 0, i32 1
  %69 = load %struct.task_struct*, %struct.task_struct** %68, align 8
  %70 = icmp ne %struct.task_struct* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.oom_control*, %struct.oom_control** %6, align 8
  %73 = getelementptr inbounds %struct.oom_control, %struct.oom_control* %72, i32 0, i32 1
  %74 = load %struct.task_struct*, %struct.task_struct** %73, align 8
  %75 = call i32 @put_task_struct(%struct.task_struct* %74)
  br label %76

76:                                               ; preds = %71, %66
  %77 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %78 = call i32 @get_task_struct(%struct.task_struct* %77)
  %79 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %80 = load %struct.oom_control*, %struct.oom_control** %6, align 8
  %81 = getelementptr inbounds %struct.oom_control, %struct.oom_control* %80, i32 0, i32 1
  store %struct.task_struct* %79, %struct.task_struct** %81, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.oom_control*, %struct.oom_control** %6, align 8
  %84 = getelementptr inbounds %struct.oom_control, %struct.oom_control* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %76, %64, %42, %23, %13
  store i32 0, i32* %3, align 4
  br label %99

86:                                               ; preds = %43
  %87 = load %struct.oom_control*, %struct.oom_control** %6, align 8
  %88 = getelementptr inbounds %struct.oom_control, %struct.oom_control* %87, i32 0, i32 1
  %89 = load %struct.task_struct*, %struct.task_struct** %88, align 8
  %90 = icmp ne %struct.task_struct* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.oom_control*, %struct.oom_control** %6, align 8
  %93 = getelementptr inbounds %struct.oom_control, %struct.oom_control* %92, i32 0, i32 1
  %94 = load %struct.task_struct*, %struct.task_struct** %93, align 8
  %95 = call i32 @put_task_struct(%struct.task_struct* %94)
  br label %96

96:                                               ; preds = %91, %86
  %97 = load %struct.oom_control*, %struct.oom_control** %6, align 8
  %98 = getelementptr inbounds %struct.oom_control, %struct.oom_control* %97, i32 0, i32 1
  store %struct.task_struct* inttoptr (i64 -1 to %struct.task_struct*), %struct.task_struct** %98, align 8
  store i32 1, i32* %3, align 4
  br label %99

99:                                               ; preds = %96, %85
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @oom_unkillable_task(%struct.task_struct*) #1

declare dso_local i32 @is_memcg_oom(%struct.oom_control*) #1

declare dso_local i32 @oom_cpuset_eligible(%struct.task_struct*, %struct.oom_control*) #1

declare dso_local i32 @is_sysrq_oom(%struct.oom_control*) #1

declare dso_local i64 @tsk_is_oom_victim(%struct.task_struct*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @oom_task_origin(%struct.task_struct*) #1

declare dso_local i64 @oom_badness(%struct.task_struct*, i32) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
