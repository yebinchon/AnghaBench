; ModuleID = '/home/carl/AnghaBench/linux/net/rfkill/extr_rfkill-gpio.c_rfkill_gpio_acpi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/net/rfkill/extr_rfkill-gpio.c_rfkill_gpio_acpi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rfkill_gpio_data = type { i32 }
%struct.acpi_device_id = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@acpi_rfkill_default_gpios = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rfkill_gpio_data*)* @rfkill_gpio_acpi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfkill_gpio_acpi_probe(%struct.device* %0, %struct.rfkill_gpio_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rfkill_gpio_data*, align 8
  %6 = alloca %struct.acpi_device_id*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rfkill_gpio_data* %1, %struct.rfkill_gpio_data** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.acpi_device_id* @acpi_match_device(i32 %11, %struct.device* %12)
  store %struct.acpi_device_id* %13, %struct.acpi_device_id** %6, align 8
  %14 = load %struct.acpi_device_id*, %struct.acpi_device_id** %6, align 8
  %15 = icmp ne %struct.acpi_device_id* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %29

19:                                               ; preds = %2
  %20 = load %struct.acpi_device_id*, %struct.acpi_device_id** %6, align 8
  %21 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %5, align 8
  %25 = getelementptr inbounds %struct.rfkill_gpio_data, %struct.rfkill_gpio_data* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load i32, i32* @acpi_rfkill_default_gpios, align 4
  %28 = call i32 @devm_acpi_dev_add_driver_gpios(%struct.device* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %19, %16
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.acpi_device_id* @acpi_match_device(i32, %struct.device*) #1

declare dso_local i32 @devm_acpi_dev_add_driver_gpios(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
