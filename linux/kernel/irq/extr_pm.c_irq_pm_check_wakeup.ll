; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_pm.c_irq_pm_check_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_pm.c_irq_pm_check_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32, i32 }

@IRQD_WAKEUP_ARMED = common dso_local global i32 0, align 4
@IRQS_SUSPENDED = common dso_local global i32 0, align 4
@IRQS_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_pm_check_wakeup(%struct.irq_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_desc*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %3, align 8
  %4 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %5 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %4, i32 0, i32 2
  %6 = call i64 @irqd_is_wakeup_armed(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %10 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %9, i32 0, i32 2
  %11 = load i32, i32* @IRQD_WAKEUP_ARMED, align 4
  %12 = call i32 @irqd_clear(i32* %10, i32 %11)
  %13 = load i32, i32* @IRQS_SUSPENDED, align 4
  %14 = load i32, i32* @IRQS_PENDING, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %17 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %21 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %25 = call i32 @irq_disable(%struct.irq_desc* %24)
  %26 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %27 = call i32 @irq_desc_get_irq(%struct.irq_desc* %26)
  %28 = call i32 @pm_system_irq_wakeup(i32 %27)
  store i32 1, i32* %2, align 4
  br label %30

29:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %8
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @irqd_is_wakeup_armed(i32*) #1

declare dso_local i32 @irqd_clear(i32*, i32) #1

declare dso_local i32 @irq_disable(%struct.irq_desc*) #1

declare dso_local i32 @pm_system_irq_wakeup(i32) #1

declare dso_local i32 @irq_desc_get_irq(%struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
