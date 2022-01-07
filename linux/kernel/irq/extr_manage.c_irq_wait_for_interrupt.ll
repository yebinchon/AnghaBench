; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_irq_wait_for_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_irq_wait_for_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irqaction = type { i32 }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@IRQTF_RUNTHREAD = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irqaction*)* @irq_wait_for_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irq_wait_for_interrupt(%struct.irqaction* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irqaction*, align 8
  store %struct.irqaction* %0, %struct.irqaction** %3, align 8
  br label %4

4:                                                ; preds = %30, %1
  %5 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %6 = call i32 @set_current_state(i32 %5)
  %7 = call i64 (...) @kthread_should_stop()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  %10 = load i32, i32* @IRQTF_RUNTHREAD, align 4
  %11 = load %struct.irqaction*, %struct.irqaction** %3, align 8
  %12 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %11, i32 0, i32 0
  %13 = call i64 @test_and_clear_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, i32* @TASK_RUNNING, align 4
  %17 = call i32 @__set_current_state(i32 %16)
  store i32 0, i32* %2, align 4
  br label %32

18:                                               ; preds = %9
  %19 = load i32, i32* @TASK_RUNNING, align 4
  %20 = call i32 @__set_current_state(i32 %19)
  store i32 -1, i32* %2, align 4
  br label %32

21:                                               ; preds = %4
  %22 = load i32, i32* @IRQTF_RUNTHREAD, align 4
  %23 = load %struct.irqaction*, %struct.irqaction** %3, align 8
  %24 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %23, i32 0, i32 0
  %25 = call i64 @test_and_clear_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @TASK_RUNNING, align 4
  %29 = call i32 @__set_current_state(i32 %28)
  store i32 0, i32* %2, align 4
  br label %32

30:                                               ; preds = %21
  %31 = call i32 (...) @schedule()
  br label %4

32:                                               ; preds = %27, %18, %15
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
