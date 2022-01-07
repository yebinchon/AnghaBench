; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hda_bus_type.c_hda_bus_match.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hda_bus_type.c_hda_bus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.hdac_device = type { i64 }
%struct.hdac_driver = type { i64, i32 (%struct.hdac_device.0*, %struct.hdac_driver*)* }
%struct.hdac_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @hda_bus_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_bus_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.hdac_device*, align 8
  %7 = alloca %struct.hdac_driver*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.hdac_device* @dev_to_hdac_dev(%struct.device* %8)
  store %struct.hdac_device* %9, %struct.hdac_device** %6, align 8
  %10 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %11 = call %struct.hdac_driver* @drv_to_hdac_driver(%struct.device_driver* %10)
  store %struct.hdac_driver* %11, %struct.hdac_driver** %7, align 8
  %12 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %13 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.hdac_driver*, %struct.hdac_driver** %7, align 8
  %16 = getelementptr inbounds %struct.hdac_driver, %struct.hdac_driver* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

20:                                               ; preds = %2
  %21 = load %struct.hdac_driver*, %struct.hdac_driver** %7, align 8
  %22 = getelementptr inbounds %struct.hdac_driver, %struct.hdac_driver* %21, i32 0, i32 1
  %23 = load i32 (%struct.hdac_device.0*, %struct.hdac_driver*)*, i32 (%struct.hdac_device.0*, %struct.hdac_driver*)** %22, align 8
  %24 = icmp ne i32 (%struct.hdac_device.0*, %struct.hdac_driver*)* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.hdac_driver*, %struct.hdac_driver** %7, align 8
  %27 = getelementptr inbounds %struct.hdac_driver, %struct.hdac_driver* %26, i32 0, i32 1
  %28 = load i32 (%struct.hdac_device.0*, %struct.hdac_driver*)*, i32 (%struct.hdac_device.0*, %struct.hdac_driver*)** %27, align 8
  %29 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %30 = bitcast %struct.hdac_device* %29 to %struct.hdac_device.0*
  %31 = load %struct.hdac_driver*, %struct.hdac_driver** %7, align 8
  %32 = call i32 %28(%struct.hdac_device.0* %30, %struct.hdac_driver* %31)
  store i32 %32, i32* %3, align 4
  br label %37

33:                                               ; preds = %20
  %34 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %35 = load %struct.hdac_driver*, %struct.hdac_driver** %7, align 8
  %36 = call i32 @hdac_codec_match(%struct.hdac_device* %34, %struct.hdac_driver* %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %25, %19
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.hdac_device* @dev_to_hdac_dev(%struct.device*) #1

declare dso_local %struct.hdac_driver* @drv_to_hdac_driver(%struct.device_driver*) #1

declare dso_local i32 @hdac_codec_match(%struct.hdac_device*, %struct.hdac_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
