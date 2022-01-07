; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_est.c_ip_vs_read_estimator.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_est.c_ip_vs_read_estimator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_kstats = type { i32, i32, i32, i32, i32 }
%struct.ip_vs_stats = type { %struct.ip_vs_estimator }
%struct.ip_vs_estimator = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_vs_read_estimator(%struct.ip_vs_kstats* %0, %struct.ip_vs_stats* %1) #0 {
  %3 = alloca %struct.ip_vs_kstats*, align 8
  %4 = alloca %struct.ip_vs_stats*, align 8
  %5 = alloca %struct.ip_vs_estimator*, align 8
  store %struct.ip_vs_kstats* %0, %struct.ip_vs_kstats** %3, align 8
  store %struct.ip_vs_stats* %1, %struct.ip_vs_stats** %4, align 8
  %6 = load %struct.ip_vs_stats*, %struct.ip_vs_stats** %4, align 8
  %7 = getelementptr inbounds %struct.ip_vs_stats, %struct.ip_vs_stats* %6, i32 0, i32 0
  store %struct.ip_vs_estimator* %7, %struct.ip_vs_estimator** %5, align 8
  %8 = load %struct.ip_vs_estimator*, %struct.ip_vs_estimator** %5, align 8
  %9 = getelementptr inbounds %struct.ip_vs_estimator, %struct.ip_vs_estimator* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 511
  %12 = ashr i32 %11, 10
  %13 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %3, align 8
  %14 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ip_vs_estimator*, %struct.ip_vs_estimator** %5, align 8
  %16 = getelementptr inbounds %struct.ip_vs_estimator, %struct.ip_vs_estimator* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 511
  %19 = ashr i32 %18, 10
  %20 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %3, align 8
  %21 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ip_vs_estimator*, %struct.ip_vs_estimator** %5, align 8
  %23 = getelementptr inbounds %struct.ip_vs_estimator, %struct.ip_vs_estimator* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 511
  %26 = ashr i32 %25, 10
  %27 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %3, align 8
  %28 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ip_vs_estimator*, %struct.ip_vs_estimator** %5, align 8
  %30 = getelementptr inbounds %struct.ip_vs_estimator, %struct.ip_vs_estimator* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 15
  %33 = ashr i32 %32, 5
  %34 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %3, align 8
  %35 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ip_vs_estimator*, %struct.ip_vs_estimator** %5, align 8
  %37 = getelementptr inbounds %struct.ip_vs_estimator, %struct.ip_vs_estimator* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 15
  %40 = ashr i32 %39, 5
  %41 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %3, align 8
  %42 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
