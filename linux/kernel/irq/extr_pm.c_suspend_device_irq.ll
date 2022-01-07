; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_pm.c_suspend_device_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_pm.c_suspend_device_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@IRQD_WAKEUP_ARMED = common dso_local global i32 0, align 4
@IRQS_SUSPENDED = common dso_local global i32 0, align 4
@IRQCHIP_MASK_ON_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_desc*)* @suspend_device_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @suspend_device_irq(%struct.irq_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_desc*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %3, align 8
  %4 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %5 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %10 = call i64 @irq_desc_is_chained(%struct.irq_desc* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %14 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %8, %1
  store i32 0, i32* %2, align 4
  br label %47

18:                                               ; preds = %12
  %19 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %20 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %19, i32 0, i32 1
  %21 = call i64 @irqd_is_wakeup_set(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %25 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %24, i32 0, i32 1
  %26 = load i32, i32* @IRQD_WAKEUP_ARMED, align 4
  %27 = call i32 @irqd_set(i32* %25, i32 %26)
  store i32 1, i32* %2, align 4
  br label %47

28:                                               ; preds = %18
  %29 = load i32, i32* @IRQS_SUSPENDED, align 4
  %30 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %31 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %35 = call i32 @__disable_irq(%struct.irq_desc* %34)
  %36 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %37 = call %struct.TYPE_2__* @irq_desc_get_chip(%struct.irq_desc* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IRQCHIP_MASK_ON_SUSPEND, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %28
  %44 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %45 = call i32 @mask_irq(%struct.irq_desc* %44)
  br label %46

46:                                               ; preds = %43, %28
  store i32 1, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %23, %17
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @irq_desc_is_chained(%struct.irq_desc*) #1

declare dso_local i64 @irqd_is_wakeup_set(i32*) #1

declare dso_local i32 @irqd_set(i32*, i32) #1

declare dso_local i32 @__disable_irq(%struct.irq_desc*) #1

declare dso_local %struct.TYPE_2__* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @mask_irq(%struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
