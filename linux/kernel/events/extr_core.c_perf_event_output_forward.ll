; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_output_forward.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_output_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.perf_sample_data = type { i32 }
%struct.pt_regs = type { i32 }

@perf_output_begin_forward = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_event_output_forward(%struct.perf_event* %0, %struct.perf_sample_data* %1, %struct.pt_regs* %2) #0 {
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.perf_sample_data*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store %struct.perf_sample_data* %1, %struct.perf_sample_data** %5, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %8 = load %struct.perf_sample_data*, %struct.perf_sample_data** %5, align 8
  %9 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %10 = load i32, i32* @perf_output_begin_forward, align 4
  %11 = call i32 @__perf_event_output(%struct.perf_event* %7, %struct.perf_sample_data* %8, %struct.pt_regs* %9, i32 %10)
  ret void
}

declare dso_local i32 @__perf_event_output(%struct.perf_event*, %struct.perf_sample_data*, %struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
