; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usbusx2y.c_usX2Y_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usbusx2y.c_usX2Y_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.snd_card = type { i32 }

@USB_ID_US122 = common dso_local global i32 0, align 4
@USB_ID_US224 = common dso_local global i32 0, align 4
@USB_ID_US428 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.usb_interface*, %struct.usb_device_id*, %struct.snd_card**)* @usX2Y_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usX2Y_usb_probe(%struct.usb_device* %0, %struct.usb_interface* %1, %struct.usb_device_id* %2, %struct.snd_card** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca %struct.usb_device_id*, align 8
  %9 = alloca %struct.snd_card**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_card*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %6, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %7, align 8
  store %struct.usb_device_id* %2, %struct.usb_device_id** %8, align 8
  store %struct.snd_card** %3, %struct.snd_card*** %9, align 8
  %12 = load %struct.snd_card**, %struct.snd_card*** %9, align 8
  store %struct.snd_card* null, %struct.snd_card** %12, align 8
  %13 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le16_to_cpu(i32 %16)
  %18 = icmp ne i32 %17, 5636
  br i1 %18, label %43, label %19

19:                                               ; preds = %4
  %20 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %21 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le16_to_cpu(i32 %23)
  %25 = load i32, i32* @USB_ID_US122, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %19
  %28 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %29 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  %33 = load i32, i32* @USB_ID_US224, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %27
  %36 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %37 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le16_to_cpu(i32 %39)
  %41 = load i32, i32* @USB_ID_US428, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %35, %4
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %70

46:                                               ; preds = %35, %27, %19
  %47 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %48 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %49 = call i32 @usX2Y_create_card(%struct.usb_device* %47, %struct.usb_interface* %48, %struct.snd_card** %11)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %70

54:                                               ; preds = %46
  %55 = load %struct.snd_card*, %struct.snd_card** %11, align 8
  %56 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %57 = call i32 @usX2Y_hwdep_new(%struct.snd_card* %55, %struct.usb_device* %56)
  store i32 %57, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = load %struct.snd_card*, %struct.snd_card** %11, align 8
  %61 = call i32 @snd_card_register(%struct.snd_card* %60)
  store i32 %61, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59, %54
  %64 = load %struct.snd_card*, %struct.snd_card** %11, align 8
  %65 = call i32 @snd_card_free(%struct.snd_card* %64)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %5, align 4
  br label %70

67:                                               ; preds = %59
  %68 = load %struct.snd_card*, %struct.snd_card** %11, align 8
  %69 = load %struct.snd_card**, %struct.snd_card*** %9, align 8
  store %struct.snd_card* %68, %struct.snd_card** %69, align 8
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %67, %63, %52, %43
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usX2Y_create_card(%struct.usb_device*, %struct.usb_interface*, %struct.snd_card**) #1

declare dso_local i32 @usX2Y_hwdep_new(%struct.snd_card*, %struct.usb_device*) #1

declare dso_local i32 @snd_card_register(%struct.snd_card*) #1

declare dso_local i32 @snd_card_free(%struct.snd_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
