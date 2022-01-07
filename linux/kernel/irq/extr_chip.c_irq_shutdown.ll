; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_irq_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_irq_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_shutdown(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %3 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %4 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %3, i32 0, i32 1
  %5 = call i64 @irqd_is_started(%struct.TYPE_5__* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %37

7:                                                ; preds = %1
  %8 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %9 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %11 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %14, align 8
  %16 = icmp ne i32 (%struct.TYPE_5__*)* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %7
  %18 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %19 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %22, align 8
  %24 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %25 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %24, i32 0, i32 1
  %26 = call i32 %23(%struct.TYPE_5__* %25)
  %27 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %28 = call i32 @irq_state_set_disabled(%struct.irq_desc* %27)
  %29 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %30 = call i32 @irq_state_set_masked(%struct.irq_desc* %29)
  br label %34

31:                                               ; preds = %7
  %32 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %33 = call i32 @__irq_disable(%struct.irq_desc* %32, i32 1)
  br label %34

34:                                               ; preds = %31, %17
  %35 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %36 = call i32 @irq_state_clr_started(%struct.irq_desc* %35)
  br label %37

37:                                               ; preds = %34, %1
  ret void
}

declare dso_local i64 @irqd_is_started(%struct.TYPE_5__*) #1

declare dso_local i32 @irq_state_set_disabled(%struct.irq_desc*) #1

declare dso_local i32 @irq_state_set_masked(%struct.irq_desc*) #1

declare dso_local i32 @__irq_disable(%struct.irq_desc*, i32) #1

declare dso_local i32 @irq_state_clr_started(%struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
