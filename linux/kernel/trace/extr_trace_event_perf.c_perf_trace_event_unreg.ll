; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_event_perf.c_perf_trace_event_unreg.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_event_perf.c_perf_trace_event_unreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.trace_event_call* }
%struct.trace_event_call = type { i64, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.trace_event_call*, i32, i32*)* }

@TRACE_REG_PERF_UNREGISTER = common dso_local global i32 0, align 4
@total_ref_count = common dso_local global i32 0, align 4
@PERF_NR_CONTEXTS = common dso_local global i32 0, align 4
@perf_trace_buf = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @perf_trace_event_unreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_trace_event_unreg(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.trace_event_call*, align 8
  %4 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 0
  %7 = load %struct.trace_event_call*, %struct.trace_event_call** %6, align 8
  store %struct.trace_event_call* %7, %struct.trace_event_call** %3, align 8
  %8 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %9 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* %9, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %54

14:                                               ; preds = %1
  %15 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %16 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.trace_event_call*, i32, i32*)*, i32 (%struct.trace_event_call*, i32, i32*)** %18, align 8
  %20 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %21 = load i32, i32* @TRACE_REG_PERF_UNREGISTER, align 4
  %22 = call i32 %19(%struct.trace_event_call* %20, i32 %21, i32* null)
  %23 = call i32 (...) @tracepoint_synchronize_unregister()
  %24 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %25 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @free_percpu(i32* %26)
  %28 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %29 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %28, i32 0, i32 2
  store i32* null, i32** %29, align 8
  %30 = load i32, i32* @total_ref_count, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* @total_ref_count, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %49, %33
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @PERF_NR_CONTEXTS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load i32**, i32*** @perf_trace_buf, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @free_percpu(i32* %43)
  %45 = load i32**, i32*** @perf_trace_buf, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %38
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %34

52:                                               ; preds = %34
  br label %53

53:                                               ; preds = %52, %14
  br label %54

54:                                               ; preds = %53, %13
  %55 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %56 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @module_put(i32 %57)
  ret void
}

declare dso_local i32 @tracepoint_synchronize_unregister(...) #1

declare dso_local i32 @free_percpu(i32*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
