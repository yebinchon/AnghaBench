; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_cpu2y.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_cpu2y.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@topology_map = common dso_local global i32* null, align 8
@SLOT_MULT = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32)* @cpu2y to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @cpu2y(i32 %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32*, i32** @topology_map, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load i32*, i32** @topology_map, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = call double @cpu2slot(i32 %11)
  %13 = load double, double* @SLOT_MULT, align 8
  %14 = fmul double %12, %13
  store double %14, double* %2, align 8
  br label %20

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call double @cpu2slot(i32 %16)
  %18 = load double, double* @SLOT_MULT, align 8
  %19 = fmul double %17, %18
  store double %19, double* %2, align 8
  br label %20

20:                                               ; preds = %15, %6
  %21 = load double, double* %2, align 8
  ret double %21
}

declare dso_local double @cpu2slot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
