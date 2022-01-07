; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/lib/extr_cpufreq.c_cpufreq_get_policy.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/lib/extr_cpufreq.c_cpufreq_get_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { %struct.cpufreq_policy*, i8*, i8* }

@SCALING_GOVERNOR = common dso_local global i32 0, align 4
@SCALING_MIN_FREQ = common dso_local global i32 0, align 4
@SCALING_MAX_FREQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cpufreq_policy* @cpufreq_get_policy(i32 %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_policy*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call %struct.cpufreq_policy* @malloc(i32 24)
  store %struct.cpufreq_policy* %5, %struct.cpufreq_policy** %4, align 8
  %6 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %7 = icmp ne %struct.cpufreq_policy* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.cpufreq_policy* null, %struct.cpufreq_policy** %2, align 8
  br label %51

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SCALING_GOVERNOR, align 4
  %12 = call %struct.cpufreq_policy* @sysfs_cpufreq_get_one_string(i32 %10, i32 %11)
  %13 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %14 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %13, i32 0, i32 0
  store %struct.cpufreq_policy* %12, %struct.cpufreq_policy** %14, align 8
  %15 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %16 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %15, i32 0, i32 0
  %17 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %16, align 8
  %18 = icmp ne %struct.cpufreq_policy* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %9
  %20 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %21 = call i32 @free(%struct.cpufreq_policy* %20)
  store %struct.cpufreq_policy* null, %struct.cpufreq_policy** %2, align 8
  br label %51

22:                                               ; preds = %9
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @SCALING_MIN_FREQ, align 4
  %25 = call i8* @sysfs_cpufreq_get_one_value(i32 %23, i32 %24)
  %26 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %27 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @SCALING_MAX_FREQ, align 4
  %30 = call i8* @sysfs_cpufreq_get_one_value(i32 %28, i32 %29)
  %31 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %32 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %34 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %22
  %38 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %39 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %37, %22
  %43 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %44 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %43, i32 0, i32 0
  %45 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %44, align 8
  %46 = call i32 @free(%struct.cpufreq_policy* %45)
  %47 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %48 = call i32 @free(%struct.cpufreq_policy* %47)
  store %struct.cpufreq_policy* null, %struct.cpufreq_policy** %2, align 8
  br label %51

49:                                               ; preds = %37
  %50 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  store %struct.cpufreq_policy* %50, %struct.cpufreq_policy** %2, align 8
  br label %51

51:                                               ; preds = %49, %42, %19, %8
  %52 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  ret %struct.cpufreq_policy* %52
}

declare dso_local %struct.cpufreq_policy* @malloc(i32) #1

declare dso_local %struct.cpufreq_policy* @sysfs_cpufreq_get_one_string(i32, i32) #1

declare dso_local i32 @free(%struct.cpufreq_policy*) #1

declare dso_local i8* @sysfs_cpufreq_get_one_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
