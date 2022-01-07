; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c___tracing_resize_ring_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c___tracing_resize_ring_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32, %struct.TYPE_7__, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@ring_buffer_expanded = common dso_local global i32 0, align 4
@RING_BUFFER_ALL_CPUS = common dso_local global i32 0, align 4
@TRACE_ARRAY_FL_GLOBAL = common dso_local global i32 0, align 4
@tracing_disabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_array*, i64, i32)* @__tracing_resize_ring_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tracing_resize_ring_buffer(%struct.trace_array* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.trace_array*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.trace_array* %0, %struct.trace_array** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* @ring_buffer_expanded, align 4
  %9 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %10 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %47

15:                                               ; preds = %3
  %16 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %17 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @ring_buffer_resize(i32 %19, i64 %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %47

27:                                               ; preds = %15
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @RING_BUFFER_ALL_CPUS, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %33 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %32, i32 0, i32 1
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @set_buffer_entries(%struct.TYPE_7__* %33, i64 %34)
  br label %45

36:                                               ; preds = %27
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %39 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call %struct.TYPE_8__* @per_cpu_ptr(i32 %41, i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i64 %37, i64* %44, align 8
  br label %45

45:                                               ; preds = %36, %31
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %25, %14
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @ring_buffer_resize(i32, i64, i32) #1

declare dso_local i32 @set_buffer_entries(%struct.TYPE_7__*, i64) #1

declare dso_local %struct.TYPE_8__* @per_cpu_ptr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
