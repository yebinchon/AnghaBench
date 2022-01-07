; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_hwlat.c_kthread_fn.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_hwlat.c_kthread_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@hwlat_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @kthread_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kthread_fn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  br label %4

4:                                                ; preds = %29, %1
  %5 = call i32 (...) @kthread_should_stop()
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = call i32 (...) @move_to_next_cpu()
  %10 = call i32 (...) @local_irq_disable()
  %11 = call i32 (...) @get_sample()
  %12 = call i32 (...) @local_irq_enable()
  %13 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwlat_data, i32 0, i32 2))
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwlat_data, i32 0, i32 0), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwlat_data, i32 0, i32 1), align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %3, align 4
  %17 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwlat_data, i32 0, i32 2))
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @USEC_PER_MSEC, align 4
  %20 = call i32 @do_div(i32 %18, i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %8
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @msleep_interruptible(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %30

29:                                               ; preds = %24
  br label %4

30:                                               ; preds = %28, %4
  ret i32 0
}

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @move_to_next_cpu(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @get_sample(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i64 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
