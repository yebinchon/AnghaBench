; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpufreq-set.c_do_new_policy.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpufreq-set.c_do_new_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"wrong, unknown or unhandled CPU?\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cpufreq_policy*)* @do_new_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_new_policy(i32 %0, %struct.cpufreq_policy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpufreq_policy*, align 8
  %6 = alloca %struct.cpufreq_policy*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cpufreq_policy* %1, %struct.cpufreq_policy** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.cpufreq_policy* @cpufreq_get_policy(i32 %8)
  store %struct.cpufreq_policy* %9, %struct.cpufreq_policy** %6, align 8
  %10 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %6, align 8
  %11 = icmp ne %struct.cpufreq_policy* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @printf(i8* %13)
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %57

17:                                               ; preds = %2
  %18 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %19 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %6, align 8
  %24 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %27 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %22, %17
  %29 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %30 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %6, align 8
  %35 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %38 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %33, %28
  %40 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %41 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %6, align 8
  %46 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %49 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %53 = call i32 @cpufreq_set_policy(i32 %51, %struct.cpufreq_policy* %52)
  store i32 %53, i32* %7, align 4
  %54 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %6, align 8
  %55 = call i32 @cpufreq_put_policy(%struct.cpufreq_policy* %54)
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %50, %12
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.cpufreq_policy* @cpufreq_get_policy(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @cpufreq_set_policy(i32, %struct.cpufreq_policy*) #1

declare dso_local i32 @cpufreq_put_policy(%struct.cpufreq_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
