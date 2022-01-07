; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_azx_check_dmic.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_azx_check_dmic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.azx = type { i64 }
%struct.nhlt_acpi_table = type { i32 }

@AZX_DRIVER_SKL = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Digital mics found on Skylake+ platform, aborting probe\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.azx*)* @azx_check_dmic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_check_dmic(%struct.pci_dev* %0, %struct.azx* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.azx*, align 8
  %5 = alloca %struct.nhlt_acpi_table*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.azx* %1, %struct.azx** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.azx*, %struct.azx** %4, align 8
  %8 = getelementptr inbounds %struct.azx, %struct.azx* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AZX_DRIVER_SKL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 262912
  br i1 %16, label %17, label %39

17:                                               ; preds = %12
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 1
  %20 = call %struct.nhlt_acpi_table* @intel_nhlt_init(i32* %19)
  store %struct.nhlt_acpi_table* %20, %struct.nhlt_acpi_table** %5, align 8
  %21 = load %struct.nhlt_acpi_table*, %struct.nhlt_acpi_table** %5, align 8
  %22 = icmp ne %struct.nhlt_acpi_table* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 1
  %26 = load %struct.nhlt_acpi_table*, %struct.nhlt_acpi_table** %5, align 8
  %27 = call i64 @intel_nhlt_get_dmic_geo(i32* %25, %struct.nhlt_acpi_table* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  %32 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 1
  %34 = call i32 @dev_info(i32* %33, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %29, %23
  %36 = load %struct.nhlt_acpi_table*, %struct.nhlt_acpi_table** %5, align 8
  %37 = call i32 @intel_nhlt_free(%struct.nhlt_acpi_table* %36)
  br label %38

38:                                               ; preds = %35, %17
  br label %39

39:                                               ; preds = %38, %12, %2
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local %struct.nhlt_acpi_table* @intel_nhlt_init(i32*) #1

declare dso_local i64 @intel_nhlt_get_dmic_geo(i32*, %struct.nhlt_acpi_table*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @intel_nhlt_free(%struct.nhlt_acpi_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
