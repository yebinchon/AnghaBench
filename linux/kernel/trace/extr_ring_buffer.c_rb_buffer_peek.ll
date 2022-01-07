; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_buffer_peek.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_buffer_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_event = type { i32, i64 }
%struct.ring_buffer_per_cpu = type { i32, i32, i64 }
%struct.buffer_page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ring_buffer_event* (%struct.ring_buffer_per_cpu*, i64*, i64*)* @rb_buffer_peek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ring_buffer_event* @rb_buffer_peek(%struct.ring_buffer_per_cpu* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.ring_buffer_event*, align 8
  %5 = alloca %struct.ring_buffer_per_cpu*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ring_buffer_event*, align 8
  %9 = alloca %struct.buffer_page*, align 8
  %10 = alloca i32, align 4
  store %struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_per_cpu** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i64*, i64** %6, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i64*, i64** %6, align 8
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %13, %3
  br label %16

16:                                               ; preds = %64, %46, %15
  %17 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %18 = load i32, i32* %10, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %10, align 4
  %20 = icmp sgt i32 %19, 2
  %21 = zext i1 %20 to i32
  %22 = call i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu* %17, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store %struct.ring_buffer_event* null, %struct.ring_buffer_event** %4, align 8
  br label %103

25:                                               ; preds = %16
  %26 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %27 = call %struct.buffer_page* @rb_get_reader_page(%struct.ring_buffer_per_cpu* %26)
  store %struct.buffer_page* %27, %struct.buffer_page** %9, align 8
  %28 = load %struct.buffer_page*, %struct.buffer_page** %9, align 8
  %29 = icmp ne %struct.buffer_page* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store %struct.ring_buffer_event* null, %struct.ring_buffer_event** %4, align 8
  br label %103

31:                                               ; preds = %25
  %32 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %33 = call %struct.ring_buffer_event* @rb_reader_event(%struct.ring_buffer_per_cpu* %32)
  store %struct.ring_buffer_event* %33, %struct.ring_buffer_event** %8, align 8
  %34 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %35 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %100 [
    i32 130, label %37
    i32 129, label %46
    i32 128, label %49
    i32 131, label %67
  ]

37:                                               ; preds = %31
  %38 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %39 = call i32 @rb_null_event(%struct.ring_buffer_event* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %43 = call i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu* %42, i32 1)
  br label %44

44:                                               ; preds = %41, %37
  %45 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  store %struct.ring_buffer_event* %45, %struct.ring_buffer_event** %4, align 8
  br label %103

46:                                               ; preds = %31
  %47 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %48 = call i32 @rb_advance_reader(%struct.ring_buffer_per_cpu* %47)
  br label %16

49:                                               ; preds = %31
  %50 = load i64*, i64** %6, align 8
  %51 = icmp ne i64* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %54 = call i64 @ring_buffer_event_time_stamp(%struct.ring_buffer_event* %53)
  %55 = load i64*, i64** %6, align 8
  store i64 %54, i64* %55, align 8
  %56 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %57 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %60 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i64*, i64** %6, align 8
  %63 = call i32 @ring_buffer_normalize_time_stamp(i32 %58, i32 %61, i64* %62)
  br label %64

64:                                               ; preds = %52, %49
  %65 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %66 = call i32 @rb_advance_reader(%struct.ring_buffer_per_cpu* %65)
  br label %16

67:                                               ; preds = %31
  %68 = load i64*, i64** %6, align 8
  %69 = icmp ne i64* %68, null
  br i1 %69, label %70, label %91

70:                                               ; preds = %67
  %71 = load i64*, i64** %6, align 8
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %91, label %74

74:                                               ; preds = %70
  %75 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %76 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %79 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = load i64*, i64** %6, align 8
  store i64 %81, i64* %82, align 8
  %83 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %84 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %87 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i64*, i64** %6, align 8
  %90 = call i32 @ring_buffer_normalize_time_stamp(i32 %85, i32 %88, i64* %89)
  br label %91

91:                                               ; preds = %74, %70, %67
  %92 = load i64*, i64** %7, align 8
  %93 = icmp ne i64* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %96 = call i64 @rb_lost_events(%struct.ring_buffer_per_cpu* %95)
  %97 = load i64*, i64** %7, align 8
  store i64 %96, i64* %97, align 8
  br label %98

98:                                               ; preds = %94, %91
  %99 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  store %struct.ring_buffer_event* %99, %struct.ring_buffer_event** %4, align 8
  br label %103

100:                                              ; preds = %31
  %101 = call i32 (...) @BUG()
  br label %102

102:                                              ; preds = %100
  store %struct.ring_buffer_event* null, %struct.ring_buffer_event** %4, align 8
  br label %103

103:                                              ; preds = %102, %98, %44, %30, %24
  %104 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %4, align 8
  ret %struct.ring_buffer_event* %104
}

declare dso_local i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu*, i32) #1

declare dso_local %struct.buffer_page* @rb_get_reader_page(%struct.ring_buffer_per_cpu*) #1

declare dso_local %struct.ring_buffer_event* @rb_reader_event(%struct.ring_buffer_per_cpu*) #1

declare dso_local i32 @rb_null_event(%struct.ring_buffer_event*) #1

declare dso_local i32 @rb_advance_reader(%struct.ring_buffer_per_cpu*) #1

declare dso_local i64 @ring_buffer_event_time_stamp(%struct.ring_buffer_event*) #1

declare dso_local i32 @ring_buffer_normalize_time_stamp(i32, i32, i64*) #1

declare dso_local i64 @rb_lost_events(%struct.ring_buffer_per_cpu*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
