; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpioctl.c_asihpi_isr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpioctl.c_asihpi_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter = type { i32 (%struct.hpi_adapter*)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32)*, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"asihpi_isr ASI%04X:%d no handler\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@asihpi_irq_count = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @asihpi_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asihpi_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hpi_adapter*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.hpi_adapter*
  store %struct.hpi_adapter* %9, %struct.hpi_adapter** %6, align 8
  %10 = load %struct.hpi_adapter*, %struct.hpi_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.hpi_adapter, %struct.hpi_adapter* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %13, align 8
  %15 = icmp ne i32 (%struct.TYPE_2__*, i32)* %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %2
  %17 = load %struct.hpi_adapter*, %struct.hpi_adapter** %6, align 8
  %18 = getelementptr inbounds %struct.hpi_adapter, %struct.hpi_adapter* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hpi_adapter*, %struct.hpi_adapter** %6, align 8
  %23 = getelementptr inbounds %struct.hpi_adapter, %struct.hpi_adapter* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %26)
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %58

29:                                               ; preds = %2
  %30 = load %struct.hpi_adapter*, %struct.hpi_adapter** %6, align 8
  %31 = getelementptr inbounds %struct.hpi_adapter, %struct.hpi_adapter* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %33, align 8
  %35 = load %struct.hpi_adapter*, %struct.hpi_adapter** %6, align 8
  %36 = getelementptr inbounds %struct.hpi_adapter, %struct.hpi_adapter* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = call i32 %34(%struct.TYPE_2__* %37, i32 0)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %29
  %42 = load i32, i32* @IRQ_NONE, align 4
  store i32 %42, i32* %3, align 4
  br label %58

43:                                               ; preds = %29
  %44 = load i32, i32* @asihpi_irq_count, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @asihpi_irq_count, align 4
  %46 = load %struct.hpi_adapter*, %struct.hpi_adapter** %6, align 8
  %47 = getelementptr inbounds %struct.hpi_adapter, %struct.hpi_adapter* %46, i32 0, i32 0
  %48 = load i32 (%struct.hpi_adapter*)*, i32 (%struct.hpi_adapter*)** %47, align 8
  %49 = icmp ne i32 (%struct.hpi_adapter*)* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.hpi_adapter*, %struct.hpi_adapter** %6, align 8
  %52 = getelementptr inbounds %struct.hpi_adapter, %struct.hpi_adapter* %51, i32 0, i32 0
  %53 = load i32 (%struct.hpi_adapter*)*, i32 (%struct.hpi_adapter*)** %52, align 8
  %54 = load %struct.hpi_adapter*, %struct.hpi_adapter** %6, align 8
  %55 = call i32 %53(%struct.hpi_adapter* %54)
  br label %56

56:                                               ; preds = %50, %43
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %41, %16
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
