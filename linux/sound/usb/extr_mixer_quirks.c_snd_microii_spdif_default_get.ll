; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_microii_spdif_default_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_microii_spdif_default_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.usb_mixer_elem_list = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.snd_usb_audio* }
%struct.snd_usb_audio = type { i32 }
%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@UAC_GET_CUR = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@UAC_EP_CS_ATTR_SAMPLE_RATE = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_48000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_44100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_microii_spdif_default_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_microii_spdif_default_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.usb_mixer_elem_list*, align 8
  %7 = alloca %struct.snd_usb_audio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_interface*, align 8
  %10 = alloca %struct.usb_host_interface*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [3 x i8], align 1
  %13 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %15 = call %struct.usb_mixer_elem_list* @snd_kcontrol_chip(%struct.snd_kcontrol* %14)
  store %struct.usb_mixer_elem_list* %15, %struct.usb_mixer_elem_list** %6, align 8
  %16 = load %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %6, align 8
  %17 = getelementptr inbounds %struct.usb_mixer_elem_list, %struct.usb_mixer_elem_list* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %19, align 8
  store %struct.snd_usb_audio* %20, %struct.snd_usb_audio** %7, align 8
  %21 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %22 = call i32 @snd_usb_lock_shutdown(%struct.snd_usb_audio* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %140

27:                                               ; preds = %2
  %28 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %29 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 255
  %32 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %33 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %31, i32* %37, align 4
  %38 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %39 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 8
  %42 = and i32 %41, 255
  %43 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %44 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %42, i32* %48, align 4
  %49 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %50 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  store i32 0, i32* %54, align 4
  %55 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %56 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.usb_interface* @usb_ifnum_to_if(i32 %57, i32 1)
  store %struct.usb_interface* %58, %struct.usb_interface** %9, align 8
  %59 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %60 = icmp ne %struct.usb_interface* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %27
  %62 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %63 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %64, 2
  br i1 %65, label %66, label %69

66:                                               ; preds = %61, %27
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %140

69:                                               ; preds = %61
  %70 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %71 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %70, i32 0, i32 1
  %72 = load %struct.usb_host_interface*, %struct.usb_host_interface** %71, align 8
  %73 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %72, i64 1
  store %struct.usb_host_interface* %73, %struct.usb_host_interface** %10, align 8
  %74 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %75 = call %struct.TYPE_9__* @get_iface_desc(%struct.usb_host_interface* %74)
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %77, 1
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %140

82:                                               ; preds = %69
  %83 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %84 = call %struct.TYPE_10__* @get_endpoint(%struct.usb_host_interface* %83, i32 0)
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %11, align 4
  %87 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %88 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %91 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @usb_rcvctrlpipe(i32 %92, i32 0)
  %94 = load i32, i32* @UAC_GET_CUR, align 4
  %95 = load i32, i32* @USB_TYPE_CLASS, align 4
  %96 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @USB_DIR_IN, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @UAC_EP_CS_ATTR_SAMPLE_RATE, align 4
  %101 = shl i32 %100, 8
  %102 = load i32, i32* %11, align 4
  %103 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  %104 = call i32 @snd_usb_ctl_msg(i32 %89, i32 %93, i32 %94, i32 %99, i32 %101, i32 %102, i8* %103, i32 3)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %82
  br label %136

108:                                              ; preds = %82
  %109 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 1
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = shl i32 %114, 8
  %116 = or i32 %111, %115
  %117 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 2
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = shl i32 %119, 16
  %121 = or i32 %116, %120
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %13, align 4
  %123 = icmp eq i32 %122, 48000
  br i1 %123, label %124, label %126

124:                                              ; preds = %108
  %125 = load i32, i32* @IEC958_AES3_CON_FS_48000, align 4
  br label %128

126:                                              ; preds = %108
  %127 = load i32, i32* @IEC958_AES3_CON_FS_44100, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  %130 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %131 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 3
  store i32 %129, i32* %135, align 4
  store i32 0, i32* %8, align 4
  br label %136

136:                                              ; preds = %128, %107
  %137 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %138 = call i32 @snd_usb_unlock_shutdown(%struct.snd_usb_audio* %137)
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %136, %79, %66, %25
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local %struct.usb_mixer_elem_list* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_usb_lock_shutdown(%struct.snd_usb_audio*) #1

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(i32, i32) #1

declare dso_local %struct.TYPE_9__* @get_iface_desc(%struct.usb_host_interface*) #1

declare dso_local %struct.TYPE_10__* @get_endpoint(%struct.usb_host_interface*, i32) #1

declare dso_local i32 @snd_usb_ctl_msg(i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @snd_usb_unlock_shutdown(%struct.snd_usb_audio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
