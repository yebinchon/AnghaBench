; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_est.c_ip_vs_zero_estimator.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_est.c_ip_vs_zero_estimator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_stats = type { %struct.ip_vs_kstats, %struct.ip_vs_estimator }
%struct.ip_vs_kstats = type { i32, i32, i32, i32, i32 }
%struct.ip_vs_estimator = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_vs_zero_estimator(%struct.ip_vs_stats* %0) #0 {
  %2 = alloca %struct.ip_vs_stats*, align 8
  %3 = alloca %struct.ip_vs_estimator*, align 8
  %4 = alloca %struct.ip_vs_kstats*, align 8
  store %struct.ip_vs_stats* %0, %struct.ip_vs_stats** %2, align 8
  %5 = load %struct.ip_vs_stats*, %struct.ip_vs_stats** %2, align 8
  %6 = getelementptr inbounds %struct.ip_vs_stats, %struct.ip_vs_stats* %5, i32 0, i32 1
  store %struct.ip_vs_estimator* %6, %struct.ip_vs_estimator** %3, align 8
  %7 = load %struct.ip_vs_stats*, %struct.ip_vs_stats** %2, align 8
  %8 = getelementptr inbounds %struct.ip_vs_stats, %struct.ip_vs_stats* %7, i32 0, i32 0
  store %struct.ip_vs_kstats* %8, %struct.ip_vs_kstats** %4, align 8
  %9 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %4, align 8
  %10 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ip_vs_estimator*, %struct.ip_vs_estimator** %3, align 8
  %13 = getelementptr inbounds %struct.ip_vs_estimator, %struct.ip_vs_estimator* %12, i32 0, i32 9
  store i32 %11, i32* %13, align 8
  %14 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %4, align 8
  %15 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ip_vs_estimator*, %struct.ip_vs_estimator** %3, align 8
  %18 = getelementptr inbounds %struct.ip_vs_estimator, %struct.ip_vs_estimator* %17, i32 0, i32 8
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %4, align 8
  %20 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ip_vs_estimator*, %struct.ip_vs_estimator** %3, align 8
  %23 = getelementptr inbounds %struct.ip_vs_estimator, %struct.ip_vs_estimator* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 8
  %24 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %4, align 8
  %25 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ip_vs_estimator*, %struct.ip_vs_estimator** %3, align 8
  %28 = getelementptr inbounds %struct.ip_vs_estimator, %struct.ip_vs_estimator* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %4, align 8
  %30 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ip_vs_estimator*, %struct.ip_vs_estimator** %3, align 8
  %33 = getelementptr inbounds %struct.ip_vs_estimator, %struct.ip_vs_estimator* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ip_vs_estimator*, %struct.ip_vs_estimator** %3, align 8
  %35 = getelementptr inbounds %struct.ip_vs_estimator, %struct.ip_vs_estimator* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load %struct.ip_vs_estimator*, %struct.ip_vs_estimator** %3, align 8
  %37 = getelementptr inbounds %struct.ip_vs_estimator, %struct.ip_vs_estimator* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.ip_vs_estimator*, %struct.ip_vs_estimator** %3, align 8
  %39 = getelementptr inbounds %struct.ip_vs_estimator, %struct.ip_vs_estimator* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.ip_vs_estimator*, %struct.ip_vs_estimator** %3, align 8
  %41 = getelementptr inbounds %struct.ip_vs_estimator, %struct.ip_vs_estimator* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.ip_vs_estimator*, %struct.ip_vs_estimator** %3, align 8
  %43 = getelementptr inbounds %struct.ip_vs_estimator, %struct.ip_vs_estimator* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
