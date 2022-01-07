; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_annotate__address_color.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_annotate__address_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_range = type { i32 }

@PERF_COLOR_RED = common dso_local global i8* null, align 8
@PERF_COLOR_NORMAL = common dso_local global i8* null, align 8
@PERF_COLOR_MAGENTA = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.block_range*)* @annotate__address_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @annotate__address_color(%struct.block_range* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.block_range*, align 8
  %4 = alloca double, align 8
  store %struct.block_range* %0, %struct.block_range** %3, align 8
  %5 = load %struct.block_range*, %struct.block_range** %3, align 8
  %6 = call double @block_range__coverage(%struct.block_range* %5)
  store double %6, double* %4, align 8
  %7 = load double, double* %4, align 8
  %8 = fcmp oge double %7, 0.000000e+00
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load double, double* %4, align 8
  %11 = fcmp ogt double %10, 7.500000e-01
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i8*, i8** @PERF_COLOR_RED, align 8
  store i8* %13, i8** %2, align 8
  br label %22

14:                                               ; preds = %9
  %15 = load double, double* %4, align 8
  %16 = fcmp olt double %15, 1.000000e-02
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i8*, i8** @PERF_COLOR_NORMAL, align 8
  store i8* %18, i8** %2, align 8
  br label %22

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %1
  %21 = load i8*, i8** @PERF_COLOR_MAGENTA, align 8
  store i8* %21, i8** %2, align 8
  br label %22

22:                                               ; preds = %20, %17, %12
  %23 = load i8*, i8** %2, align 8
  ret i8* %23
}

declare dso_local double @block_range__coverage(%struct.block_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
