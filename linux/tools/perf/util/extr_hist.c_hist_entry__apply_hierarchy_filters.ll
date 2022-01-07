; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hist_entry__apply_hierarchy_filters.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hist_entry__apply_hierarchy_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { i32 }

@HIST_FILTER__THREAD = common dso_local global i32 0, align 4
@check_thread_entry = common dso_local global i32 0, align 4
@HIST_FILTER__DSO = common dso_local global i32 0, align 4
@perf_hpp__is_dso_entry = common dso_local global i32 0, align 4
@HIST_FILTER__SYMBOL = common dso_local global i32 0, align 4
@perf_hpp__is_sym_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hist_entry*)* @hist_entry__apply_hierarchy_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hist_entry__apply_hierarchy_filters(%struct.hist_entry* %0) #0 {
  %2 = alloca %struct.hist_entry*, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %2, align 8
  %3 = load %struct.hist_entry*, %struct.hist_entry** %2, align 8
  %4 = load i32, i32* @HIST_FILTER__THREAD, align 4
  %5 = load i32, i32* @check_thread_entry, align 4
  %6 = call i32 @hist_entry__check_and_remove_filter(%struct.hist_entry* %3, i32 %4, i32 %5)
  %7 = load %struct.hist_entry*, %struct.hist_entry** %2, align 8
  %8 = load i32, i32* @HIST_FILTER__DSO, align 4
  %9 = load i32, i32* @perf_hpp__is_dso_entry, align 4
  %10 = call i32 @hist_entry__check_and_remove_filter(%struct.hist_entry* %7, i32 %8, i32 %9)
  %11 = load %struct.hist_entry*, %struct.hist_entry** %2, align 8
  %12 = load i32, i32* @HIST_FILTER__SYMBOL, align 4
  %13 = load i32, i32* @perf_hpp__is_sym_entry, align 4
  %14 = call i32 @hist_entry__check_and_remove_filter(%struct.hist_entry* %11, i32 %12, i32 %13)
  %15 = load %struct.hist_entry*, %struct.hist_entry** %2, align 8
  %16 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hist_entry*, %struct.hist_entry** %2, align 8
  %19 = call i32 @hists__apply_filters(i32 %17, %struct.hist_entry* %18)
  ret void
}

declare dso_local i32 @hist_entry__check_and_remove_filter(%struct.hist_entry*, i32, i32) #1

declare dso_local i32 @hists__apply_filters(i32, %struct.hist_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
