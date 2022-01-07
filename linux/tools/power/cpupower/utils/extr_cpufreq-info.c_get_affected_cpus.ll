; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpufreq-info.c_get_affected_cpus.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpufreq-info.c_get_affected_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_affected_cpus = type { i32, %struct.cpufreq_affected_cpus* }

@.str = private unnamed_addr constant [68 x i8] c"  CPUs which need to have their frequency coordinated by software: \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Not Available\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_affected_cpus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_affected_cpus(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_affected_cpus*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.cpufreq_affected_cpus* @cpufreq_get_affected_cpus(i32 %5)
  store %struct.cpufreq_affected_cpus* %6, %struct.cpufreq_affected_cpus** %4, align 8
  %7 = call i8* @_(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* %7)
  %9 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %4, align 8
  %10 = icmp ne %struct.cpufreq_affected_cpus* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* %12)
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %37

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %22, %16
  %18 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %4, align 8
  %19 = getelementptr inbounds %struct.cpufreq_affected_cpus, %struct.cpufreq_affected_cpus* %18, i32 0, i32 1
  %20 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %19, align 8
  %21 = icmp ne %struct.cpufreq_affected_cpus* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %4, align 8
  %24 = getelementptr inbounds %struct.cpufreq_affected_cpus, %struct.cpufreq_affected_cpus* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %4, align 8
  %28 = getelementptr inbounds %struct.cpufreq_affected_cpus, %struct.cpufreq_affected_cpus* %27, i32 0, i32 1
  %29 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %28, align 8
  store %struct.cpufreq_affected_cpus* %29, %struct.cpufreq_affected_cpus** %4, align 8
  br label %17

30:                                               ; preds = %17
  %31 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %4, align 8
  %32 = getelementptr inbounds %struct.cpufreq_affected_cpus, %struct.cpufreq_affected_cpus* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %4, align 8
  %36 = call i32 @cpufreq_put_affected_cpus(%struct.cpufreq_affected_cpus* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %30, %11
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.cpufreq_affected_cpus* @cpufreq_get_affected_cpus(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @cpufreq_put_affected_cpus(%struct.cpufreq_affected_cpus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
