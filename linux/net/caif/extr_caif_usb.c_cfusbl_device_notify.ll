; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_caif_usb.c_cfusbl_device_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_caif_usb.c_cfusbl_device_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.notifier_block = type { i32 }
%struct.net_device = type { i32, i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.caif_dev_common = type { i32, i32, i32, i32*, i32 }
%struct.cflayer = type { i32 }
%struct.usbnet = type { %struct.usb_device* }
%struct.usb_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"cdc_ncm\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"USB CDC NCM device VID:0x%4x PID:0x%4x\0A\00", align 1
@STE_USB_VID = common dso_local global i64 0, align 8
@STE_USB_PID_CAIF = common dso_local global i64 0, align 8
@NETDEV_UNREGISTER = common dso_local global i64 0, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@NETDEV_REGISTER = common dso_local global i64 0, align 8
@CAIF_LINK_HIGH_BANDW = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"USB device uses more than one tx queue\0A\00", align 1
@CFUSB_MAX_HEADLEN = common dso_local global i32 0, align 4
@caif_usb_type = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@pack_added = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @cfusbl_device_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfusbl_device_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.caif_dev_common, align 8
  %10 = alloca %struct.cflayer*, align 8
  %11 = alloca %struct.cflayer*, align 8
  %12 = alloca %struct.usbnet*, align 8
  %13 = alloca %struct.usb_device*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %14)
  store %struct.net_device* %15, %struct.net_device** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %40

21:                                               ; preds = %3
  %22 = load %struct.net_device*, %struct.net_device** %8, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %21
  %30 = load %struct.net_device*, %struct.net_device** %8, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @strcmp(i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %29, %21, %3
  store i32 0, i32* %4, align 4
  br label %135

41:                                               ; preds = %29
  %42 = load %struct.net_device*, %struct.net_device** %8, align 8
  %43 = call %struct.usbnet* @netdev_priv(%struct.net_device* %42)
  store %struct.usbnet* %43, %struct.usbnet** %12, align 8
  %44 = load %struct.usbnet*, %struct.usbnet** %12, align 8
  %45 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %44, i32 0, i32 0
  %46 = load %struct.usb_device*, %struct.usb_device** %45, align 8
  store %struct.usb_device* %46, %struct.usb_device** %13, align 8
  %47 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %48 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @le16_to_cpu(i32 %50)
  %52 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %53 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @le16_to_cpu(i32 %55)
  %57 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %51, i64 %56)
  %58 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %59 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @le16_to_cpu(i32 %61)
  %63 = load i64, i64* @STE_USB_VID, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %41
  %66 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %67 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @le16_to_cpu(i32 %69)
  %71 = load i64, i64* @STE_USB_PID_CAIF, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %74, label %73

73:                                               ; preds = %65, %41
  store i32 0, i32* %4, align 4
  br label %135

74:                                               ; preds = %65
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @NETDEV_UNREGISTER, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* @THIS_MODULE, align 4
  %80 = call i32 @module_put(i32 %79)
  br label %81

81:                                               ; preds = %78, %74
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* @NETDEV_REGISTER, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %135

86:                                               ; preds = %81
  %87 = load i32, i32* @THIS_MODULE, align 4
  %88 = call i32 @__module_get(i32 %87)
  %89 = call i32 @memset(%struct.caif_dev_common* %9, i32 0, i32 32)
  %90 = getelementptr inbounds %struct.caif_dev_common, %struct.caif_dev_common* %9, i32 0, i32 0
  store i32 0, i32* %90, align 8
  %91 = getelementptr inbounds %struct.caif_dev_common, %struct.caif_dev_common* %9, i32 0, i32 1
  store i32 0, i32* %91, align 4
  %92 = getelementptr inbounds %struct.caif_dev_common, %struct.caif_dev_common* %9, i32 0, i32 2
  store i32 0, i32* %92, align 8
  %93 = load i32, i32* @CAIF_LINK_HIGH_BANDW, align 4
  %94 = getelementptr inbounds %struct.caif_dev_common, %struct.caif_dev_common* %9, i32 0, i32 4
  store i32 %93, i32* %94, align 8
  %95 = getelementptr inbounds %struct.caif_dev_common, %struct.caif_dev_common* %9, i32 0, i32 3
  store i32* null, i32** %95, align 8
  %96 = load %struct.net_device*, %struct.net_device** %8, align 8
  %97 = getelementptr inbounds %struct.net_device, %struct.net_device* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.net_device*, %struct.net_device** %8, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.net_device*, %struct.net_device** %8, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call %struct.cflayer* @cfusbl_create(i32 %98, i32 %101, i32 %104)
  store %struct.cflayer* %105, %struct.cflayer** %11, align 8
  %106 = load %struct.cflayer*, %struct.cflayer** %11, align 8
  %107 = icmp ne %struct.cflayer* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %86
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %4, align 4
  br label %135

111:                                              ; preds = %86
  %112 = load %struct.net_device*, %struct.net_device** %8, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp sgt i32 %114, 1
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %111
  %119 = load %struct.net_device*, %struct.net_device** %8, align 8
  %120 = load %struct.cflayer*, %struct.cflayer** %11, align 8
  %121 = load i32, i32* @CFUSB_MAX_HEADLEN, align 4
  %122 = call i32 @caif_enroll_dev(%struct.net_device* %119, %struct.caif_dev_common* %9, %struct.cflayer* %120, i32 %121, %struct.cflayer** %10, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @caif_usb_type, i32 0, i32 0))
  %123 = load i32, i32* @pack_added, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %118
  %126 = call i32 @dev_add_pack(%struct.TYPE_11__* @caif_usb_type)
  br label %127

127:                                              ; preds = %125, %118
  store i32 1, i32* @pack_added, align 4
  %128 = load %struct.cflayer*, %struct.cflayer** %10, align 8
  %129 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.net_device*, %struct.net_device** %8, align 8
  %132 = getelementptr inbounds %struct.net_device, %struct.net_device* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @strlcpy(i32 %130, i32 %133, i32 4)
  store i32 0, i32* %4, align 4
  br label %135

135:                                              ; preds = %127, %108, %85, %73, %40
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @memset(%struct.caif_dev_common*, i32, i32) #1

declare dso_local %struct.cflayer* @cfusbl_create(i32, i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @caif_enroll_dev(%struct.net_device*, %struct.caif_dev_common*, %struct.cflayer*, i32, %struct.cflayer**, i32*) #1

declare dso_local i32 @dev_add_pack(%struct.TYPE_11__*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
