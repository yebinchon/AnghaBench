; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_trigger.c_event_enable_count_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_trigger.c_event_enable_count_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_trigger_data = type { i32, %struct.enable_trigger_data* }
%struct.enable_trigger_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ring_buffer_event = type { i32 }

@EVENT_FILE_FL_SOFT_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.event_trigger_data*, i8*, %struct.ring_buffer_event*)* @event_enable_count_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_enable_count_trigger(%struct.event_trigger_data* %0, i8* %1, %struct.ring_buffer_event* %2) #0 {
  %4 = alloca %struct.event_trigger_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ring_buffer_event*, align 8
  %7 = alloca %struct.enable_trigger_data*, align 8
  store %struct.event_trigger_data* %0, %struct.event_trigger_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ring_buffer_event* %2, %struct.ring_buffer_event** %6, align 8
  %8 = load %struct.event_trigger_data*, %struct.event_trigger_data** %4, align 8
  %9 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %8, i32 0, i32 1
  %10 = load %struct.enable_trigger_data*, %struct.enable_trigger_data** %9, align 8
  store %struct.enable_trigger_data* %10, %struct.enable_trigger_data** %7, align 8
  %11 = load %struct.event_trigger_data*, %struct.event_trigger_data** %4, align 8
  %12 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %47

16:                                               ; preds = %3
  %17 = load %struct.enable_trigger_data*, %struct.enable_trigger_data** %7, align 8
  %18 = getelementptr inbounds %struct.enable_trigger_data, %struct.enable_trigger_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.enable_trigger_data*, %struct.enable_trigger_data** %7, align 8
  %21 = getelementptr inbounds %struct.enable_trigger_data, %struct.enable_trigger_data* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @EVENT_FILE_FL_SOFT_DISABLED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = icmp eq i32 %19, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  br label %47

32:                                               ; preds = %16
  %33 = load %struct.event_trigger_data*, %struct.event_trigger_data** %4, align 8
  %34 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.event_trigger_data*, %struct.event_trigger_data** %4, align 8
  %39 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.event_trigger_data*, %struct.event_trigger_data** %4, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %6, align 8
  %46 = call i32 @event_enable_trigger(%struct.event_trigger_data* %43, i8* %44, %struct.ring_buffer_event* %45)
  br label %47

47:                                               ; preds = %42, %31, %15
  ret void
}

declare dso_local i32 @event_enable_trigger(%struct.event_trigger_data*, i8*, %struct.ring_buffer_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
