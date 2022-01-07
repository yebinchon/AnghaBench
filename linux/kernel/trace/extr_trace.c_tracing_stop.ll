; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_stop.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { %struct.ring_buffer* }
%struct.ring_buffer = type { i32 }
%struct.TYPE_4__ = type { %struct.ring_buffer* }

@global_trace = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tracing_stop() #0 {
  %1 = alloca %struct.ring_buffer*, align 8
  %2 = alloca i64, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 @raw_spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @global_trace, i32 0, i32 0), i64 %3)
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @global_trace, i32 0, i32 4), align 8
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @global_trace, i32 0, i32 4), align 8
  %7 = icmp ne i32 %5, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %19

9:                                                ; preds = %0
  %10 = call i32 @arch_spin_lock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @global_trace, i32 0, i32 1))
  %11 = load %struct.ring_buffer*, %struct.ring_buffer** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @global_trace, i32 0, i32 3, i32 0), align 8
  store %struct.ring_buffer* %11, %struct.ring_buffer** %1, align 8
  %12 = load %struct.ring_buffer*, %struct.ring_buffer** %1, align 8
  %13 = icmp ne %struct.ring_buffer* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.ring_buffer*, %struct.ring_buffer** %1, align 8
  %16 = call i32 @ring_buffer_record_disable(%struct.ring_buffer* %15)
  br label %17

17:                                               ; preds = %14, %9
  %18 = call i32 @arch_spin_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @global_trace, i32 0, i32 1))
  br label %19

19:                                               ; preds = %17, %8
  %20 = load i64, i64* %2, align 8
  %21 = call i32 @raw_spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @global_trace, i32 0, i32 0), i64 %20)
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @arch_spin_lock(i32*) #1

declare dso_local i32 @ring_buffer_record_disable(%struct.ring_buffer*) #1

declare dso_local i32 @arch_spin_unlock(i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
