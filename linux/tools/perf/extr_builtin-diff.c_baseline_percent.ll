; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-diff.c_baseline_percent.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-diff.c_baseline_percent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.hist_entry*)* @baseline_percent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @baseline_percent(%struct.hist_entry* %0) #0 {
  %2 = alloca %struct.hist_entry*, align 8
  %3 = alloca double, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %2, align 8
  %4 = load %struct.hist_entry*, %struct.hist_entry** %2, align 8
  %5 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call double @hists__total_period(i32 %6)
  store double %7, double* %3, align 8
  %8 = load %struct.hist_entry*, %struct.hist_entry** %2, align 8
  %9 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load double, double* %10, align 8
  %12 = fmul double 1.000000e+02, %11
  %13 = load double, double* %3, align 8
  %14 = fdiv double %12, %13
  ret double %14
}

declare dso_local double @hists__total_period(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
