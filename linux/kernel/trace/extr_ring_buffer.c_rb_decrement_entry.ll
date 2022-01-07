; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_decrement_entry.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_decrement_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_per_cpu = type { %struct.buffer_page* }
%struct.buffer_page = type { i8*, i32 }
%struct.ring_buffer_event = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ring_buffer_per_cpu*, %struct.ring_buffer_event*)* @rb_decrement_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb_decrement_entry(%struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_event* %1) #0 {
  %3 = alloca %struct.ring_buffer_per_cpu*, align 8
  %4 = alloca %struct.ring_buffer_event*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.buffer_page*, align 8
  %7 = alloca %struct.buffer_page*, align 8
  store %struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_per_cpu** %3, align 8
  store %struct.ring_buffer_event* %1, %struct.ring_buffer_event** %4, align 8
  %8 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %4, align 8
  %9 = ptrtoint %struct.ring_buffer_event* %8 to i64
  store i64 %9, i64* %5, align 8
  %10 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %11 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %10, i32 0, i32 0
  %12 = load %struct.buffer_page*, %struct.buffer_page** %11, align 8
  store %struct.buffer_page* %12, %struct.buffer_page** %6, align 8
  %13 = load i64, i64* @PAGE_MASK, align 8
  %14 = load i64, i64* %5, align 8
  %15 = and i64 %14, %13
  store i64 %15, i64* %5, align 8
  %16 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %17 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = icmp eq i8* %18, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %27 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %26, i32 0, i32 1
  %28 = call i32 @local_dec(i32* %27)
  br label %54

29:                                               ; preds = %2
  %30 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %31 = call i32 @rb_inc_page(%struct.ring_buffer_per_cpu* %30, %struct.buffer_page** %6)
  %32 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  store %struct.buffer_page* %32, %struct.buffer_page** %7, align 8
  br label %33

33:                                               ; preds = %47, %29
  %34 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %35 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = icmp eq i8* %36, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %42 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %41, i32 0, i32 1
  %43 = call i32 @local_dec(i32* %42)
  br label %54

44:                                               ; preds = %33
  %45 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %46 = call i32 @rb_inc_page(%struct.ring_buffer_per_cpu* %45, %struct.buffer_page** %6)
  br label %47

47:                                               ; preds = %44
  %48 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %49 = load %struct.buffer_page*, %struct.buffer_page** %7, align 8
  %50 = icmp ne %struct.buffer_page* %48, %49
  br i1 %50, label %33, label %51

51:                                               ; preds = %47
  %52 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %53 = call i32 @RB_WARN_ON(%struct.ring_buffer_per_cpu* %52, i32 1)
  br label %54

54:                                               ; preds = %51, %40, %25
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @local_dec(i32*) #1

declare dso_local i32 @rb_inc_page(%struct.ring_buffer_per_cpu*, %struct.buffer_page**) #1

declare dso_local i32 @RB_WARN_ON(%struct.ring_buffer_per_cpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
