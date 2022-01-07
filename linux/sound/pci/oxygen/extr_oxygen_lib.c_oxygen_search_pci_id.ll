; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_lib.c_oxygen_search_pci_id.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_lib.c_oxygen_search_pci_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32 }
%struct.pci_device_id = type { i32, i64, i64 }

@OXYGEN_FUNCTION = common dso_local global i32 0, align 4
@OXYGEN_FUNCTION_ENABLE_SPI_4_5 = common dso_local global i32 0, align 4
@BROKEN_EEPROM_DRIVER_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_device_id* (%struct.oxygen*, %struct.pci_device_id*)* @oxygen_search_pci_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_device_id* @oxygen_search_pci_id(%struct.oxygen* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca %struct.pci_device_id*, align 8
  %4 = alloca %struct.oxygen*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %7 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %8 = load i32, i32* @OXYGEN_FUNCTION, align 4
  %9 = load i32, i32* @OXYGEN_FUNCTION_ENABLE_SPI_4_5, align 4
  %10 = call i32 @oxygen_clear_bits8(%struct.oxygen* %7, i32 %8, i32 %9)
  %11 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %12 = call i32 @oxygen_read_eeprom(%struct.oxygen* %11, i32 2)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 65535
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %17 = call i32 @oxygen_read_eeprom(%struct.oxygen* %16, i32 1)
  %18 = icmp eq i32 %17, 65535
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 34696, i32* %6, align 4
  br label %20

20:                                               ; preds = %19, %15, %2
  br label %21

21:                                               ; preds = %41, %20
  %22 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %23 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  %27 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %28 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %34 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BROKEN_EEPROM_DRIVER_DATA, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  store %struct.pci_device_id* %39, %struct.pci_device_id** %3, align 8
  br label %45

40:                                               ; preds = %32, %26
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %43 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %42, i32 1
  store %struct.pci_device_id* %43, %struct.pci_device_id** %5, align 8
  br label %21

44:                                               ; preds = %21
  store %struct.pci_device_id* null, %struct.pci_device_id** %3, align 8
  br label %45

45:                                               ; preds = %44, %38
  %46 = load %struct.pci_device_id*, %struct.pci_device_id** %3, align 8
  ret %struct.pci_device_id* %46
}

declare dso_local i32 @oxygen_clear_bits8(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @oxygen_read_eeprom(%struct.oxygen*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
