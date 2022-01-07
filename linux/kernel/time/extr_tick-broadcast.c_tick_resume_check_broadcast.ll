; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_tick-broadcast.c_tick_resume_check_broadcast.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_tick-broadcast.c_tick_resume_check_broadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@tick_broadcast_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TICKDEV_MODE_ONESHOT = common dso_local global i64 0, align 8
@tick_broadcast_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tick_resume_check_broadcast() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tick_broadcast_device, i32 0, i32 0), align 8
  %3 = load i64, i64* @TICKDEV_MODE_ONESHOT, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %10

6:                                                ; preds = %0
  %7 = call i32 (...) @smp_processor_id()
  %8 = load i32, i32* @tick_broadcast_mask, align 4
  %9 = call i32 @cpumask_test_cpu(i32 %7, i32 %8)
  store i32 %9, i32* %1, align 4
  br label %10

10:                                               ; preds = %6, %5
  %11 = load i32, i32* %1, align 4
  ret i32 %11
}

declare dso_local i32 @cpumask_test_cpu(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
