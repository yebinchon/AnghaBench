; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-nhlt.c_skl_nhlt_platform_id_show.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-nhlt.c_skl_nhlt_platform_id_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pci_dev = type { i32 }
%struct.hdac_bus = type { i32 }
%struct.skl_dev = type { i32, i64 }
%struct.nhlt_acpi_table = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"%x-%.6s-%.8s-%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @skl_nhlt_platform_id_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_nhlt_platform_id_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.hdac_bus*, align 8
  %9 = alloca %struct.skl_dev*, align 8
  %10 = alloca %struct.nhlt_acpi_table*, align 8
  %11 = alloca [32 x i8], align 16
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.pci_dev* @to_pci_dev(%struct.device* %12)
  store %struct.pci_dev* %13, %struct.pci_dev** %7, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %15 = call %struct.hdac_bus* @pci_get_drvdata(%struct.pci_dev* %14)
  store %struct.hdac_bus* %15, %struct.hdac_bus** %8, align 8
  %16 = load %struct.hdac_bus*, %struct.hdac_bus** %8, align 8
  %17 = call %struct.skl_dev* @bus_to_skl(%struct.hdac_bus* %16)
  store %struct.skl_dev* %17, %struct.skl_dev** %9, align 8
  %18 = load %struct.skl_dev*, %struct.skl_dev** %9, align 8
  %19 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.nhlt_acpi_table*
  store %struct.nhlt_acpi_table* %21, %struct.nhlt_acpi_table** %10, align 8
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %23 = load %struct.skl_dev*, %struct.skl_dev** %9, align 8
  %24 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.nhlt_acpi_table*, %struct.nhlt_acpi_table** %10, align 8
  %27 = getelementptr inbounds %struct.nhlt_acpi_table, %struct.nhlt_acpi_table* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.nhlt_acpi_table*, %struct.nhlt_acpi_table** %10, align 8
  %31 = getelementptr inbounds %struct.nhlt_acpi_table, %struct.nhlt_acpi_table* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.nhlt_acpi_table*, %struct.nhlt_acpi_table** %10, align 8
  %35 = getelementptr inbounds %struct.nhlt_acpi_table, %struct.nhlt_acpi_table* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %29, i8* %33, i32 %37)
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %40 = call i32 @skl_nhlt_trim_space(i8* %39)
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %43 = call i32 (i8*, i8*, ...) @sprintf(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  ret i32 %43
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local %struct.hdac_bus* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.skl_dev* @bus_to_skl(%struct.hdac_bus*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @skl_nhlt_trim_space(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
