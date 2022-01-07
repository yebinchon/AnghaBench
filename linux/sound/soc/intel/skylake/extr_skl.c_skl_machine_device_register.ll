; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl.c_skl_machine_device_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl.c_skl_machine_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { %struct.platform_device*, %struct.snd_soc_acpi_mach* }
%struct.platform_device = type { i32 }
%struct.snd_soc_acpi_mach = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hdac_bus = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"platform device alloc failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"failed to add machine device platform data\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to add machine device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skl_dev*)* @skl_machine_device_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_machine_device_register(%struct.skl_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skl_dev*, align 8
  %4 = alloca %struct.snd_soc_acpi_mach*, align 8
  %5 = alloca %struct.hdac_bus*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i32, align 4
  store %struct.skl_dev* %0, %struct.skl_dev** %3, align 8
  %8 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %9 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %8, i32 0, i32 1
  %10 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %9, align 8
  store %struct.snd_soc_acpi_mach* %10, %struct.snd_soc_acpi_mach** %4, align 8
  %11 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %12 = call %struct.hdac_bus* @skl_to_bus(%struct.skl_dev* %11)
  store %struct.hdac_bus* %12, %struct.hdac_bus** %5, align 8
  %13 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.platform_device* @platform_device_alloc(i32 %15, i32 -1)
  store %struct.platform_device* %16, %struct.platform_device** %6, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %18 = icmp eq %struct.platform_device* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %21 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %72

26:                                               ; preds = %1
  %27 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %28 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_name(i32 %29)
  %31 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %4, align 8
  %32 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %35 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %4, align 8
  %38 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %41 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %4, align 8
  %42 = bitcast %struct.snd_soc_acpi_mach* %41 to i8*
  %43 = call i32 @platform_device_add_data(%struct.platform_device* %40, i8* %42, i32 12)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %26
  %47 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %48 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %52 = call i32 @platform_device_put(%struct.platform_device* %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %72

54:                                               ; preds = %26
  %55 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %56 = call i32 @platform_device_add(%struct.platform_device* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %61 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %65 = call i32 @platform_device_put(%struct.platform_device* %64)
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %72

68:                                               ; preds = %54
  %69 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %70 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %71 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %70, i32 0, i32 0
  store %struct.platform_device* %69, %struct.platform_device** %71, align 8
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %68, %59, %46, %19
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.hdac_bus* @skl_to_bus(%struct.skl_dev*) #1

declare dso_local %struct.platform_device* @platform_device_alloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @platform_device_add_data(%struct.platform_device*, i8*, i32) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
