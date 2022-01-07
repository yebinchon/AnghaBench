; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_lib.c_oxygen_restore_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_lib.c_oxygen_restore_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pci_device_id = type { i32, i32 }

@OXYGEN_EEPROM_ID = common dso_local global i32 0, align 4
@OXYGEN_MISC = common dso_local global i32 0, align 4
@OXYGEN_MISC_WRITE_PCI_SUBID = common dso_local global i32 0, align 4
@PCI_SUBSYSTEM_VENDOR_ID = common dso_local global i32 0, align 4
@PCI_SUBSYSTEM_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"EEPROM ID restored\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*, %struct.pci_device_id*)* @oxygen_restore_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oxygen_restore_eeprom(%struct.oxygen* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca %struct.oxygen*, align 8
  %4 = alloca %struct.pci_device_id*, align 8
  %5 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %3, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %4, align 8
  %6 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %7 = call i32 @oxygen_read_eeprom(%struct.oxygen* %6, i32 0)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @OXYGEN_EEPROM_ID, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %58

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 65535
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %16 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 34696
  br i1 %18, label %19, label %58

19:                                               ; preds = %14, %11
  %20 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %21 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %22 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @oxygen_write_eeprom(%struct.oxygen* %20, i32 1, i32 %23)
  %25 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %26 = load i32, i32* @OXYGEN_EEPROM_ID, align 4
  %27 = call i32 @oxygen_write_eeprom(%struct.oxygen* %25, i32 0, i32 %26)
  %28 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %29 = load i32, i32* @OXYGEN_MISC, align 4
  %30 = load i32, i32* @OXYGEN_MISC_WRITE_PCI_SUBID, align 4
  %31 = call i32 @oxygen_set_bits8(%struct.oxygen* %28, i32 %29, i32 %30)
  %32 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %33 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PCI_SUBSYSTEM_VENDOR_ID, align 4
  %36 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %37 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pci_write_config_word(i32 %34, i32 %35, i32 %38)
  %40 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %41 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PCI_SUBSYSTEM_ID, align 4
  %44 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %45 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pci_write_config_word(i32 %42, i32 %43, i32 %46)
  %48 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %49 = load i32, i32* @OXYGEN_MISC, align 4
  %50 = load i32, i32* @OXYGEN_MISC_WRITE_PCI_SUBID, align 4
  %51 = call i32 @oxygen_clear_bits8(%struct.oxygen* %48, i32 %49, i32 %50)
  %52 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %53 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_info(i32 %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %19, %14, %2
  ret void
}

declare dso_local i32 @oxygen_read_eeprom(%struct.oxygen*, i32) #1

declare dso_local i32 @oxygen_write_eeprom(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @oxygen_set_bits8(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

declare dso_local i32 @oxygen_clear_bits8(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
