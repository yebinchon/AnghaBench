; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-acpi.c_sst_acpi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-acpi.c_sst_acpi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sst_acpi_priv = type { i32, i32, %struct.sst_pdata }
%struct.sst_pdata = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sst_acpi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_acpi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sst_acpi_priv*, align 8
  %4 = alloca %struct.sst_pdata*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.sst_acpi_priv* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.sst_acpi_priv* %6, %struct.sst_acpi_priv** %3, align 8
  %7 = load %struct.sst_acpi_priv*, %struct.sst_acpi_priv** %3, align 8
  %8 = getelementptr inbounds %struct.sst_acpi_priv, %struct.sst_acpi_priv* %7, i32 0, i32 2
  store %struct.sst_pdata* %8, %struct.sst_pdata** %4, align 8
  %9 = load %struct.sst_acpi_priv*, %struct.sst_acpi_priv** %3, align 8
  %10 = getelementptr inbounds %struct.sst_acpi_priv, %struct.sst_acpi_priv* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @platform_device_unregister(i32 %11)
  %13 = load %struct.sst_acpi_priv*, %struct.sst_acpi_priv** %3, align 8
  %14 = getelementptr inbounds %struct.sst_acpi_priv, %struct.sst_acpi_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @IS_ERR_OR_NULL(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.sst_acpi_priv*, %struct.sst_acpi_priv** %3, align 8
  %20 = getelementptr inbounds %struct.sst_acpi_priv, %struct.sst_acpi_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @platform_device_unregister(i32 %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.sst_pdata*, %struct.sst_pdata** %4, align 8
  %25 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @release_firmware(i32 %26)
  ret i32 0
}

declare dso_local %struct.sst_acpi_priv* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_device_unregister(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @release_firmware(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
