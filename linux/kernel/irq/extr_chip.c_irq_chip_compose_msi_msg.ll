; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_irq_chip_compose_msi_msg.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_irq_chip_compose_msi_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { %struct.TYPE_2__*, %struct.irq_data* }
%struct.TYPE_2__ = type { {}* }
%struct.msi_msg = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_chip_compose_msi_msg(%struct.irq_data* %0, %struct.msi_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca %struct.msi_msg*, align 8
  %6 = alloca %struct.irq_data*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store %struct.msi_msg* %1, %struct.msi_msg** %5, align 8
  store %struct.irq_data* null, %struct.irq_data** %6, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %8 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %13 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.irq_data*, %struct.msi_msg*)**
  %17 = load i32 (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, %struct.msi_msg*)** %16, align 8
  %18 = icmp ne i32 (%struct.irq_data*, %struct.msi_msg*)* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  store %struct.irq_data* %20, %struct.irq_data** %6, align 8
  br label %21

21:                                               ; preds = %19, %11, %2
  %22 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %23 = icmp ne %struct.irq_data* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @ENOSYS, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %37

27:                                               ; preds = %21
  %28 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %29 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i32 (%struct.irq_data*, %struct.msi_msg*)**
  %33 = load i32 (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, %struct.msi_msg*)** %32, align 8
  %34 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %35 = load %struct.msi_msg*, %struct.msi_msg** %5, align 8
  %36 = call i32 %33(%struct.irq_data* %34, %struct.msi_msg* %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %27, %24
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
