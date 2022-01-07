; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_setup_percpu_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_setup_percpu_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irqaction = type { i32 }
%struct.irq_desc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_percpu_irq(i32 %0, %struct.irqaction* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.irqaction*, align 8
  %6 = alloca %struct.irq_desc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.irqaction* %1, %struct.irqaction** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.irq_desc* @irq_to_desc(i32 %8)
  store %struct.irq_desc* %9, %struct.irq_desc** %6, align 8
  %10 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %11 = icmp ne %struct.irq_desc* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %14 = call i32 @irq_settings_is_per_cpu_devid(%struct.irq_desc* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %40

19:                                               ; preds = %12
  %20 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %21 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %20, i32 0, i32 0
  %22 = call i32 @irq_chip_pm_get(i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %40

27:                                               ; preds = %19
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %30 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %31 = call i32 @__setup_irq(i32 %28, %struct.irq_desc* %29, %struct.irqaction* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %36 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %35, i32 0, i32 0
  %37 = call i32 @irq_chip_pm_put(i32* %36)
  br label %38

38:                                               ; preds = %34, %27
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %25, %16
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i32 @irq_settings_is_per_cpu_devid(%struct.irq_desc*) #1

declare dso_local i32 @irq_chip_pm_get(i32*) #1

declare dso_local i32 @__setup_irq(i32, %struct.irq_desc*, %struct.irqaction*) #1

declare dso_local i32 @irq_chip_pm_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
