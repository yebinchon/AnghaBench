; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_monitor_user.c_calc_info.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_monitor_user.c_calc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datarec = type { double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.datarec*, %struct.datarec*, double)* @calc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @calc_info(%struct.datarec* %0, %struct.datarec* %1, double %2) #0 {
  %4 = alloca %struct.datarec*, align 8
  %5 = alloca %struct.datarec*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store %struct.datarec* %0, %struct.datarec** %4, align 8
  store %struct.datarec* %1, %struct.datarec** %5, align 8
  store double %2, double* %6, align 8
  store double 0.000000e+00, double* %7, align 8
  store double 0.000000e+00, double* %8, align 8
  %9 = load double, double* %6, align 8
  %10 = fcmp ogt double %9, 0.000000e+00
  br i1 %10, label %11, label %22

11:                                               ; preds = %3
  %12 = load %struct.datarec*, %struct.datarec** %4, align 8
  %13 = getelementptr inbounds %struct.datarec, %struct.datarec* %12, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = load %struct.datarec*, %struct.datarec** %5, align 8
  %16 = getelementptr inbounds %struct.datarec, %struct.datarec* %15, i32 0, i32 0
  %17 = load double, double* %16, align 8
  %18 = fsub double %14, %17
  store double %18, double* %7, align 8
  %19 = load double, double* %7, align 8
  %20 = load double, double* %6, align 8
  %21 = fdiv double %19, %20
  store double %21, double* %8, align 8
  br label %22

22:                                               ; preds = %11, %3
  %23 = load double, double* %8, align 8
  ret double %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
