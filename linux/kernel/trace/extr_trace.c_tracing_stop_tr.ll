; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_stop_tr.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_stop_tr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.ring_buffer* }
%struct.ring_buffer = type { i32 }

@TRACE_ARRAY_FL_GLOBAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_array*)* @tracing_stop_tr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tracing_stop_tr(%struct.trace_array* %0) #0 {
  %2 = alloca %struct.trace_array*, align 8
  %3 = alloca %struct.ring_buffer*, align 8
  %4 = alloca i64, align 8
  store %struct.trace_array* %0, %struct.trace_array** %2, align 8
  %5 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %6 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @TRACE_ARRAY_FL_GLOBAL, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  call void (...) @tracing_stop()
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %14 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %13, i32 0, i32 1
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @raw_spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %18 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = icmp ne i32 %19, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %34

23:                                               ; preds = %12
  %24 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %25 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.ring_buffer*, %struct.ring_buffer** %26, align 8
  store %struct.ring_buffer* %27, %struct.ring_buffer** %3, align 8
  %28 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %29 = icmp ne %struct.ring_buffer* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %32 = call i32 @ring_buffer_record_disable(%struct.ring_buffer* %31)
  br label %33

33:                                               ; preds = %30, %23
  br label %34

34:                                               ; preds = %33, %22
  %35 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %36 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %35, i32 0, i32 1
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @raw_spin_unlock_irqrestore(i32* %36, i64 %37)
  br label %39

39:                                               ; preds = %34, %11
  ret void
}

declare dso_local void @tracing_stop(...) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ring_buffer_record_disable(%struct.ring_buffer*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
