; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_setup_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_setup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irqaction = type { i32 }
%struct.irq_desc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_irq(i32 %0, %struct.irqaction* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.irqaction*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_desc*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.irqaction* %1, %struct.irqaction** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.irq_desc* @irq_to_desc(i32 %8)
  store %struct.irq_desc* %9, %struct.irq_desc** %7, align 8
  %10 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %11 = icmp ne %struct.irq_desc* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %14 = call i32 @irq_settings_is_per_cpu_devid(%struct.irq_desc* %13)
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %41

20:                                               ; preds = %12
  %21 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %22 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %21, i32 0, i32 0
  %23 = call i32 @irq_chip_pm_get(i32* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %41

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %31 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %32 = call i32 @__setup_irq(i32 %29, %struct.irq_desc* %30, %struct.irqaction* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %37 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %36, i32 0, i32 0
  %38 = call i32 @irq_chip_pm_put(i32* %37)
  br label %39

39:                                               ; preds = %35, %28
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %26, %17
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

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
