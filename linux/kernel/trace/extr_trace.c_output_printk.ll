; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_output_printk.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_output_printk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.trace_event_buffer = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.trace_event_call* }
%struct.trace_event_call = type { %struct.trace_event }
%struct.trace_event = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.trace_iterator*, i32, %struct.trace_event*)* }

@tracepoint_print_iter = common dso_local global %struct.trace_iterator* null, align 8
@tracepoint_iter_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_event_buffer*)* @output_printk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_printk(%struct.trace_event_buffer* %0) #0 {
  %2 = alloca %struct.trace_event_buffer*, align 8
  %3 = alloca %struct.trace_event_call*, align 8
  %4 = alloca %struct.trace_event*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.trace_iterator*, align 8
  store %struct.trace_event_buffer* %0, %struct.trace_event_buffer** %2, align 8
  %7 = load %struct.trace_iterator*, %struct.trace_iterator** @tracepoint_print_iter, align 8
  store %struct.trace_iterator* %7, %struct.trace_iterator** %6, align 8
  %8 = load %struct.trace_iterator*, %struct.trace_iterator** %6, align 8
  %9 = icmp ne %struct.trace_iterator* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON_ONCE(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %74

15:                                               ; preds = %1
  %16 = load %struct.trace_event_buffer*, %struct.trace_event_buffer** %2, align 8
  %17 = getelementptr inbounds %struct.trace_event_buffer, %struct.trace_event_buffer* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.trace_event_call*, %struct.trace_event_call** %19, align 8
  store %struct.trace_event_call* %20, %struct.trace_event_call** %3, align 8
  %21 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %22 = icmp ne %struct.trace_event_call* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %15
  %24 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %25 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.trace_event, %struct.trace_event* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %31 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.trace_event, %struct.trace_event* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32 (%struct.trace_iterator*, i32, %struct.trace_event*)*, i32 (%struct.trace_iterator*, i32, %struct.trace_event*)** %34, align 8
  %36 = icmp ne i32 (%struct.trace_iterator*, i32, %struct.trace_event*)* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %29, %23, %15
  br label %74

38:                                               ; preds = %29
  %39 = load %struct.trace_event_buffer*, %struct.trace_event_buffer** %2, align 8
  %40 = getelementptr inbounds %struct.trace_event_buffer, %struct.trace_event_buffer* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.trace_event_call*, %struct.trace_event_call** %42, align 8
  %44 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %43, i32 0, i32 0
  store %struct.trace_event* %44, %struct.trace_event** %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @spin_lock_irqsave(i32* @tracepoint_iter_lock, i64 %45)
  %47 = load %struct.trace_iterator*, %struct.trace_iterator** %6, align 8
  %48 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %47, i32 0, i32 0
  %49 = call i32 @trace_seq_init(%struct.TYPE_7__* %48)
  %50 = load %struct.trace_event_buffer*, %struct.trace_event_buffer** %2, align 8
  %51 = getelementptr inbounds %struct.trace_event_buffer, %struct.trace_event_buffer* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.trace_iterator*, %struct.trace_iterator** %6, align 8
  %54 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %56 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.trace_event, %struct.trace_event* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32 (%struct.trace_iterator*, i32, %struct.trace_event*)*, i32 (%struct.trace_iterator*, i32, %struct.trace_event*)** %59, align 8
  %61 = load %struct.trace_iterator*, %struct.trace_iterator** %6, align 8
  %62 = load %struct.trace_event*, %struct.trace_event** %4, align 8
  %63 = call i32 %60(%struct.trace_iterator* %61, i32 0, %struct.trace_event* %62)
  %64 = load %struct.trace_iterator*, %struct.trace_iterator** %6, align 8
  %65 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %64, i32 0, i32 0
  %66 = call i32 @trace_seq_putc(%struct.TYPE_7__* %65, i32 0)
  %67 = load %struct.trace_iterator*, %struct.trace_iterator** %6, align 8
  %68 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* @tracepoint_iter_lock, i64 %72)
  br label %74

74:                                               ; preds = %38, %37, %14
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @trace_seq_init(%struct.TYPE_7__*) #1

declare dso_local i32 @trace_seq_putc(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
