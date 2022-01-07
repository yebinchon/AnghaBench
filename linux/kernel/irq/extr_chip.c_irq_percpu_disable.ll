; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_irq_percpu_disable.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_irq_percpu_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_percpu_disable(%struct.irq_desc* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_desc*, align 8
  %4 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %6 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %9, align 8
  %11 = icmp ne i32 (%struct.TYPE_5__*)* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %14 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %17, align 8
  %19 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %20 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %19, i32 0, i32 1
  %21 = call i32 %18(%struct.TYPE_5__* %20)
  br label %32

22:                                               ; preds = %2
  %23 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %24 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %27, align 8
  %29 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %30 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %29, i32 0, i32 1
  %31 = call i32 %28(%struct.TYPE_5__* %30)
  br label %32

32:                                               ; preds = %22, %12
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %35 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @cpumask_clear_cpu(i32 %33, i32 %36)
  ret void
}

declare dso_local i32 @cpumask_clear_cpu(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
