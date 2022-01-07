; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_update_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_update_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_per_cpu = type { i32 }
%struct.ring_buffer_event = type { i32*, i64, i64 }
%struct.rb_event_info = type { i32, i32, i64 }

@RB_LEN_TIME_EXTEND = common dso_local global i64 0, align 8
@RB_EVNT_HDR_SIZE = common dso_local global i64 0, align 8
@RB_MAX_SMALL_DATA = common dso_local global i32 0, align 4
@RB_ALIGNMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ring_buffer_per_cpu*, %struct.ring_buffer_event*, %struct.rb_event_info*)* @rb_update_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb_update_event(%struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_event* %1, %struct.rb_event_info* %2) #0 {
  %4 = alloca %struct.ring_buffer_per_cpu*, align 8
  %5 = alloca %struct.ring_buffer_event*, align 8
  %6 = alloca %struct.rb_event_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_per_cpu** %4, align 8
  store %struct.ring_buffer_event* %1, %struct.ring_buffer_event** %5, align 8
  store %struct.rb_event_info* %2, %struct.rb_event_info** %6, align 8
  %10 = load %struct.rb_event_info*, %struct.rb_event_info** %6, align 8
  %11 = getelementptr inbounds %struct.rb_event_info, %struct.rb_event_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load %struct.rb_event_info*, %struct.rb_event_info** %6, align 8
  %14 = getelementptr inbounds %struct.rb_event_info, %struct.rb_event_info* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %17 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %5, align 8
  %18 = call i32 @rb_event_is_commit(%struct.ring_buffer_per_cpu* %16, %struct.ring_buffer_event* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %25

25:                                               ; preds = %24, %3
  %26 = load %struct.rb_event_info*, %struct.rb_event_info** %6, align 8
  %27 = getelementptr inbounds %struct.rb_event_info, %struct.rb_event_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %33 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ring_buffer_time_stamp_abs(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %5, align 8
  %37 = load %struct.rb_event_info*, %struct.rb_event_info** %6, align 8
  %38 = getelementptr inbounds %struct.rb_event_info, %struct.rb_event_info* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call %struct.ring_buffer_event* @rb_add_time_stamp(%struct.ring_buffer_event* %36, i64 %39, i32 %40)
  store %struct.ring_buffer_event* %41, %struct.ring_buffer_event** %5, align 8
  %42 = load i64, i64* @RB_LEN_TIME_EXTEND, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = sub nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %7, align 4
  store i64 0, i64* %8, align 8
  br label %47

47:                                               ; preds = %31, %25
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %5, align 8
  %50 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* @RB_EVNT_HDR_SIZE, align 8
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = sub nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @RB_MAX_SMALL_DATA, align 4
  %58 = icmp ugt i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %47
  %60 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %5, align 8
  %61 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %5, align 8
  %64 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %62, i32* %66, align 4
  br label %73

67:                                               ; preds = %47
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @RB_ALIGNMENT, align 4
  %70 = call i64 @DIV_ROUND_UP(i32 %68, i32 %69)
  %71 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %5, align 8
  %72 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %67, %59
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rb_event_is_commit(%struct.ring_buffer_per_cpu*, %struct.ring_buffer_event*) #1

declare dso_local i32 @ring_buffer_time_stamp_abs(i32) #1

declare dso_local %struct.ring_buffer_event* @rb_add_time_stamp(%struct.ring_buffer_event*, i64, i32) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
