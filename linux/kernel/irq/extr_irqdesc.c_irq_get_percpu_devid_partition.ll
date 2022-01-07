; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_irqdesc.c_irq_get_percpu_devid_partition.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_irqdesc.c_irq_get_percpu_devid_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }
%struct.irq_desc = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_get_percpu_devid_partition(i32 %0, %struct.cpumask* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpumask*, align 8
  %6 = alloca %struct.irq_desc*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.cpumask* %1, %struct.cpumask** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.irq_desc* @irq_to_desc(i32 %7)
  store %struct.irq_desc* %8, %struct.irq_desc** %6, align 8
  %9 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %10 = icmp ne %struct.irq_desc* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %13 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %29

19:                                               ; preds = %11
  %20 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %21 = icmp ne %struct.cpumask* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %24 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %25 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cpumask_copy(%struct.cpumask* %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %19
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %16
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i32 @cpumask_copy(%struct.cpumask*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
