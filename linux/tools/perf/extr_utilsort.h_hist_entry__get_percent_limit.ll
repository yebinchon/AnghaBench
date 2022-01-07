; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_utilsort.h_hist_entry__get_percent_limit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_utilsort.h_hist_entry__get_percent_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.hist_entry = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { double }
%struct.TYPE_4__ = type { double }

@symbol_conf = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.hist_entry*)* @hist_entry__get_percent_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @hist_entry__get_percent_limit(%struct.hist_entry* %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca %struct.hist_entry*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %3, align 8
  %6 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %7 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load double, double* %8, align 8
  store double %9, double* %4, align 8
  %10 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %11 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call double @hists__total_period(i32 %12)
  store double %13, double* %5, align 8
  %14 = load double, double* %5, align 8
  %15 = fcmp oeq double %14, 0.000000e+00
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store float 0.000000e+00, float* %2, align 4
  br label %35

20:                                               ; preds = %1
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @symbol_conf, i32 0, i32 0), align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %25 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load double, double* %27, align 8
  store double %28, double* %4, align 8
  br label %29

29:                                               ; preds = %23, %20
  %30 = load double, double* %4, align 8
  %31 = fmul double %30, 1.000000e+02
  %32 = load double, double* %5, align 8
  %33 = fdiv double %31, %32
  %34 = fptrunc double %33 to float
  store float %34, float* %2, align 4
  br label %35

35:                                               ; preds = %29, %19
  %36 = load float, float* %2, align 4
  ret float %36
}

declare dso_local double @hists__total_period(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
