; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c___irq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c___irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*, i32)* @__irq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__irq_disable(%struct.irq_desc* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_desc*, align 8
  %4 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %6 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %5, i32 0, i32 0
  %7 = call i64 @irqd_irq_disabled(%struct.TYPE_5__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %14 = call i32 @mask_irq(%struct.irq_desc* %13)
  br label %15

15:                                               ; preds = %12, %9
  br label %46

16:                                               ; preds = %2
  %17 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %18 = call i32 @irq_state_set_disabled(%struct.irq_desc* %17)
  %19 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %20 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %23, align 8
  %25 = icmp ne i32 (%struct.TYPE_5__*)* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %16
  %27 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %28 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %31, align 8
  %33 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %34 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %33, i32 0, i32 0
  %35 = call i32 %32(%struct.TYPE_5__* %34)
  %36 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %37 = call i32 @irq_state_set_masked(%struct.irq_desc* %36)
  br label %45

38:                                               ; preds = %16
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %43 = call i32 @mask_irq(%struct.irq_desc* %42)
  br label %44

44:                                               ; preds = %41, %38
  br label %45

45:                                               ; preds = %44, %26
  br label %46

46:                                               ; preds = %45, %15
  ret void
}

declare dso_local i64 @irqd_irq_disabled(%struct.TYPE_5__*) #1

declare dso_local i32 @mask_irq(%struct.irq_desc*) #1

declare dso_local i32 @irq_state_set_disabled(%struct.irq_desc*) #1

declare dso_local i32 @irq_state_set_masked(%struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
