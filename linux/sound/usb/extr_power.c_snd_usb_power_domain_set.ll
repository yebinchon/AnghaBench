; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_power.c_snd_usb_power_domain_set.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_power.c_snd_usb_power_domain_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.snd_usb_power_domain = type { i32, i32, i32 }

@UAC2_CS_CUR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@UAC3_AC_POWER_DOMAIN_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Can't get UAC3 power state for id %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"UAC3 power domain id %d already in state %d\0A\00", align 1
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Can't set UAC3 power state to %d for id %d\0A\00", align 1
@UAC3_PD_STATE_D0 = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"UAC3 power domain id %d change to state %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_usb_power_domain_set(%struct.snd_usb_audio* %0, %struct.snd_usb_power_domain* %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_usb_audio*, align 8
  %6 = alloca %struct.snd_usb_power_domain*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %5, align 8
  store %struct.snd_usb_power_domain* %1, %struct.snd_usb_power_domain** %6, align 8
  store i8 %2, i8* %7, align 1
  %12 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %13 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %12, i32 0, i32 0
  %14 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  store %struct.usb_device* %14, %struct.usb_device** %8, align 8
  %15 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %16 = call i32 @snd_usb_ctrl_intf(%struct.snd_usb_audio* %15)
  %17 = load %struct.snd_usb_power_domain*, %struct.snd_usb_power_domain** %6, align 8
  %18 = getelementptr inbounds %struct.snd_usb_power_domain, %struct.snd_usb_power_domain* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 8
  %21 = or i32 %16, %20
  store i32 %21, i32* %11, align 4
  %22 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %23 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %22, i32 0, i32 0
  %24 = load %struct.usb_device*, %struct.usb_device** %23, align 8
  %25 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %26 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %25, i32 0, i32 0
  %27 = load %struct.usb_device*, %struct.usb_device** %26, align 8
  %28 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %27, i32 0)
  %29 = load i32, i32* @UAC2_CS_CUR, align 4
  %30 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %31 = load i32, i32* @USB_TYPE_CLASS, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @USB_DIR_IN, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @UAC3_AC_POWER_DOMAIN_CONTROL, align 4
  %36 = shl i32 %35, 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @snd_usb_ctl_msg(%struct.usb_device* %24, i32 %28, i32 %29, i32 %34, i32 %36, i32 %37, i8* %9, i32 1)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %3
  %42 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %43 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %42, i32 0, i32 0
  %44 = load %struct.snd_usb_power_domain*, %struct.snd_usb_power_domain** %6, align 8
  %45 = getelementptr inbounds %struct.snd_usb_power_domain, %struct.snd_usb_power_domain* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = trunc i32 %46 to i8
  %48 = call i32 (i32*, i8*, i8, ...) @dev_err(i32* %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8 zeroext %47)
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %126

50:                                               ; preds = %3
  %51 = load i8, i8* %9, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* %7, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %58 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %57, i32 0, i32 0
  %59 = load %struct.snd_usb_power_domain*, %struct.snd_usb_power_domain** %6, align 8
  %60 = getelementptr inbounds %struct.snd_usb_power_domain, %struct.snd_usb_power_domain* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i8, i8* %7, align 1
  %63 = call i32 @dev_dbg(i32* %58, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %61, i8 zeroext %62)
  store i32 0, i32* %4, align 4
  br label %126

64:                                               ; preds = %50
  %65 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %66 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %65, i32 0, i32 0
  %67 = load %struct.usb_device*, %struct.usb_device** %66, align 8
  %68 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %69 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %68, i32 0, i32 0
  %70 = load %struct.usb_device*, %struct.usb_device** %69, align 8
  %71 = call i32 @usb_sndctrlpipe(%struct.usb_device* %70, i32 0)
  %72 = load i32, i32* @UAC2_CS_CUR, align 4
  %73 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %74 = load i32, i32* @USB_TYPE_CLASS, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @USB_DIR_OUT, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @UAC3_AC_POWER_DOMAIN_CONTROL, align 4
  %79 = shl i32 %78, 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @snd_usb_ctl_msg(%struct.usb_device* %67, i32 %71, i32 %72, i32 %77, i32 %79, i32 %80, i8* %7, i32 1)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %64
  %85 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %86 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %85, i32 0, i32 0
  %87 = load i8, i8* %7, align 1
  %88 = load %struct.snd_usb_power_domain*, %struct.snd_usb_power_domain** %6, align 8
  %89 = getelementptr inbounds %struct.snd_usb_power_domain, %struct.snd_usb_power_domain* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i32*, i8*, i8, ...) @dev_err(i32* %86, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %87, i32 %90)
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %4, align 4
  br label %126

93:                                               ; preds = %64
  %94 = load i8, i8* %7, align 1
  %95 = zext i8 %94 to i32
  %96 = load i8, i8* @UAC3_PD_STATE_D0, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %118

99:                                               ; preds = %93
  %100 = load i8, i8* %9, align 1
  %101 = zext i8 %100 to i32
  switch i32 %101, label %114 [
    i32 128, label %102
    i32 129, label %108
  ]

102:                                              ; preds = %99
  %103 = load %struct.snd_usb_power_domain*, %struct.snd_usb_power_domain** %6, align 8
  %104 = getelementptr inbounds %struct.snd_usb_power_domain, %struct.snd_usb_power_domain* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %105, 50
  %107 = call i32 @udelay(i32 %106)
  br label %117

108:                                              ; preds = %99
  %109 = load %struct.snd_usb_power_domain*, %struct.snd_usb_power_domain** %6, align 8
  %110 = getelementptr inbounds %struct.snd_usb_power_domain, %struct.snd_usb_power_domain* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %111, 50
  %113 = call i32 @udelay(i32 %112)
  br label %117

114:                                              ; preds = %99
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %126

117:                                              ; preds = %108, %102
  br label %118

118:                                              ; preds = %117, %93
  %119 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %120 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %119, i32 0, i32 0
  %121 = load %struct.snd_usb_power_domain*, %struct.snd_usb_power_domain** %6, align 8
  %122 = getelementptr inbounds %struct.snd_usb_power_domain, %struct.snd_usb_power_domain* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i8, i8* %7, align 1
  %125 = call i32 @dev_dbg(i32* %120, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %123, i8 zeroext %124)
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %118, %114, %84, %56, %41
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @snd_usb_ctrl_intf(%struct.snd_usb_audio*) #1

declare dso_local i32 @snd_usb_ctl_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8 zeroext, ...) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i8 zeroext) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
