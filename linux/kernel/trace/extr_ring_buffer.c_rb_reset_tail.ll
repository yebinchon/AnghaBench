; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_reset_tail.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_reset_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_per_cpu = type { i32 }
%struct.rb_event_info = type { i64, %struct.buffer_page* }
%struct.buffer_page = type { i64, i32 }
%struct.ring_buffer_event = type { i32, i32, i64* }

@BUF_PAGE_SIZE = common dso_local global i64 0, align 8
@RB_EVNT_MIN_SIZE = common dso_local global i64 0, align 8
@RB_EVNT_HDR_SIZE = common dso_local global i64 0, align 8
@RINGBUF_TYPE_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ring_buffer_per_cpu*, i64, %struct.rb_event_info*)* @rb_reset_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb_reset_tail(%struct.ring_buffer_per_cpu* %0, i64 %1, %struct.rb_event_info* %2) #0 {
  %4 = alloca %struct.ring_buffer_per_cpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rb_event_info*, align 8
  %7 = alloca %struct.buffer_page*, align 8
  %8 = alloca %struct.ring_buffer_event*, align 8
  %9 = alloca i64, align 8
  store %struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_per_cpu** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.rb_event_info* %2, %struct.rb_event_info** %6, align 8
  %10 = load %struct.rb_event_info*, %struct.rb_event_info** %6, align 8
  %11 = getelementptr inbounds %struct.rb_event_info, %struct.rb_event_info* %10, i32 0, i32 1
  %12 = load %struct.buffer_page*, %struct.buffer_page** %11, align 8
  store %struct.buffer_page* %12, %struct.buffer_page** %7, align 8
  %13 = load %struct.rb_event_info*, %struct.rb_event_info** %6, align 8
  %14 = getelementptr inbounds %struct.rb_event_info, %struct.rb_event_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @BUF_PAGE_SIZE, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @BUF_PAGE_SIZE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.buffer_page*, %struct.buffer_page** %7, align 8
  %25 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.buffer_page*, %struct.buffer_page** %7, align 8
  %29 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %28, i32 0, i32 1
  %30 = call i32 @local_sub(i64 %27, i32* %29)
  br label %80

31:                                               ; preds = %3
  %32 = load %struct.buffer_page*, %struct.buffer_page** %7, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call %struct.ring_buffer_event* @__rb_page_index(%struct.buffer_page* %32, i64 %33)
  store %struct.ring_buffer_event* %34, %struct.ring_buffer_event** %8, align 8
  %35 = load i64, i64* @BUF_PAGE_SIZE, align 8
  %36 = load i64, i64* %5, align 8
  %37 = sub i64 %35, %36
  %38 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %39 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %38, i32 0, i32 0
  %40 = call i32 @local_add(i64 %37, i32* %39)
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.buffer_page*, %struct.buffer_page** %7, align 8
  %43 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @BUF_PAGE_SIZE, align 8
  %46 = load i64, i64* @RB_EVNT_MIN_SIZE, align 8
  %47 = sub i64 %45, %46
  %48 = icmp ugt i64 %44, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %31
  %50 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %51 = call i32 @rb_event_set_padding(%struct.ring_buffer_event* %50)
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.buffer_page*, %struct.buffer_page** %7, align 8
  %54 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %53, i32 0, i32 1
  %55 = call i32 @local_sub(i64 %52, i32* %54)
  br label %80

56:                                               ; preds = %31
  %57 = load i64, i64* @BUF_PAGE_SIZE, align 8
  %58 = load i64, i64* %5, align 8
  %59 = sub i64 %57, %58
  %60 = load i64, i64* @RB_EVNT_HDR_SIZE, align 8
  %61 = sub i64 %59, %60
  %62 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %63 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %62, i32 0, i32 2
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  store i64 %61, i64* %65, align 8
  %66 = load i32, i32* @RINGBUF_TYPE_PADDING, align 4
  %67 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %68 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %70 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %71, %72
  %74 = load i64, i64* @BUF_PAGE_SIZE, align 8
  %75 = sub i64 %73, %74
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load %struct.buffer_page*, %struct.buffer_page** %7, align 8
  %78 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %77, i32 0, i32 1
  %79 = call i32 @local_sub(i64 %76, i32* %78)
  br label %80

80:                                               ; preds = %56, %49, %26
  ret void
}

declare dso_local i32 @local_sub(i64, i32*) #1

declare dso_local %struct.ring_buffer_event* @__rb_page_index(%struct.buffer_page*, i64) #1

declare dso_local i32 @local_add(i64, i32*) #1

declare dso_local i32 @rb_event_set_padding(%struct.ring_buffer_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
