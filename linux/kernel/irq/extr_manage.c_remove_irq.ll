; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_remove_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_remove_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irqaction = type { i32 }
%struct.irq_desc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remove_irq(i32 %0, %struct.irqaction* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irqaction*, align 8
  %5 = alloca %struct.irq_desc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.irqaction* %1, %struct.irqaction** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.irq_desc* @irq_to_desc(i32 %6)
  store %struct.irq_desc* %7, %struct.irq_desc** %5, align 8
  %8 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %9 = icmp ne %struct.irq_desc* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %12 = call i32 @irq_settings_is_per_cpu_devid(%struct.irq_desc* %11)
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %17 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %18 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @__free_irq(%struct.irq_desc* %16, i32 %19)
  br label %21

21:                                               ; preds = %15, %10, %2
  ret void
}

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @irq_settings_is_per_cpu_devid(%struct.irq_desc*) #1

declare dso_local i32 @__free_irq(%struct.irq_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
