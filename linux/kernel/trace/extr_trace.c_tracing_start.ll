; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_start.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.ring_buffer* }
%struct.ring_buffer = type { i32 }
%struct.TYPE_4__ = type { %struct.ring_buffer* }

@tracing_disabled = common dso_local global i64 0, align 8
@global_trace = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tracing_start() #0 {
  %1 = alloca %struct.ring_buffer*, align 8
  %2 = alloca i64, align 8
  %3 = load i64, i64* @tracing_disabled, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %31

6:                                                ; preds = %0
  %7 = load i64, i64* %2, align 8
  %8 = call i32 @raw_spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @global_trace, i32 0, i32 1), i64 %7)
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @global_trace, i32 0, i32 0), align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @global_trace, i32 0, i32 0), align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @global_trace, i32 0, i32 0), align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 @WARN_ON_ONCE(i32 1)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @global_trace, i32 0, i32 0), align 8
  br label %17

17:                                               ; preds = %15, %12
  br label %28

18:                                               ; preds = %6
  %19 = call i32 @arch_spin_lock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @global_trace, i32 0, i32 2))
  %20 = load %struct.ring_buffer*, %struct.ring_buffer** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @global_trace, i32 0, i32 4, i32 0), align 8
  store %struct.ring_buffer* %20, %struct.ring_buffer** %1, align 8
  %21 = load %struct.ring_buffer*, %struct.ring_buffer** %1, align 8
  %22 = icmp ne %struct.ring_buffer* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.ring_buffer*, %struct.ring_buffer** %1, align 8
  %25 = call i32 @ring_buffer_record_enable(%struct.ring_buffer* %24)
  br label %26

26:                                               ; preds = %23, %18
  %27 = call i32 @arch_spin_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @global_trace, i32 0, i32 2))
  br label %28

28:                                               ; preds = %26, %17
  %29 = load i64, i64* %2, align 8
  %30 = call i32 @raw_spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @global_trace, i32 0, i32 1), i64 %29)
  br label %31

31:                                               ; preds = %28, %5
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @arch_spin_lock(i32*) #1

declare dso_local i32 @ring_buffer_record_enable(%struct.ring_buffer*) #1

declare dso_local i32 @arch_spin_unlock(i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
