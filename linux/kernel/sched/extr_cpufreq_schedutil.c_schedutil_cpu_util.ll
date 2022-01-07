; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_cpufreq_schedutil.c_schedutil_cpu_util.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_cpufreq_schedutil.c_schedutil_cpu_util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.rq = type { i32 }

@CONFIG_UCLAMP_TASK = common dso_local global i32 0, align 4
@FREQUENCY_UTIL = common dso_local global i32 0, align 4
@ENERGY_UTIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @schedutil_cpu_util(i32 %0, i64 %1, i64 %2, i32 %3, %struct.task_struct* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.task_struct*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.rq*, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.task_struct* %4, %struct.task_struct** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.rq* @cpu_rq(i32 %16)
  store %struct.rq* %17, %struct.rq** %15, align 8
  %18 = load i32, i32* @CONFIG_UCLAMP_TASK, align 4
  %19 = call i32 @IS_BUILTIN(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @FREQUENCY_UTIL, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load %struct.rq*, %struct.rq** %15, align 8
  %27 = getelementptr inbounds %struct.rq, %struct.rq* %26, i32 0, i32 0
  %28 = call i64 @rt_rq_is_runnable(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i64, i64* %9, align 8
  store i64 %31, i64* %6, align 8
  br label %94

32:                                               ; preds = %25, %21, %5
  %33 = load %struct.rq*, %struct.rq** %15, align 8
  %34 = call i64 @cpu_util_irq(%struct.rq* %33)
  store i64 %34, i64* %14, align 8
  %35 = load i64, i64* %14, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp uge i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i64, i64* %9, align 8
  store i64 %42, i64* %6, align 8
  br label %94

43:                                               ; preds = %32
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.rq*, %struct.rq** %15, align 8
  %46 = call i64 @cpu_util_rt(%struct.rq* %45)
  %47 = add i64 %44, %46
  store i64 %47, i64* %13, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @FREQUENCY_UTIL, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load %struct.rq*, %struct.rq** %15, align 8
  %53 = load i64, i64* %13, align 8
  %54 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %55 = call i64 @uclamp_util_with(%struct.rq* %52, i64 %53, %struct.task_struct* %54)
  store i64 %55, i64* %13, align 8
  br label %56

56:                                               ; preds = %51, %43
  %57 = load %struct.rq*, %struct.rq** %15, align 8
  %58 = call i64 @cpu_util_dl(%struct.rq* %57)
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %12, align 8
  %61 = add i64 %59, %60
  %62 = load i64, i64* %9, align 8
  %63 = icmp uge i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i64, i64* %9, align 8
  store i64 %65, i64* %6, align 8
  br label %94

66:                                               ; preds = %56
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @ENERGY_UTIL, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %13, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %13, align 8
  br label %74

74:                                               ; preds = %70, %66
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* %14, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i64 @scale_irq_capacity(i64 %75, i64 %76, i64 %77)
  store i64 %78, i64* %13, align 8
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* %13, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %13, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @FREQUENCY_UTIL, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %74
  %86 = load %struct.rq*, %struct.rq** %15, align 8
  %87 = call i64 @cpu_bw_dl(%struct.rq* %86)
  %88 = load i64, i64* %13, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %13, align 8
  br label %90

90:                                               ; preds = %85, %74
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* %13, align 8
  %93 = call i64 @min(i64 %91, i64 %92)
  store i64 %93, i64* %6, align 8
  br label %94

94:                                               ; preds = %90, %64, %41, %30
  %95 = load i64, i64* %6, align 8
  ret i64 %95
}

declare dso_local %struct.rq* @cpu_rq(i32) #1

declare dso_local i32 @IS_BUILTIN(i32) #1

declare dso_local i64 @rt_rq_is_runnable(i32*) #1

declare dso_local i64 @cpu_util_irq(%struct.rq*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @cpu_util_rt(%struct.rq*) #1

declare dso_local i64 @uclamp_util_with(%struct.rq*, i64, %struct.task_struct*) #1

declare dso_local i64 @cpu_util_dl(%struct.rq*) #1

declare dso_local i64 @scale_irq_capacity(i64, i64, i64) #1

declare dso_local i64 @cpu_bw_dl(%struct.rq*) #1

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
