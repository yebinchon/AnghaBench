; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_start_tr.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_start_tr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ring_buffer* }
%struct.ring_buffer = type { i32 }

@tracing_disabled = common dso_local global i64 0, align 8
@TRACE_ARRAY_FL_GLOBAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_array*)* @tracing_start_tr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tracing_start_tr(%struct.trace_array* %0) #0 {
  %2 = alloca %struct.trace_array*, align 8
  %3 = alloca %struct.ring_buffer*, align 8
  %4 = alloca i64, align 8
  store %struct.trace_array* %0, %struct.trace_array** %2, align 8
  %5 = load i64, i64* @tracing_disabled, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %52

8:                                                ; preds = %1
  %9 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %10 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @TRACE_ARRAY_FL_GLOBAL, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  call void (...) @tracing_start()
  br label %52

16:                                               ; preds = %8
  %17 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %18 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %17, i32 0, i32 2
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @raw_spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %22 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %16
  %27 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %28 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = call i32 @WARN_ON_ONCE(i32 1)
  %33 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %34 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %31, %26
  br label %47

36:                                               ; preds = %16
  %37 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %38 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.ring_buffer*, %struct.ring_buffer** %39, align 8
  store %struct.ring_buffer* %40, %struct.ring_buffer** %3, align 8
  %41 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %42 = icmp ne %struct.ring_buffer* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %45 = call i32 @ring_buffer_record_enable(%struct.ring_buffer* %44)
  br label %46

46:                                               ; preds = %43, %36
  br label %47

47:                                               ; preds = %46, %35
  %48 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %49 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %48, i32 0, i32 2
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @raw_spin_unlock_irqrestore(i32* %49, i64 %50)
  br label %52

52:                                               ; preds = %47, %15, %7
  ret void
}

declare dso_local void @tracing_start(...) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ring_buffer_record_enable(%struct.ring_buffer*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
