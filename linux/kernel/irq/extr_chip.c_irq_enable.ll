; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_enable(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %3 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %4 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %3, i32 0, i32 0
  %5 = call i32 @irqd_irq_disabled(%struct.TYPE_5__* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %9 = call i32 @unmask_irq(%struct.irq_desc* %8)
  br label %36

10:                                               ; preds = %1
  %11 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %12 = call i32 @irq_state_clr_disabled(%struct.irq_desc* %11)
  %13 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %14 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %17, align 8
  %19 = icmp ne i32 (%struct.TYPE_5__*)* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %10
  %21 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %22 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %25, align 8
  %27 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %28 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %27, i32 0, i32 0
  %29 = call i32 %26(%struct.TYPE_5__* %28)
  %30 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %31 = call i32 @irq_state_clr_masked(%struct.irq_desc* %30)
  br label %35

32:                                               ; preds = %10
  %33 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %34 = call i32 @unmask_irq(%struct.irq_desc* %33)
  br label %35

35:                                               ; preds = %32, %20
  br label %36

36:                                               ; preds = %35, %7
  ret void
}

declare dso_local i32 @irqd_irq_disabled(%struct.TYPE_5__*) #1

declare dso_local i32 @unmask_irq(%struct.irq_desc*) #1

declare dso_local i32 @irq_state_clr_disabled(%struct.irq_desc*) #1

declare dso_local i32 @irq_state_clr_masked(%struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
