; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hists__filter_by_symbol.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hists__filter_by_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.hists = type { i32 }

@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@HIST_FILTER__SYMBOL = common dso_local global i32 0, align 4
@hists__filter_entry_by_symbol = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hists__filter_by_symbol(%struct.hists* %0) #0 {
  %2 = alloca %struct.hists*, align 8
  store %struct.hists* %0, %struct.hists** %2, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load %struct.hists*, %struct.hists** %2, align 8
  %7 = load i32, i32* @HIST_FILTER__SYMBOL, align 4
  %8 = load %struct.hists*, %struct.hists** %2, align 8
  %9 = getelementptr inbounds %struct.hists, %struct.hists* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @hists__filter_hierarchy(%struct.hists* %6, i32 %7, i32 %10)
  br label %17

12:                                               ; preds = %1
  %13 = load %struct.hists*, %struct.hists** %2, align 8
  %14 = load i32, i32* @HIST_FILTER__SYMBOL, align 4
  %15 = load i32, i32* @hists__filter_entry_by_symbol, align 4
  %16 = call i32 @hists__filter_by_type(%struct.hists* %13, i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %12, %5
  ret void
}

declare dso_local i32 @hists__filter_hierarchy(%struct.hists*, i32, i32) #1

declare dso_local i32 @hists__filter_by_type(%struct.hists*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
