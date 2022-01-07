; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_clock.c_set_sample_rate_v1.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_clock.c_set_sample_rate_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i32, %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.usb_host_interface = type { i32 }
%struct.audioformat = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@UAC_EP_CS_ATTR_SAMPLE_RATE = common dso_local global i32 0, align 4
@UAC_SET_CUR = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%d:%d: cannot set freq %d to ep %#x\0A\00", align 1
@UAC_GET_CUR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%d:%d: cannot get freq at ep %#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"current rate %d is different from the runtime rate %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_audio*, i32, %struct.usb_host_interface*, %struct.audioformat*, i32)* @set_sample_rate_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sample_rate_v1(%struct.snd_usb_audio* %0, i32 %1, %struct.usb_host_interface* %2, %struct.audioformat* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_usb_audio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_host_interface*, align 8
  %10 = alloca %struct.audioformat*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.usb_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [3 x i8], align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.usb_host_interface* %2, %struct.usb_host_interface** %9, align 8
  store %struct.audioformat* %3, %struct.audioformat** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %18 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %17, i32 0, i32 1
  %19 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  store %struct.usb_device* %19, %struct.usb_device** %12, align 8
  %20 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %21 = call %struct.TYPE_3__* @get_iface_desc(%struct.usb_host_interface* %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %144

28:                                               ; preds = %5
  %29 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %30 = call %struct.TYPE_4__* @get_endpoint(%struct.usb_host_interface* %29, i32 0)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  %33 = load %struct.audioformat*, %struct.audioformat** %10, align 8
  %34 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @UAC_EP_CS_ATTR_SAMPLE_RATE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %144

40:                                               ; preds = %28
  %41 = load i32, i32* %11, align 4
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  store i8 %42, i8* %43, align 1
  %44 = load i32, i32* %11, align 4
  %45 = ashr i32 %44, 8
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 1
  store i8 %46, i8* %47, align 1
  %48 = load i32, i32* %11, align 4
  %49 = ashr i32 %48, 16
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 2
  store i8 %50, i8* %51, align 1
  %52 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %53 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %54 = call i32 @usb_sndctrlpipe(%struct.usb_device* %53, i32 0)
  %55 = load i32, i32* @UAC_SET_CUR, align 4
  %56 = load i32, i32* @USB_TYPE_CLASS, align 4
  %57 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @USB_DIR_OUT, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @UAC_EP_CS_ATTR_SAMPLE_RATE, align 4
  %62 = shl i32 %61, 8
  %63 = load i32, i32* %13, align 4
  %64 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  %65 = call i32 @snd_usb_ctl_msg(%struct.usb_device* %52, i32 %54, i32 %55, i32 %60, i32 %62, i32 %63, i8* %64, i32 3)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %40
  %69 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %70 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %69, i32 0, i32 0
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.audioformat*, %struct.audioformat** %10, align 8
  %73 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i32 (i32*, i8*, i32, i32, i32, ...) @dev_err(i32* %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* %15, align 4
  store i32 %78, i32* %6, align 4
  br label %144

79:                                               ; preds = %40
  %80 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %81 = call i64 @snd_usb_get_sample_rate_quirk(%struct.snd_usb_audio* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 0, i32* %6, align 4
  br label %144

84:                                               ; preds = %79
  %85 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %86 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp sgt i32 %87, 2
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 0, i32* %6, align 4
  br label %144

90:                                               ; preds = %84
  %91 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %92 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %93 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %92, i32 0)
  %94 = load i32, i32* @UAC_GET_CUR, align 4
  %95 = load i32, i32* @USB_TYPE_CLASS, align 4
  %96 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @USB_DIR_IN, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @UAC_EP_CS_ATTR_SAMPLE_RATE, align 4
  %101 = shl i32 %100, 8
  %102 = load i32, i32* %13, align 4
  %103 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  %104 = call i32 @snd_usb_ctl_msg(%struct.usb_device* %91, i32 %93, i32 %94, i32 %99, i32 %101, i32 %102, i8* %103, i32 3)
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %90
  %108 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %109 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %108, i32 0, i32 0
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.audioformat*, %struct.audioformat** %10, align 8
  %112 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %13, align 4
  %115 = call i32 (i32*, i8*, i32, i32, i32, ...) @dev_err(i32* %109, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %113, i32 %114)
  %116 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %117 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  store i32 0, i32* %6, align 4
  br label %144

120:                                              ; preds = %90
  %121 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 1
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = shl i32 %126, 8
  %128 = or i32 %123, %127
  %129 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 2
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = shl i32 %131, 16
  %133 = or i32 %128, %132
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* %16, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %120
  %138 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %139 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %138, i32 0, i32 0
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* %11, align 4
  %142 = call i32 @dev_warn(i32* %139, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %137, %120
  store i32 0, i32* %6, align 4
  br label %144

144:                                              ; preds = %143, %107, %89, %83, %68, %39, %25
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local %struct.TYPE_3__* @get_iface_desc(%struct.usb_host_interface*) #1

declare dso_local %struct.TYPE_4__* @get_endpoint(%struct.usb_host_interface*, i32) #1

declare dso_local i32 @snd_usb_ctl_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32, ...) #1

declare dso_local i64 @snd_usb_get_sample_rate_quirk(%struct.snd_usb_audio*) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
