; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c___rb_reserve_next.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c___rb_reserve_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_event = type { i32 }
%struct.ring_buffer_per_cpu = type { i32, i32, i32 }
%struct.rb_event_info = type { i32, i64, i32, i64, %struct.buffer_page* }
%struct.buffer_page = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@RB_LEN_TIME_EXTEND = common dso_local global i64 0, align 8
@RB_WRITE_MASK = common dso_local global i64 0, align 8
@BUF_PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ring_buffer_event* (%struct.ring_buffer_per_cpu*, %struct.rb_event_info*)* @__rb_reserve_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ring_buffer_event* @__rb_reserve_next(%struct.ring_buffer_per_cpu* %0, %struct.rb_event_info* %1) #0 {
  %3 = alloca %struct.ring_buffer_event*, align 8
  %4 = alloca %struct.ring_buffer_per_cpu*, align 8
  %5 = alloca %struct.rb_event_info*, align 8
  %6 = alloca %struct.ring_buffer_event*, align 8
  %7 = alloca %struct.buffer_page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_per_cpu** %4, align 8
  store %struct.rb_event_info* %1, %struct.rb_event_info** %5, align 8
  %10 = load %struct.rb_event_info*, %struct.rb_event_info** %5, align 8
  %11 = getelementptr inbounds %struct.rb_event_info, %struct.rb_event_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i64, i64* @RB_LEN_TIME_EXTEND, align 8
  %17 = load %struct.rb_event_info*, %struct.rb_event_info** %5, align 8
  %18 = getelementptr inbounds %struct.rb_event_info, %struct.rb_event_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, %16
  store i64 %20, i64* %18, align 8
  br label %21

21:                                               ; preds = %15, %2
  %22 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %23 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.buffer_page* @READ_ONCE(i32 %24)
  %26 = load %struct.rb_event_info*, %struct.rb_event_info** %5, align 8
  %27 = getelementptr inbounds %struct.rb_event_info, %struct.rb_event_info* %26, i32 0, i32 4
  store %struct.buffer_page* %25, %struct.buffer_page** %27, align 8
  store %struct.buffer_page* %25, %struct.buffer_page** %7, align 8
  %28 = load %struct.rb_event_info*, %struct.rb_event_info** %5, align 8
  %29 = getelementptr inbounds %struct.rb_event_info, %struct.rb_event_info* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.buffer_page*, %struct.buffer_page** %7, align 8
  %32 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %31, i32 0, i32 2
  %33 = call i64 @local_add_return(i64 %30, i32* %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* @RB_WRITE_MASK, align 8
  %35 = load i64, i64* %9, align 8
  %36 = and i64 %35, %34
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.rb_event_info*, %struct.rb_event_info** %5, align 8
  %39 = getelementptr inbounds %struct.rb_event_info, %struct.rb_event_info* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %37, %40
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %21
  %45 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %46 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ring_buffer_time_stamp_abs(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load %struct.rb_event_info*, %struct.rb_event_info** %5, align 8
  %52 = getelementptr inbounds %struct.rb_event_info, %struct.rb_event_info* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %50, %44, %21
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @BUF_PAGE_SIZE, align 8
  %56 = icmp ugt i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.rb_event_info*, %struct.rb_event_info** %5, align 8
  %64 = call %struct.ring_buffer_event* @rb_move_tail(%struct.ring_buffer_per_cpu* %61, i64 %62, %struct.rb_event_info* %63)
  store %struct.ring_buffer_event* %64, %struct.ring_buffer_event** %3, align 8
  br label %94

65:                                               ; preds = %53
  %66 = load %struct.buffer_page*, %struct.buffer_page** %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = call %struct.ring_buffer_event* @__rb_page_index(%struct.buffer_page* %66, i64 %67)
  store %struct.ring_buffer_event* %68, %struct.ring_buffer_event** %6, align 8
  %69 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %70 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %6, align 8
  %71 = load %struct.rb_event_info*, %struct.rb_event_info** %5, align 8
  %72 = call i32 @rb_update_event(%struct.ring_buffer_per_cpu* %69, %struct.ring_buffer_event* %70, %struct.rb_event_info* %71)
  %73 = load %struct.buffer_page*, %struct.buffer_page** %7, align 8
  %74 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %73, i32 0, i32 1
  %75 = call i32 @local_inc(i32* %74)
  %76 = load i64, i64* %8, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %65
  %79 = load %struct.rb_event_info*, %struct.rb_event_info** %5, align 8
  %80 = getelementptr inbounds %struct.rb_event_info, %struct.rb_event_info* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.buffer_page*, %struct.buffer_page** %7, align 8
  %83 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 4
  br label %86

86:                                               ; preds = %78, %65
  %87 = load %struct.rb_event_info*, %struct.rb_event_info** %5, align 8
  %88 = getelementptr inbounds %struct.rb_event_info, %struct.rb_event_info* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %91 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %90, i32 0, i32 0
  %92 = call i32 @local_add(i64 %89, i32* %91)
  %93 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %6, align 8
  store %struct.ring_buffer_event* %93, %struct.ring_buffer_event** %3, align 8
  br label %94

94:                                               ; preds = %86, %60
  %95 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %3, align 8
  ret %struct.ring_buffer_event* %95
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.buffer_page* @READ_ONCE(i32) #1

declare dso_local i64 @local_add_return(i64, i32*) #1

declare dso_local i32 @ring_buffer_time_stamp_abs(i32) #1

declare dso_local %struct.ring_buffer_event* @rb_move_tail(%struct.ring_buffer_per_cpu*, i64, %struct.rb_event_info*) #1

declare dso_local %struct.ring_buffer_event* @__rb_page_index(%struct.buffer_page*, i64) #1

declare dso_local i32 @rb_update_event(%struct.ring_buffer_per_cpu*, %struct.ring_buffer_event*, %struct.rb_event_info*) #1

declare dso_local i32 @local_inc(i32*) #1

declare dso_local i32 @local_add(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
