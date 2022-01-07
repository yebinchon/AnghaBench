; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_hist_trigger_enable.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_hist_trigger_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_trigger_data = type { i32 }
%struct.trace_event_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_trigger_data*, %struct.trace_event_file*)* @hist_trigger_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_trigger_enable(%struct.event_trigger_data* %0, %struct.trace_event_file* %1) #0 {
  %3 = alloca %struct.event_trigger_data*, align 8
  %4 = alloca %struct.trace_event_file*, align 8
  %5 = alloca i32, align 4
  store %struct.event_trigger_data* %0, %struct.event_trigger_data** %3, align 8
  store %struct.trace_event_file* %1, %struct.trace_event_file** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.event_trigger_data*, %struct.event_trigger_data** %3, align 8
  %7 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %6, i32 0, i32 0
  %8 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %9 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %8, i32 0, i32 0
  %10 = call i32 @list_add_tail_rcu(i32* %7, i32* %9)
  %11 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %12 = call i32 @update_cond_flag(%struct.trace_event_file* %11)
  %13 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %14 = call i64 @trace_event_trigger_enable_disable(%struct.trace_event_file* %13, i32 1)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.event_trigger_data*, %struct.event_trigger_data** %3, align 8
  %18 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %17, i32 0, i32 0
  %19 = call i32 @list_del_rcu(i32* %18)
  %20 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %21 = call i32 @update_cond_flag(%struct.trace_event_file* %20)
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %16, %2
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @update_cond_flag(%struct.trace_event_file*) #1

declare dso_local i64 @trace_event_trigger_enable_disable(%struct.trace_event_file*, i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
