; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl.c_skl_find_machine.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl.c_skl_find_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { i32, %struct.TYPE_4__*, i32, i32, %struct.snd_soc_acpi_mach* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_soc_acpi_mach = type { %struct.TYPE_3__, %struct.skl_machine_pdata*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.skl_machine_pdata = type { i32 }
%struct.hdac_bus = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"No matching I2S machine driver found\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"No matching machine driver found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skl_dev*, i8*)* @skl_find_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_find_machine(%struct.skl_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.skl_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hdac_bus*, align 8
  %7 = alloca %struct.snd_soc_acpi_mach*, align 8
  %8 = alloca %struct.skl_machine_pdata*, align 8
  store %struct.skl_dev* %0, %struct.skl_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %10 = call %struct.hdac_bus* @skl_to_bus(%struct.skl_dev* %9)
  store %struct.hdac_bus* %10, %struct.hdac_bus** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.snd_soc_acpi_mach*
  store %struct.snd_soc_acpi_mach* %12, %struct.snd_soc_acpi_mach** %7, align 8
  %13 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %7, align 8
  %14 = call %struct.snd_soc_acpi_mach* @snd_soc_acpi_find_machine(%struct.snd_soc_acpi_mach* %13)
  store %struct.snd_soc_acpi_mach* %14, %struct.snd_soc_acpi_mach** %7, align 8
  %15 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %7, align 8
  %16 = icmp ne %struct.snd_soc_acpi_mach* %15, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %2
  %18 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %19 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call %struct.snd_soc_acpi_mach* @skl_find_hda_machine(%struct.skl_dev* %22, i8* %23)
  store %struct.snd_soc_acpi_mach* %24, %struct.snd_soc_acpi_mach** %7, align 8
  %25 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %7, align 8
  %26 = icmp ne %struct.snd_soc_acpi_mach* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %17
  %28 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %29 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %67

34:                                               ; preds = %17
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %7, align 8
  %37 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %38 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %37, i32 0, i32 4
  store %struct.snd_soc_acpi_mach* %36, %struct.snd_soc_acpi_mach** %38, align 8
  %39 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %7, align 8
  %40 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %43 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %7, align 8
  %45 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %44, i32 0, i32 1
  %46 = load %struct.skl_machine_pdata*, %struct.skl_machine_pdata** %45, align 8
  store %struct.skl_machine_pdata* %46, %struct.skl_machine_pdata** %8, align 8
  %47 = load %struct.skl_machine_pdata*, %struct.skl_machine_pdata** %8, align 8
  %48 = icmp ne %struct.skl_machine_pdata* %47, null
  br i1 %48, label %49, label %66

49:                                               ; preds = %35
  %50 = load %struct.skl_machine_pdata*, %struct.skl_machine_pdata** %8, align 8
  %51 = getelementptr inbounds %struct.skl_machine_pdata, %struct.skl_machine_pdata* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %54 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %56 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %60 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @intel_nhlt_get_dmic_geo(i32* %58, i32 %61)
  %63 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %7, align 8
  %64 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  br label %66

66:                                               ; preds = %49, %35
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %27
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.hdac_bus* @skl_to_bus(%struct.skl_dev*) #1

declare dso_local %struct.snd_soc_acpi_mach* @snd_soc_acpi_find_machine(%struct.snd_soc_acpi_mach*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local %struct.snd_soc_acpi_mach* @skl_find_hda_machine(%struct.skl_dev*, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @intel_nhlt_get_dmic_geo(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
