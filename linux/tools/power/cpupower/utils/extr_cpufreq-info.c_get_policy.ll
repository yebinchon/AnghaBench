; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpufreq-info.c_get_policy.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpufreq-info.c_get_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"  Unable to determine current policy\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"  current policy: frequency should be within \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" and \00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c".\0A                  \00", align 1
@.str.4 = private unnamed_addr constant [86 x i8] c"The governor \22%s\22 may decide which speed to use\0A                  within this range.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_policy(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_policy*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.cpufreq_policy* @cpufreq_get_policy(i32 %5)
  store %struct.cpufreq_policy* %6, %struct.cpufreq_policy** %4, align 8
  %7 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %8 = icmp ne %struct.cpufreq_policy* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* %10)
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %35

14:                                               ; preds = %1
  %15 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* %15)
  %17 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %18 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @print_speed(i32 %19)
  %21 = call i8* @_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* %21)
  %23 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %24 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @print_speed(i32 %25)
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %28 = call i8* @_(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.4, i64 0, i64 0))
  %29 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %30 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (i8*, ...) @printf(i8* %28, i8* %31)
  %33 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %34 = call i32 @cpufreq_put_policy(%struct.cpufreq_policy* %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %14, %9
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.cpufreq_policy* @cpufreq_get_policy(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @print_speed(i32) #1

declare dso_local i32 @cpufreq_put_policy(%struct.cpufreq_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
