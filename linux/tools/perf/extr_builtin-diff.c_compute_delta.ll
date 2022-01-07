; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-diff.c_compute_delta.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-diff.c_compute_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { double, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.hist_entry*, %struct.hist_entry*)* @compute_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @compute_delta(%struct.hist_entry* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca %struct.hist_entry*, align 8
  %4 = alloca %struct.hist_entry*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %3, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %4, align 8
  %7 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %8 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %9 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call double @period_percent(%struct.hist_entry* %7, i32 %11)
  store double %12, double* %5, align 8
  %13 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %14 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %15 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call double @period_percent(%struct.hist_entry* %13, i32 %17)
  store double %18, double* %6, align 8
  %19 = load double, double* %6, align 8
  %20 = load double, double* %5, align 8
  %21 = fsub double %19, %20
  %22 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %23 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store double %21, double* %24, align 8
  %25 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %26 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 1, i32* %27, align 8
  %28 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %29 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load double, double* %30, align 8
  ret double %31
}

declare dso_local double @period_percent(%struct.hist_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
