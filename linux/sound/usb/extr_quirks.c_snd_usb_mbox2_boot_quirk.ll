; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_snd_usb_mbox2_boot_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_snd_usb_mbox2_boot_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, %struct.usb_host_config*, i32 }
%struct.usb_host_config = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MBOX2_FIRMWARE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid firmware size=%d.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Sending Digidesign Mbox 2 boot sequence...\0A\00", align 1
@MBOX2_BOOT_LOADING = common dso_local global i32 0, align 4
@MBOX2_BOOT_READY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"device not ready, resending boot sequence...\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Unknown bootresponse=%d, or timed out, ignoring device.\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"device initialised!\0A\00", align 1
@USB_DT_DEVICE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"error usb_get_descriptor: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"error usb_reset_configuration: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"mbox2_boot: new boot length = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Digidesign Mbox 2: 24bit 48kHz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*)* @snd_usb_mbox2_boot_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usb_mbox2_boot_quirk(%struct.usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb_host_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [18 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %9 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %10 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %9, i32 0, i32 1
  %11 = load %struct.usb_host_config*, %struct.usb_host_config** %10, align 8
  store %struct.usb_host_config* %11, %struct.usb_host_config** %4, align 8
  %12 = load %struct.usb_host_config*, %struct.usb_host_config** %4, align 8
  %13 = call %struct.TYPE_2__* @get_cfg_desc(%struct.usb_host_config* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le16_to_cpu(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @MBOX2_FIRMWARE_SIZE, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 0
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %117

27:                                               ; preds = %1
  %28 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %29 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %28, i32 0, i32 0
  %30 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  %31 = load i32, i32* @MBOX2_BOOT_LOADING, align 4
  %32 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 0
  store i32 %31, i32* %32, align 16
  br label %33

33:                                               ; preds = %55, %27
  %34 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 0
  %35 = load i32, i32* %34, align 16
  %36 = load i32, i32* @MBOX2_BOOT_LOADING, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 10
  br label %41

41:                                               ; preds = %38, %33
  %42 = phi i1 [ false, %33 ], [ %40, %38 ]
  br i1 %42, label %43, label %61

43:                                               ; preds = %41
  %44 = call i32 @msleep(i32 500)
  %45 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %46 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %47 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %46, i32 0)
  %48 = bitcast [18 x i32]* %6 to i32**
  %49 = call i32 @snd_usb_ctl_msg(%struct.usb_device* %45, i32 %47, i32 133, i32 192, i32 1, i32 0, i32** %48, i32 18)
  %50 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 0
  %51 = load i32, i32* %50, align 16
  %52 = load i32, i32* @MBOX2_BOOT_READY, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %61

55:                                               ; preds = %43
  %56 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %57 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %56, i32 0, i32 0
  %58 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %57, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %33

61:                                               ; preds = %54, %41
  %62 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 0
  %63 = load i32, i32* %62, align 16
  %64 = load i32, i32* @MBOX2_BOOT_READY, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %68 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 0
  %70 = load i32, i32* %69, align 16
  %71 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %117

74:                                               ; preds = %61
  %75 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %76 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %75, i32 0, i32 0
  %77 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %78 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %79 = load i32, i32* @USB_DT_DEVICE, align 4
  %80 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %81 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %80, i32 0, i32 2
  %82 = call i32 @usb_get_descriptor(%struct.usb_device* %78, i32 %79, i32 0, i32* %81, i32 4)
  store i32 %82, i32* %5, align 4
  %83 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %84 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %83, i32 0, i32 1
  %85 = load %struct.usb_host_config*, %struct.usb_host_config** %84, align 8
  store %struct.usb_host_config* %85, %struct.usb_host_config** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %74
  %89 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %90 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %89, i32 0, i32 0
  %91 = load i32, i32* %5, align 4
  %92 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %88, %74
  %94 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %95 = call i32 @usb_reset_configuration(%struct.usb_device* %94)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %100 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %99, i32 0, i32 0
  %101 = load i32, i32* %5, align 4
  %102 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %100, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %98, %93
  %104 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %105 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %104, i32 0, i32 0
  %106 = load %struct.usb_host_config*, %struct.usb_host_config** %4, align 8
  %107 = call %struct.TYPE_2__* @get_cfg_desc(%struct.usb_host_config* %106)
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @le16_to_cpu(i32 %109)
  %111 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %105, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %110)
  %112 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %113 = call i32 @mbox2_setup_48_24_magic(%struct.usb_device* %112)
  %114 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %115 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %114, i32 0, i32 0
  %116 = call i32 @dev_info(i32* %115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %103, %66, %20
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_2__* @get_cfg_desc(%struct.usb_host_config*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_usb_ctl_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32**, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_get_descriptor(%struct.usb_device*, i32, i32, i32*, i32) #1

declare dso_local i32 @usb_reset_configuration(%struct.usb_device*) #1

declare dso_local i32 @mbox2_setup_48_24_magic(%struct.usb_device*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
