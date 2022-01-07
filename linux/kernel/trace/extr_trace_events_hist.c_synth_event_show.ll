; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_synth_event_show.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_synth_event_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dyn_event = type { i32 }
%struct.synth_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"s:%s/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dyn_event*)* @synth_event_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synth_event_show(%struct.seq_file* %0, %struct.dyn_event* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.dyn_event*, align 8
  %5 = alloca %struct.synth_event*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.dyn_event* %1, %struct.dyn_event** %4, align 8
  %6 = load %struct.dyn_event*, %struct.dyn_event** %4, align 8
  %7 = call %struct.synth_event* @to_synth_event(%struct.dyn_event* %6)
  store %struct.synth_event* %7, %struct.synth_event** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = load %struct.synth_event*, %struct.synth_event** %5, align 8
  %10 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @seq_printf(%struct.seq_file* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %15 = load %struct.synth_event*, %struct.synth_event** %5, align 8
  %16 = call i32 @__synth_event_show(%struct.seq_file* %14, %struct.synth_event* %15)
  ret i32 %16
}

declare dso_local %struct.synth_event* @to_synth_event(%struct.dyn_event*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @__synth_event_show(%struct.seq_file*, %struct.synth_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
