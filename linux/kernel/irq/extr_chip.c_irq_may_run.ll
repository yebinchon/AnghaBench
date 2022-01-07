; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_irq_may_run.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_irq_may_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }

@IRQD_IRQ_INPROGRESS = common dso_local global i32 0, align 4
@IRQD_WAKEUP_ARMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_desc*)* @irq_may_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irq_may_run(%struct.irq_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_desc*, align 8
  %4 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %3, align 8
  %5 = load i32, i32* @IRQD_IRQ_INPROGRESS, align 4
  %6 = load i32, i32* @IRQD_WAKEUP_ARMED, align 4
  %7 = or i32 %5, %6
  store i32 %7, i32* %4, align 4
  %8 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %9 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %8, i32 0, i32 0
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @irqd_has_set(i32* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %22

14:                                               ; preds = %1
  %15 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %16 = call i64 @irq_pm_check_wakeup(%struct.irq_desc* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %22

19:                                               ; preds = %14
  %20 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %21 = call i32 @irq_check_poll(%struct.irq_desc* %20)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %18, %13
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @irqd_has_set(i32*, i32) #1

declare dso_local i64 @irq_pm_check_wakeup(%struct.irq_desc*) #1

declare dso_local i32 @irq_check_poll(%struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
