; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_annotate.c_hist_entry__tui_annotate.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_annotate.c_hist_entry__tui_annotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { i32 }
%struct.evsel = type { i32 }
%struct.hist_browser_timer = type { i32 }
%struct.annotation_options = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hist_entry__tui_annotate(%struct.hist_entry* %0, %struct.evsel* %1, %struct.hist_browser_timer* %2, %struct.annotation_options* %3) #0 {
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca %struct.evsel*, align 8
  %7 = alloca %struct.hist_browser_timer*, align 8
  %8 = alloca %struct.annotation_options*, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %5, align 8
  store %struct.evsel* %1, %struct.evsel** %6, align 8
  store %struct.hist_browser_timer* %2, %struct.hist_browser_timer** %7, align 8
  store %struct.annotation_options* %3, %struct.annotation_options** %8, align 8
  %9 = call i32 (...) @SLang_reset_tty()
  %10 = call i32 @SLang_init_tty(i32 0, i32 0, i32 0)
  %11 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %12 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %11, i32 0, i32 0
  %13 = load %struct.evsel*, %struct.evsel** %6, align 8
  %14 = load %struct.hist_browser_timer*, %struct.hist_browser_timer** %7, align 8
  %15 = load %struct.annotation_options*, %struct.annotation_options** %8, align 8
  %16 = call i32 @map_symbol__tui_annotate(i32* %12, %struct.evsel* %13, %struct.hist_browser_timer* %14, %struct.annotation_options* %15)
  ret i32 %16
}

declare dso_local i32 @SLang_reset_tty(...) #1

declare dso_local i32 @SLang_init_tty(i32, i32, i32) #1

declare dso_local i32 @map_symbol__tui_annotate(i32*, %struct.evsel*, %struct.hist_browser_timer*, %struct.annotation_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
