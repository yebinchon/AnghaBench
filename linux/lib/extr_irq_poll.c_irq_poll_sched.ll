; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_irq_poll.c_irq_poll_sched.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_irq_poll.c_irq_poll_sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_poll = type { i32, i32 }

@IRQ_POLL_F_DISABLE = common dso_local global i32 0, align 4
@IRQ_POLL_F_SCHED = common dso_local global i32 0, align 4
@blk_cpu_iopoll = common dso_local global i32 0, align 4
@IRQ_POLL_SOFTIRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_poll_sched(%struct.irq_poll* %0) #0 {
  %2 = alloca %struct.irq_poll*, align 8
  %3 = alloca i64, align 8
  store %struct.irq_poll* %0, %struct.irq_poll** %2, align 8
  %4 = load i32, i32* @IRQ_POLL_F_DISABLE, align 4
  %5 = load %struct.irq_poll*, %struct.irq_poll** %2, align 8
  %6 = getelementptr inbounds %struct.irq_poll, %struct.irq_poll* %5, i32 0, i32 1
  %7 = call i64 @test_bit(i32 %4, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %28

10:                                               ; preds = %1
  %11 = load i32, i32* @IRQ_POLL_F_SCHED, align 4
  %12 = load %struct.irq_poll*, %struct.irq_poll** %2, align 8
  %13 = getelementptr inbounds %struct.irq_poll, %struct.irq_poll* %12, i32 0, i32 1
  %14 = call i64 @test_and_set_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %28

17:                                               ; preds = %10
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @local_irq_save(i64 %18)
  %20 = load %struct.irq_poll*, %struct.irq_poll** %2, align 8
  %21 = getelementptr inbounds %struct.irq_poll, %struct.irq_poll* %20, i32 0, i32 0
  %22 = call i32 @this_cpu_ptr(i32* @blk_cpu_iopoll)
  %23 = call i32 @list_add_tail(i32* %21, i32 %22)
  %24 = load i32, i32* @IRQ_POLL_SOFTIRQ, align 4
  %25 = call i32 @raise_softirq_irqoff(i32 %24)
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @local_irq_restore(i64 %26)
  br label %28

28:                                               ; preds = %17, %16, %9
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @list_add_tail(i32*, i32) #1

declare dso_local i32 @this_cpu_ptr(i32*) #1

declare dso_local i32 @raise_softirq_irqoff(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
