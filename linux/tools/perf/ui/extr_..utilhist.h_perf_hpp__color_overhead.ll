; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/extr_..utilhist.h_perf_hpp__color_overhead.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/extr_..utilhist.h_perf_hpp__color_overhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COLOR_MAXLEN = common dso_local global i32 0, align 4
@PERF_HPP__MAX_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @perf_hpp__color_overhead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @perf_hpp__color_overhead() #0 {
  %1 = call i64 (...) @perf_hpp__use_color()
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  %4 = load i32, i32* @COLOR_MAXLEN, align 4
  %5 = sext i32 %4 to i64
  %6 = add i64 %5, 4
  %7 = load i32, i32* @PERF_HPP__MAX_INDEX, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %6, %8
  br label %11

10:                                               ; preds = %0
  br label %11

11:                                               ; preds = %10, %3
  %12 = phi i64 [ %9, %3 ], [ 0, %10 ]
  ret i64 %12
}

declare dso_local i64 @perf_hpp__use_color(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
