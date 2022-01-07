; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_event_data_length.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_event_data_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_event = type { i32, i32* }

@RB_ALIGNMENT = common dso_local global i32 0, align 4
@RB_EVNT_HDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ring_buffer_event*)* @rb_event_data_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb_event_data_length(%struct.ring_buffer_event* %0) #0 {
  %2 = alloca %struct.ring_buffer_event*, align 8
  %3 = alloca i32, align 4
  store %struct.ring_buffer_event* %0, %struct.ring_buffer_event** %2, align 8
  %4 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %2, align 8
  %5 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %2, align 8
  %10 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @RB_ALIGNMENT, align 4
  %13 = mul i32 %11, %12
  store i32 %13, i32* %3, align 4
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %2, align 8
  %16 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %14, %8
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @RB_EVNT_HDR_SIZE, align 4
  %23 = add i32 %21, %22
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
