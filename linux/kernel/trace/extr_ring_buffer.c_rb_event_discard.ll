; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_event_discard.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_event_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_event = type { i32, i32, i64* }

@RB_EVNT_HDR_SIZE = common dso_local global i64 0, align 8
@RINGBUF_TYPE_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ring_buffer_event*)* @rb_event_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb_event_discard(%struct.ring_buffer_event* %0) #0 {
  %2 = alloca %struct.ring_buffer_event*, align 8
  store %struct.ring_buffer_event* %0, %struct.ring_buffer_event** %2, align 8
  %3 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %2, align 8
  %4 = call i64 @extended_time(%struct.ring_buffer_event* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %2, align 8
  %8 = call %struct.ring_buffer_event* @skip_time_extend(%struct.ring_buffer_event* %7)
  store %struct.ring_buffer_event* %8, %struct.ring_buffer_event** %2, align 8
  br label %9

9:                                                ; preds = %6, %1
  %10 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %2, align 8
  %11 = call i64 @rb_event_data_length(%struct.ring_buffer_event* %10)
  %12 = load i64, i64* @RB_EVNT_HDR_SIZE, align 8
  %13 = sub nsw i64 %11, %12
  %14 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %2, align 8
  %15 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %14, i32 0, i32 2
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  store i64 %13, i64* %17, align 8
  %18 = load i32, i32* @RINGBUF_TYPE_PADDING, align 4
  %19 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %2, align 8
  %20 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %2, align 8
  %22 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %9
  %26 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %2, align 8
  %27 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %28

28:                                               ; preds = %25, %9
  ret void
}

declare dso_local i64 @extended_time(%struct.ring_buffer_event*) #1

declare dso_local %struct.ring_buffer_event* @skip_time_extend(%struct.ring_buffer_event*) #1

declare dso_local i64 @rb_event_data_length(%struct.ring_buffer_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
