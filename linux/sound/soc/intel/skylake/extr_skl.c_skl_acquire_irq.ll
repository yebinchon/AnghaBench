; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl.c_skl_acquire_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl.c_skl_acquire_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32, i32 }
%struct.skl_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@skl_interrupt = common dso_local global i32 0, align 4
@skl_threaded_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"unable to grab IRQ %d, disabling device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_bus*, i32)* @skl_acquire_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_acquire_irq(%struct.hdac_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdac_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.skl_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.hdac_bus* %0, %struct.hdac_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %9 = call %struct.skl_dev* @bus_to_skl(%struct.hdac_bus* %8)
  store %struct.skl_dev* %9, %struct.skl_dev** %6, align 8
  %10 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %11 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @skl_interrupt, align 4
  %16 = load i32, i32* @skl_threaded_handler, align 4
  %17 = load i32, i32* @IRQF_SHARED, align 4
  %18 = load i32, i32* @KBUILD_MODNAME, align 4
  %19 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %20 = call i32 @request_threaded_irq(i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, %struct.hdac_bus* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %25 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %28 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %46

34:                                               ; preds = %2
  %35 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %36 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %41 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %43 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = call i32 @pci_intx(%struct.TYPE_2__* %44, i32 1)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %34, %23
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.skl_dev* @bus_to_skl(%struct.hdac_bus*) #1

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i32, %struct.hdac_bus*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @pci_intx(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
