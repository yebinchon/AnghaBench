; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-shadow.c_runtime_stat_avg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-shadow.c_runtime_stat_avg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.runtime_stat = type { i32 }
%struct.saved_value = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.runtime_stat*, i32, i32, i32)* @runtime_stat_avg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @runtime_stat_avg(%struct.runtime_stat* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca %struct.runtime_stat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.saved_value*, align 8
  store %struct.runtime_stat* %0, %struct.runtime_stat** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.runtime_stat*, %struct.runtime_stat** %6, align 8
  %15 = call %struct.saved_value* @saved_value_lookup(i32* null, i32 %11, i32 0, i32 %12, i32 %13, %struct.runtime_stat* %14)
  store %struct.saved_value* %15, %struct.saved_value** %10, align 8
  %16 = load %struct.saved_value*, %struct.saved_value** %10, align 8
  %17 = icmp ne %struct.saved_value* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store double 0.000000e+00, double* %5, align 8
  br label %23

19:                                               ; preds = %4
  %20 = load %struct.saved_value*, %struct.saved_value** %10, align 8
  %21 = getelementptr inbounds %struct.saved_value, %struct.saved_value* %20, i32 0, i32 0
  %22 = call double @avg_stats(i32* %21)
  store double %22, double* %5, align 8
  br label %23

23:                                               ; preds = %19, %18
  %24 = load double, double* %5, align 8
  ret double %24
}

declare dso_local %struct.saved_value* @saved_value_lookup(i32*, i32, i32, i32, i32, %struct.runtime_stat*) #1

declare dso_local double @avg_stats(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
