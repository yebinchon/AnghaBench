; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpufreq-set.c_do_one_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpufreq-set.c_do_one_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cpufreq_policy*, i64, i32)* @do_one_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_one_cpu(i32 %0, %struct.cpufreq_policy* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpufreq_policy*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.cpufreq_policy* %1, %struct.cpufreq_policy** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %51 [
    i32 0, label %11
    i32 1, label %15
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %6, align 4
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @cpufreq_set_frequency(i32 %12, i64 %13)
  store i32 %14, i32* %5, align 4
  br label %55

15:                                               ; preds = %4
  %16 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %7, align 8
  %17 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %7, align 8
  %23 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cpufreq_modify_policy_min(i32 %21, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %55

26:                                               ; preds = %15
  %27 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %7, align 8
  %28 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %7, align 8
  %34 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cpufreq_modify_policy_max(i32 %32, i32 %35)
  store i32 %36, i32* %5, align 4
  br label %55

37:                                               ; preds = %26
  %38 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %7, align 8
  %39 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %7, align 8
  %45 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cpufreq_modify_policy_governor(i32 %43, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %55

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %4, %50
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %7, align 8
  %54 = call i32 @do_new_policy(i32 %52, %struct.cpufreq_policy* %53)
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %51, %42, %31, %20, %11
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @cpufreq_set_frequency(i32, i64) #1

declare dso_local i32 @cpufreq_modify_policy_min(i32, i32) #1

declare dso_local i32 @cpufreq_modify_policy_max(i32, i32) #1

declare dso_local i32 @cpufreq_modify_policy_governor(i32, i32) #1

declare dso_local i32 @do_new_policy(i32, %struct.cpufreq_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
