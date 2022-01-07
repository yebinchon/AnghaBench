; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_try_to_discard.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_try_to_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_per_cpu = type { i32, i32 }
%struct.ring_buffer_event = type { i32 }
%struct.buffer_page = type { i8*, i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@RB_WRITE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ring_buffer_per_cpu*, %struct.ring_buffer_event*)* @rb_try_to_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb_try_to_discard(%struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ring_buffer_per_cpu*, align 8
  %5 = alloca %struct.ring_buffer_event*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.buffer_page*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_per_cpu** %4, align 8
  store %struct.ring_buffer_event* %1, %struct.ring_buffer_event** %5, align 8
  %13 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %5, align 8
  %14 = call i64 @rb_event_index(%struct.ring_buffer_event* %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %5, align 8
  %17 = call i64 @rb_event_ts_length(%struct.ring_buffer_event* %16)
  %18 = add i64 %15, %17
  store i64 %18, i64* %7, align 8
  %19 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %5, align 8
  %20 = ptrtoint %struct.ring_buffer_event* %19 to i64
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* @PAGE_MASK, align 8
  %22 = load i64, i64* %10, align 8
  %23 = and i64 %22, %21
  store i64 %23, i64* %10, align 8
  %24 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %25 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.buffer_page* @READ_ONCE(i32 %26)
  store %struct.buffer_page* %27, %struct.buffer_page** %8, align 8
  %28 = load %struct.buffer_page*, %struct.buffer_page** %8, align 8
  %29 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = icmp eq i8* %30, %32
  br i1 %33, label %34, label %68

34:                                               ; preds = %2
  %35 = load %struct.buffer_page*, %struct.buffer_page** %8, align 8
  %36 = call i64 @rb_page_write(%struct.buffer_page* %35)
  %37 = load i64, i64* %7, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %68

39:                                               ; preds = %34
  %40 = load %struct.buffer_page*, %struct.buffer_page** %8, align 8
  %41 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %40, i32 0, i32 1
  %42 = call i64 @local_read(i32* %41)
  %43 = load i64, i64* @RB_WRITE_MASK, align 8
  %44 = xor i64 %43, -1
  %45 = and i64 %42, %44
  store i64 %45, i64* %11, align 8
  %46 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %5, align 8
  %47 = call i64 @rb_event_length(%struct.ring_buffer_event* %46)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %6, align 8
  %54 = load %struct.buffer_page*, %struct.buffer_page** %8, align 8
  %55 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %54, i32 0, i32 1
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i64 @local_cmpxchg(i32* %55, i64 %56, i64 %57)
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %39
  %63 = load i64, i64* %12, align 8
  %64 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %65 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %64, i32 0, i32 0
  %66 = call i32 @local_sub(i64 %63, i32* %65)
  store i32 1, i32* %3, align 4
  br label %69

67:                                               ; preds = %39
  br label %68

68:                                               ; preds = %67, %34, %2
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %62
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @rb_event_index(%struct.ring_buffer_event*) #1

declare dso_local i64 @rb_event_ts_length(%struct.ring_buffer_event*) #1

declare dso_local %struct.buffer_page* @READ_ONCE(i32) #1

declare dso_local i64 @rb_page_write(%struct.buffer_page*) #1

declare dso_local i64 @local_read(i32*) #1

declare dso_local i64 @rb_event_length(%struct.ring_buffer_event*) #1

declare dso_local i64 @local_cmpxchg(i32*, i64, i64) #1

declare dso_local i32 @local_sub(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
