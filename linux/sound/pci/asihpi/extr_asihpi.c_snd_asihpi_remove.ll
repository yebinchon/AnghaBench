; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_asihpi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_asihpi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.hpi_adapter = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32*, i64 }
%struct.TYPE_4__ = type { %struct.snd_card_asihpi* }
%struct.snd_card_asihpi = type { i32 }
%struct.TYPE_3__ = type { i32 }

@HPI_ADAPTER_PROPERTY_IRQ_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @snd_asihpi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_asihpi_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.hpi_adapter*, align 8
  %4 = alloca %struct.snd_card_asihpi*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.hpi_adapter* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.hpi_adapter* %6, %struct.hpi_adapter** %3, align 8
  %7 = load %struct.hpi_adapter*, %struct.hpi_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.hpi_adapter, %struct.hpi_adapter* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %10, align 8
  store %struct.snd_card_asihpi* %11, %struct.snd_card_asihpi** %4, align 8
  %12 = load %struct.hpi_adapter*, %struct.hpi_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.hpi_adapter, %struct.hpi_adapter* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load %struct.hpi_adapter*, %struct.hpi_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.hpi_adapter, %struct.hpi_adapter* %17, i32 0, i32 2
  store i32* null, i32** %18, align 8
  %19 = load %struct.hpi_adapter*, %struct.hpi_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.hpi_adapter, %struct.hpi_adapter* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HPI_ADAPTER_PROPERTY_IRQ_RATE, align 4
  %25 = call i32 @hpi_adapter_set_property(i32 %23, i32 %24, i32 0, i32 0)
  %26 = call i32 @hpi_handle_error(i32 %25)
  %27 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %4, align 8
  %28 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %27, i32 0, i32 0
  %29 = call i32 @tasklet_kill(i32* %28)
  br label %30

30:                                               ; preds = %16, %1
  %31 = load %struct.hpi_adapter*, %struct.hpi_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.hpi_adapter, %struct.hpi_adapter* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = call i32 @snd_card_free(%struct.TYPE_4__* %33)
  %35 = load %struct.hpi_adapter*, %struct.hpi_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.hpi_adapter, %struct.hpi_adapter* %35, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %36, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = call i32 @asihpi_adapter_remove(%struct.pci_dev* %37)
  ret void
}

declare dso_local %struct.hpi_adapter* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @hpi_handle_error(i32) #1

declare dso_local i32 @hpi_adapter_set_property(i32, i32, i32, i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @snd_card_free(%struct.TYPE_4__*) #1

declare dso_local i32 @asihpi_adapter_remove(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
