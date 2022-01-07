; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-nhlt.c_skl_nhlt_update_topology_bin.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-nhlt.c_skl_nhlt_update_topology_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { i32, i32, i64 }
%struct.nhlt_acpi_table = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i32 }
%struct.hdac_bus = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"oem_id %.6s, oem_table_id %.8s oem_revision %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%x-%.6s-%.8s-%d%s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"-tplg.bin\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_nhlt_update_topology_bin(%struct.skl_dev* %0) #0 {
  %2 = alloca %struct.skl_dev*, align 8
  %3 = alloca %struct.nhlt_acpi_table*, align 8
  %4 = alloca %struct.hdac_bus*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.skl_dev* %0, %struct.skl_dev** %2, align 8
  %6 = load %struct.skl_dev*, %struct.skl_dev** %2, align 8
  %7 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.nhlt_acpi_table*
  store %struct.nhlt_acpi_table* %9, %struct.nhlt_acpi_table** %3, align 8
  %10 = load %struct.skl_dev*, %struct.skl_dev** %2, align 8
  %11 = call %struct.hdac_bus* @skl_to_bus(%struct.skl_dev* %10)
  store %struct.hdac_bus* %11, %struct.hdac_bus** %4, align 8
  %12 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %13 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = load %struct.nhlt_acpi_table*, %struct.nhlt_acpi_table** %3, align 8
  %17 = getelementptr inbounds %struct.nhlt_acpi_table, %struct.nhlt_acpi_table* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.nhlt_acpi_table*, %struct.nhlt_acpi_table** %3, align 8
  %21 = getelementptr inbounds %struct.nhlt_acpi_table, %struct.nhlt_acpi_table* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.nhlt_acpi_table*, %struct.nhlt_acpi_table** %3, align 8
  %25 = getelementptr inbounds %struct.nhlt_acpi_table, %struct.nhlt_acpi_table* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_dbg(%struct.device* %15, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %23, i32 %27)
  %29 = load %struct.skl_dev*, %struct.skl_dev** %2, align 8
  %30 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.skl_dev*, %struct.skl_dev** %2, align 8
  %33 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.nhlt_acpi_table*, %struct.nhlt_acpi_table** %3, align 8
  %36 = getelementptr inbounds %struct.nhlt_acpi_table, %struct.nhlt_acpi_table* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.nhlt_acpi_table*, %struct.nhlt_acpi_table** %3, align 8
  %40 = getelementptr inbounds %struct.nhlt_acpi_table, %struct.nhlt_acpi_table* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.nhlt_acpi_table*, %struct.nhlt_acpi_table** %3, align 8
  %44 = getelementptr inbounds %struct.nhlt_acpi_table, %struct.nhlt_acpi_table* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @snprintf(i32 %31, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %34, i8* %38, i8* %42, i32 %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.skl_dev*, %struct.skl_dev** %2, align 8
  %49 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @skl_nhlt_trim_space(i32 %50)
  ret i32 0
}

declare dso_local %struct.hdac_bus* @skl_to_bus(%struct.skl_dev*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i8*, i8*, i32, i8*) #1

declare dso_local i32 @skl_nhlt_trim_space(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
