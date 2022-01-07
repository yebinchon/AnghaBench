; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_ui_browser__warn_lost_events.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_ui_browser__warn_lost_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_browser = type { i32 }

@.str = private unnamed_addr constant [155 x i8] c"Events are being lost, check IO/CPU overload!\0A\0AYou may want to run 'perf' using a RT scheduler policy:\0A\0A perf top -r 80\0A\0AOr reduce the sampling frequency.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ui_browser*)* @ui_browser__warn_lost_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ui_browser__warn_lost_events(%struct.ui_browser* %0) #0 {
  %2 = alloca %struct.ui_browser*, align 8
  store %struct.ui_browser* %0, %struct.ui_browser** %2, align 8
  %3 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %4 = call i32 @ui_browser__warning(%struct.ui_browser* %3, i32 4, i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ui_browser__warning(%struct.ui_browser*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
