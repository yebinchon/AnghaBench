; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_init_global_iter.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_init_global_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.trace_iterator*)* }
%struct.trace_iterator = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_7__ = type { i64 }

@global_trace = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@RING_BUFFER_ALL_CPUS = common dso_local global i32 0, align 4
@TRACE_FILE_ANNOTATE = common dso_local global i32 0, align 4
@trace_clocks = common dso_local global %struct.TYPE_7__* null, align 8
@TRACE_FILE_TIME_IN_NS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_init_global_iter(%struct.trace_iterator* %0) #0 {
  %2 = alloca %struct.trace_iterator*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %2, align 8
  %3 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %4 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %3, i32 0, i32 1
  store %struct.TYPE_8__* @global_trace, %struct.TYPE_8__** %4, align 8
  %5 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %6 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %5, i32 0, i32 1
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %11 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %10, i32 0, i32 3
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %11, align 8
  %12 = load i32, i32* @RING_BUFFER_ALL_CPUS, align 4
  %13 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %14 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 8
  %15 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %16 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %15, i32 0, i32 2
  store %struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @global_trace, i32 0, i32 1), %struct.TYPE_6__** %16, align 8
  %17 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %18 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %17, i32 0, i32 3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %1
  %22 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %23 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %22, i32 0, i32 3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32 (%struct.trace_iterator*)*, i32 (%struct.trace_iterator*)** %25, align 8
  %27 = icmp ne i32 (%struct.trace_iterator*)* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %30 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %29, i32 0, i32 3
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32 (%struct.trace_iterator*)*, i32 (%struct.trace_iterator*)** %32, align 8
  %34 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %35 = call i32 %33(%struct.trace_iterator* %34)
  br label %36

36:                                               ; preds = %28, %21, %1
  %37 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %38 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ring_buffer_overruns(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i32, i32* @TRACE_FILE_ANNOTATE, align 4
  %46 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %47 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %44, %36
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** @trace_clocks, align 8
  %52 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %53 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %50
  %62 = load i32, i32* @TRACE_FILE_TIME_IN_NS, align 4
  %63 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %64 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %61, %50
  ret void
}

declare dso_local i64 @ring_buffer_overruns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
