; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.h_perf_hpp__should_skip.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.h_perf_hpp__should_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_hpp_fmt = type { i64 }
%struct.hists = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_hpp_fmt*, %struct.hists*)* @perf_hpp__should_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_hpp__should_skip(%struct.perf_hpp_fmt* %0, %struct.hists* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_hpp_fmt*, align 8
  %5 = alloca %struct.hists*, align 8
  store %struct.perf_hpp_fmt* %0, %struct.perf_hpp_fmt** %4, align 8
  store %struct.hists* %1, %struct.hists** %5, align 8
  %6 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %4, align 8
  %7 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %22

11:                                               ; preds = %2
  %12 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %4, align 8
  %13 = call i64 @perf_hpp__is_dynamic_entry(%struct.perf_hpp_fmt* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %4, align 8
  %17 = load %struct.hists*, %struct.hists** %5, align 8
  %18 = call i32 @perf_hpp__defined_dynamic_entry(%struct.perf_hpp_fmt* %16, %struct.hists* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %22

21:                                               ; preds = %15, %11
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %20, %10
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i64 @perf_hpp__is_dynamic_entry(%struct.perf_hpp_fmt*) #1

declare dso_local i32 @perf_hpp__defined_dynamic_entry(%struct.perf_hpp_fmt*, %struct.hists*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
