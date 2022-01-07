; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_set_process_cpu_timer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_set_process_cpu_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@CPUCLOCK_SCHED = common dso_local global i32 0, align 4
@TICK_NSEC = common dso_local global i64 0, align 8
@TICK_DEP_BIT_POSIX_TIMER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_process_cpu_timer(%struct.task_struct* %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @CPUCLOCK_SCHED, align 4
  %13 = icmp uge i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON_ONCE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %78

18:                                               ; preds = %4
  %19 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i64* %28, i64** %10, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %31 = call i64 @cpu_clock_sample_group(i32 %29, %struct.task_struct* %30, i32 1)
  store i64 %31, i64* %9, align 8
  %32 = load i64*, i64** %8, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %34, label %62

34:                                               ; preds = %18
  %35 = load i64*, i64** %8, align 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load i64*, i64** %8, align 8
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp sle i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i64, i64* @TICK_NSEC, align 8
  %45 = load i64*, i64** %8, align 8
  store i64 %44, i64* %45, align 8
  br label %51

46:                                               ; preds = %38
  %47 = load i64, i64* %9, align 8
  %48 = load i64*, i64** %8, align 8
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %49, %47
  store i64 %50, i64* %48, align 8
  br label %51

51:                                               ; preds = %46, %43
  br label %52

52:                                               ; preds = %51, %34
  %53 = load i64*, i64** %7, align 8
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  br label %78

57:                                               ; preds = %52
  %58 = load i64, i64* %9, align 8
  %59 = load i64*, i64** %7, align 8
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, %58
  store i64 %61, i64* %59, align 8
  br label %62

62:                                               ; preds = %57, %18
  %63 = load i64*, i64** %7, align 8
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %10, align 8
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %64, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i64*, i64** %7, align 8
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** %10, align 8
  store i64 %70, i64* %71, align 8
  br label %72

72:                                               ; preds = %68, %62
  %73 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %74 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i32, i32* @TICK_DEP_BIT_POSIX_TIMER, align 4
  %77 = call i32 @tick_dep_set_signal(%struct.TYPE_6__* %75, i32 %76)
  br label %78

78:                                               ; preds = %72, %56, %17
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @cpu_clock_sample_group(i32, %struct.task_struct*, i32) #1

declare dso_local i32 @tick_dep_set_signal(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
