; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_uprobe.c_trace_uprobe_is_busy.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_uprobe.c_trace_uprobe_is_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dyn_event = type { i32 }
%struct.trace_uprobe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dyn_event*)* @trace_uprobe_is_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_uprobe_is_busy(%struct.dyn_event* %0) #0 {
  %2 = alloca %struct.dyn_event*, align 8
  %3 = alloca %struct.trace_uprobe*, align 8
  store %struct.dyn_event* %0, %struct.dyn_event** %2, align 8
  %4 = load %struct.dyn_event*, %struct.dyn_event** %2, align 8
  %5 = call %struct.trace_uprobe* @to_trace_uprobe(%struct.dyn_event* %4)
  store %struct.trace_uprobe* %5, %struct.trace_uprobe** %3, align 8
  %6 = load %struct.trace_uprobe*, %struct.trace_uprobe** %3, align 8
  %7 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %6, i32 0, i32 0
  %8 = call i32 @trace_probe_is_enabled(i32* %7)
  ret i32 %8
}

declare dso_local %struct.trace_uprobe* @to_trace_uprobe(%struct.dyn_event*) #1

declare dso_local i32 @trace_probe_is_enabled(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
