; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_cpufreq_schedutil.c_get_next_freq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_cpufreq_schedutil.c_get_next_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sugov_policy = type { i32, i32, i32, %struct.cpufreq_policy* }
%struct.cpufreq_policy = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sugov_policy*, i64, i64)* @get_next_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_next_freq(%struct.sugov_policy* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sugov_policy*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cpufreq_policy*, align 8
  %9 = alloca i32, align 4
  store %struct.sugov_policy* %0, %struct.sugov_policy** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.sugov_policy*, %struct.sugov_policy** %5, align 8
  %11 = getelementptr inbounds %struct.sugov_policy, %struct.sugov_policy* %10, i32 0, i32 3
  %12 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %11, align 8
  store %struct.cpufreq_policy* %12, %struct.cpufreq_policy** %8, align 8
  %13 = call i64 (...) @arch_scale_freq_invariant()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %8, align 8
  %17 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  br label %24

20:                                               ; preds = %3
  %21 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %8, align 8
  %22 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi i32 [ %19, %15 ], [ %23, %20 ]
  store i32 %25, i32* %9, align 4
  %26 = load i64, i64* %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @map_util_freq(i64 %26, i32 %27, i64 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.sugov_policy*, %struct.sugov_policy** %5, align 8
  %32 = getelementptr inbounds %struct.sugov_policy, %struct.sugov_policy* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %24
  %36 = load %struct.sugov_policy*, %struct.sugov_policy** %5, align 8
  %37 = getelementptr inbounds %struct.sugov_policy, %struct.sugov_policy* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load %struct.sugov_policy*, %struct.sugov_policy** %5, align 8
  %42 = getelementptr inbounds %struct.sugov_policy, %struct.sugov_policy* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %4, align 4
  br label %53

44:                                               ; preds = %35, %24
  %45 = load %struct.sugov_policy*, %struct.sugov_policy** %5, align 8
  %46 = getelementptr inbounds %struct.sugov_policy, %struct.sugov_policy* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.sugov_policy*, %struct.sugov_policy** %5, align 8
  %49 = getelementptr inbounds %struct.sugov_policy, %struct.sugov_policy* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @cpufreq_driver_resolve_freq(%struct.cpufreq_policy* %50, i32 %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %44, %40
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @arch_scale_freq_invariant(...) #1

declare dso_local i32 @map_util_freq(i64, i32, i64) #1

declare dso_local i32 @cpufreq_driver_resolve_freq(%struct.cpufreq_policy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
