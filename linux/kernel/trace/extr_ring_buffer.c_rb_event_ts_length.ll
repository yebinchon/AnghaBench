; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_event_ts_length.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_event_ts_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_event = type { i32 }

@RB_LEN_TIME_EXTEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ring_buffer_event*)* @rb_event_ts_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb_event_ts_length(%struct.ring_buffer_event* %0) #0 {
  %2 = alloca %struct.ring_buffer_event*, align 8
  %3 = alloca i32, align 4
  store %struct.ring_buffer_event* %0, %struct.ring_buffer_event** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %2, align 8
  %5 = call i64 @extended_time(%struct.ring_buffer_event* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @RB_LEN_TIME_EXTEND, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %2, align 8
  %10 = call %struct.ring_buffer_event* @skip_time_extend(%struct.ring_buffer_event* %9)
  store %struct.ring_buffer_event* %10, %struct.ring_buffer_event** %2, align 8
  br label %11

11:                                               ; preds = %7, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %2, align 8
  %14 = call i32 @rb_event_length(%struct.ring_buffer_event* %13)
  %15 = add i32 %12, %14
  ret i32 %15
}

declare dso_local i64 @extended_time(%struct.ring_buffer_event*) #1

declare dso_local %struct.ring_buffer_event* @skip_time_extend(%struct.ring_buffer_event*) #1

declare dso_local i32 @rb_event_length(%struct.ring_buffer_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
