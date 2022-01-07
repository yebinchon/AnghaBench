; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpufreq-info.c_proc_cpufreq_output.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpufreq-info.c_proc_cpufreq_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32, i32, i32 }

@.str = private unnamed_addr constant [72 x i8] c"          minimum CPU frequency  -  maximum CPU frequency  -  governor\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"CPU%3d    %9lu kHz (%3d %%)  -  %9lu kHz (%3d %%)  -  %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @proc_cpufreq_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_cpufreq_output() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = call i8* @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* %8)
  %10 = call i32 (...) @count_cpus()
  store i32 %10, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %71, %0
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %74

15:                                               ; preds = %11
  %16 = load i32, i32* %1, align 4
  %17 = call %struct.cpufreq_policy* @cpufreq_get_policy(i32 %16)
  store %struct.cpufreq_policy* %17, %struct.cpufreq_policy** %3, align 8
  %18 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %19 = icmp ne %struct.cpufreq_policy* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %71

21:                                               ; preds = %15
  %22 = load i32, i32* %1, align 4
  %23 = call i64 @cpufreq_get_hardware_limits(i32 %22, i64* %6, i64* %7)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i64 0, i64* %7, align 8
  br label %43

26:                                               ; preds = %21
  %27 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %28 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 100
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %7, align 8
  %33 = udiv i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %4, align 4
  %35 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %36 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 100
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %7, align 8
  %41 = udiv i64 %39, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %26, %25
  %44 = load i32, i32* %1, align 4
  %45 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %46 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %7, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %4, align 4
  br label %53

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ %51, %50 ], [ 0, %52 ]
  %55 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %56 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %7, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %5, align 4
  br label %63

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i32 [ %61, %60 ], [ 0, %62 ]
  %65 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %66 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %47, i32 %54, i32 %57, i32 %64, i32 %67)
  %69 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %70 = call i32 @cpufreq_put_policy(%struct.cpufreq_policy* %69)
  br label %71

71:                                               ; preds = %63, %20
  %72 = load i32, i32* %1, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %1, align 4
  br label %11

74:                                               ; preds = %11
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @count_cpus(...) #1

declare dso_local %struct.cpufreq_policy* @cpufreq_get_policy(i32) #1

declare dso_local i64 @cpufreq_get_hardware_limits(i32, i64*, i64*) #1

declare dso_local i32 @cpufreq_put_policy(%struct.cpufreq_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
