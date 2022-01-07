; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_advance_reader.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_advance_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_per_cpu = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ring_buffer_event = type { i64 }
%struct.buffer_page = type { i32 }

@RINGBUF_TYPE_DATA_TYPE_LEN_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ring_buffer_per_cpu*)* @rb_advance_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb_advance_reader(%struct.ring_buffer_per_cpu* %0) #0 {
  %2 = alloca %struct.ring_buffer_per_cpu*, align 8
  %3 = alloca %struct.ring_buffer_event*, align 8
  %4 = alloca %struct.buffer_page*, align 8
  %5 = alloca i32, align 4
  store %struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_per_cpu** %2, align 8
  %6 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %7 = call %struct.buffer_page* @rb_get_reader_page(%struct.ring_buffer_per_cpu* %6)
  store %struct.buffer_page* %7, %struct.buffer_page** %4, align 8
  %8 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %9 = load %struct.buffer_page*, %struct.buffer_page** %4, align 8
  %10 = icmp ne %struct.buffer_page* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu* %8, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %42

16:                                               ; preds = %1
  %17 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %18 = call %struct.ring_buffer_event* @rb_reader_event(%struct.ring_buffer_per_cpu* %17)
  store %struct.ring_buffer_event* %18, %struct.ring_buffer_event** %3, align 8
  %19 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %3, align 8
  %20 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RINGBUF_TYPE_DATA_TYPE_LEN_MAX, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %26 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %24, %16
  %30 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %31 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %3, align 8
  %32 = call i32 @rb_update_read_stamp(%struct.ring_buffer_per_cpu* %30, %struct.ring_buffer_event* %31)
  %33 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %3, align 8
  %34 = call i32 @rb_event_length(%struct.ring_buffer_event* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %37 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add i32 %40, %35
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %29, %15
  ret void
}

declare dso_local %struct.buffer_page* @rb_get_reader_page(%struct.ring_buffer_per_cpu*) #1

declare dso_local i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu*, i32) #1

declare dso_local %struct.ring_buffer_event* @rb_reader_event(%struct.ring_buffer_per_cpu*) #1

declare dso_local i32 @rb_update_read_stamp(%struct.ring_buffer_per_cpu*, %struct.ring_buffer_event*) #1

declare dso_local i32 @rb_event_length(%struct.ring_buffer_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
