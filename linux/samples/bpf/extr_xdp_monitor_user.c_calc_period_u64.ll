; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_monitor_user.c_calc_period_u64.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_monitor_user.c_calc_period_u64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record_u64 = type { i64 }

@NANOSEC_PER_SEC = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.record_u64*, %struct.record_u64*)* @calc_period_u64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @calc_period_u64(%struct.record_u64* %0, %struct.record_u64* %1) #0 {
  %3 = alloca %struct.record_u64*, align 8
  %4 = alloca %struct.record_u64*, align 8
  %5 = alloca double, align 8
  %6 = alloca i64, align 8
  store %struct.record_u64* %0, %struct.record_u64** %3, align 8
  store %struct.record_u64* %1, %struct.record_u64** %4, align 8
  store double 0.000000e+00, double* %5, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.record_u64*, %struct.record_u64** %3, align 8
  %8 = getelementptr inbounds %struct.record_u64, %struct.record_u64* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.record_u64*, %struct.record_u64** %4, align 8
  %11 = getelementptr inbounds %struct.record_u64, %struct.record_u64* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = sitofp i64 %17 to double
  %19 = load double, double* @NANOSEC_PER_SEC, align 8
  %20 = fdiv double %18, %19
  store double %20, double* %5, align 8
  br label %21

21:                                               ; preds = %16, %2
  %22 = load double, double* %5, align 8
  ret double %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
