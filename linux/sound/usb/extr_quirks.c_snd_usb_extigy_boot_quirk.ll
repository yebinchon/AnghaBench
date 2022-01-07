; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_snd_usb_extigy_boot_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_snd_usb_extigy_boot_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, %struct.usb_host_config*, i32 }
%struct.usb_host_config = type { i32 }
%struct.usb_interface = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EXTIGY_FIRMWARE_SIZE_OLD = common dso_local global i32 0, align 4
@EXTIGY_FIRMWARE_SIZE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"sending Extigy boot sequence...\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"error sending boot message: %d\0A\00", align 1
@USB_DT_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"error usb_get_descriptor: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"error usb_reset_configuration: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"extigy_boot: new boot length = %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.usb_interface*)* @snd_usb_extigy_boot_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usb_extigy_boot_quirk(%struct.usb_device* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.usb_host_config*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %8 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %9 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 1
  %10 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  store %struct.usb_host_config* %10, %struct.usb_host_config** %6, align 8
  %11 = load %struct.usb_host_config*, %struct.usb_host_config** %6, align 8
  %12 = call %struct.TYPE_2__* @get_cfg_desc(%struct.usb_host_config* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le16_to_cpu(i32 %14)
  %16 = load i32, i32* @EXTIGY_FIRMWARE_SIZE_OLD, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %2
  %19 = load %struct.usb_host_config*, %struct.usb_host_config** %6, align 8
  %20 = call %struct.TYPE_2__* @get_cfg_desc(%struct.usb_host_config* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le16_to_cpu(i32 %22)
  %24 = load i32, i32* @EXTIGY_FIRMWARE_SIZE_NEW, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %78

26:                                               ; preds = %18, %2
  %27 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %28 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %27, i32 0, i32 0
  %29 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %31 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %32 = call i32 @usb_sndctrlpipe(%struct.usb_device* %31, i32 0)
  %33 = call i32 @snd_usb_ctl_msg(%struct.usb_device* %30, i32 %32, i32 16, i32 67, i32 1, i32 10, i32* null, i32 0)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %38 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %37, i32 0, i32 0
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %36, %26
  %42 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %43 = load i32, i32* @USB_DT_DEVICE, align 4
  %44 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %45 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %44, i32 0, i32 2
  %46 = call i32 @usb_get_descriptor(%struct.usb_device* %42, i32 %43, i32 0, i32* %45, i32 4)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %48 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %47, i32 0, i32 1
  %49 = load %struct.usb_host_config*, %struct.usb_host_config** %48, align 8
  store %struct.usb_host_config* %49, %struct.usb_host_config** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %41
  %53 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %54 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %53, i32 0, i32 0
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %52, %41
  %58 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %59 = call i32 @usb_reset_configuration(%struct.usb_device* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %64 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %63, i32 0, i32 0
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %69 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %68, i32 0, i32 0
  %70 = load %struct.usb_host_config*, %struct.usb_host_config** %6, align 8
  %71 = call %struct.TYPE_2__* @get_cfg_desc(%struct.usb_host_config* %70)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le16_to_cpu(i32 %73)
  %75 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %79

78:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %67
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_2__* @get_cfg_desc(%struct.usb_host_config*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @snd_usb_ctl_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_get_descriptor(%struct.usb_device*, i32, i32, i32*, i32) #1

declare dso_local i32 @usb_reset_configuration(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
