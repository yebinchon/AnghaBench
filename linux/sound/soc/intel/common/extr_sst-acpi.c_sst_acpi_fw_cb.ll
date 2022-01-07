; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-acpi.c_sst_acpi_fw_cb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-acpi.c_sst_acpi_fw_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.sst_acpi_priv = type { i32, %struct.snd_soc_acpi_mach*, %struct.sst_acpi_desc*, %struct.sst_pdata }
%struct.snd_soc_acpi_mach = type { i32 }
%struct.sst_acpi_desc = type { i32 }
%struct.sst_pdata = type { %struct.firmware* }

@.str = private unnamed_addr constant [25 x i8] c"Cannot load firmware %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Cannot register device %s. Error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*)* @sst_acpi_fw_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sst_acpi_fw_cb(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.sst_acpi_priv*, align 8
  %8 = alloca %struct.sst_pdata*, align 8
  %9 = alloca %struct.sst_acpi_desc*, align 8
  %10 = alloca %struct.snd_soc_acpi_mach*, align 8
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.platform_device*
  store %struct.platform_device* %12, %struct.platform_device** %5, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %16 = call %struct.sst_acpi_priv* @platform_get_drvdata(%struct.platform_device* %15)
  store %struct.sst_acpi_priv* %16, %struct.sst_acpi_priv** %7, align 8
  %17 = load %struct.sst_acpi_priv*, %struct.sst_acpi_priv** %7, align 8
  %18 = getelementptr inbounds %struct.sst_acpi_priv, %struct.sst_acpi_priv* %17, i32 0, i32 3
  store %struct.sst_pdata* %18, %struct.sst_pdata** %8, align 8
  %19 = load %struct.sst_acpi_priv*, %struct.sst_acpi_priv** %7, align 8
  %20 = getelementptr inbounds %struct.sst_acpi_priv, %struct.sst_acpi_priv* %19, i32 0, i32 2
  %21 = load %struct.sst_acpi_desc*, %struct.sst_acpi_desc** %20, align 8
  store %struct.sst_acpi_desc* %21, %struct.sst_acpi_desc** %9, align 8
  %22 = load %struct.sst_acpi_priv*, %struct.sst_acpi_priv** %7, align 8
  %23 = getelementptr inbounds %struct.sst_acpi_priv, %struct.sst_acpi_priv* %22, i32 0, i32 1
  %24 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %23, align 8
  store %struct.snd_soc_acpi_mach* %24, %struct.snd_soc_acpi_mach** %10, align 8
  %25 = load %struct.firmware*, %struct.firmware** %3, align 8
  %26 = load %struct.sst_pdata*, %struct.sst_pdata** %8, align 8
  %27 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %26, i32 0, i32 0
  store %struct.firmware* %25, %struct.firmware** %27, align 8
  %28 = load %struct.firmware*, %struct.firmware** %3, align 8
  %29 = icmp ne %struct.firmware* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %2
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %10, align 8
  %33 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %62

36:                                               ; preds = %2
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = load %struct.sst_acpi_desc*, %struct.sst_acpi_desc** %9, align 8
  %39 = getelementptr inbounds %struct.sst_acpi_desc, %struct.sst_acpi_desc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sst_pdata*, %struct.sst_pdata** %8, align 8
  %42 = call i32 @platform_device_register_data(%struct.device* %37, i32 %40, i32 -1, %struct.sst_pdata* %41, i32 8)
  %43 = load %struct.sst_acpi_priv*, %struct.sst_acpi_priv** %7, align 8
  %44 = getelementptr inbounds %struct.sst_acpi_priv, %struct.sst_acpi_priv* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.sst_acpi_priv*, %struct.sst_acpi_priv** %7, align 8
  %46 = getelementptr inbounds %struct.sst_acpi_priv, %struct.sst_acpi_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %36
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = load %struct.sst_acpi_desc*, %struct.sst_acpi_desc** %9, align 8
  %53 = getelementptr inbounds %struct.sst_acpi_desc, %struct.sst_acpi_desc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sst_acpi_priv*, %struct.sst_acpi_priv** %7, align 8
  %56 = getelementptr inbounds %struct.sst_acpi_priv, %struct.sst_acpi_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @PTR_ERR(i32 %57)
  %59 = trunc i64 %58 to i32
  %60 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %59)
  br label %61

61:                                               ; preds = %50, %36
  br label %62

62:                                               ; preds = %61, %30
  ret void
}

declare dso_local %struct.sst_acpi_priv* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @platform_device_register_data(%struct.device*, i32, i32, %struct.sst_pdata*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i64 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
