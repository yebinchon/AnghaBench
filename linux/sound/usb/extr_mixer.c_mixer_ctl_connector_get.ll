; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_mixer_ctl_connector_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_mixer_ctl_connector_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.usb_mixer_elem_info* }
%struct.usb_mixer_elem_info = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.snd_usb_audio* }
%struct.snd_usb_audio = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.uac2_connectors_ctl_blk = type { i32, i32 }
%struct.uac3_insertion_ctl_blk = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@UAC_VERSION_2 = common dso_local global i64 0, align 8
@UAC2_CS_CUR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"cannot get connectors status: req = %#x, wValue = %#x, wIndex = %#x, type = %d\0A\00", align 1
@UAC_GET_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @mixer_ctl_connector_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_ctl_connector_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.usb_mixer_elem_info*, align 8
  %7 = alloca %struct.snd_usb_audio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.uac2_connectors_ctl_blk, align 4
  %13 = alloca %struct.uac3_insertion_ctl_blk, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %15 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %14, i32 0, i32 0
  %16 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %15, align 8
  store %struct.usb_mixer_elem_info* %16, %struct.usb_mixer_elem_info** %6, align 8
  %17 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %18 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %21, align 8
  store %struct.snd_usb_audio* %22, %struct.snd_usb_audio** %7, align 8
  store i32 0, i32* %8, align 4
  %23 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %24 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 %25, 8
  store i32 %26, i32* %9, align 4
  %27 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %28 = call i64 @snd_usb_lock_shutdown(%struct.snd_usb_audio* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  br label %34

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i32 [ %32, %30 ], [ 0, %33 ]
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %109

39:                                               ; preds = %34
  %40 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %41 = call i32 @snd_usb_ctrl_intf(%struct.snd_usb_audio* %40)
  %42 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %43 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 %45, 8
  %47 = or i32 %41, %46
  store i32 %47, i32* %8, align 4
  %48 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %49 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @UAC_VERSION_2, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %39
  %57 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %58 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %61 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @usb_rcvctrlpipe(i32 %62, i32 0)
  %64 = load i32, i32* @UAC2_CS_CUR, align 4
  %65 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %66 = load i32, i32* @USB_TYPE_CLASS, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @USB_DIR_IN, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = bitcast %struct.uac2_connectors_ctl_blk* %12 to %struct.uac3_insertion_ctl_blk*
  %73 = call i32 @snd_usb_ctl_msg(i32 %59, i32 %63, i32 %64, i32 %69, i32 %70, i32 %71, %struct.uac3_insertion_ctl_blk* %72, i32 8)
  store i32 %73, i32* %10, align 4
  %74 = getelementptr inbounds %struct.uac2_connectors_ctl_blk, %struct.uac2_connectors_ctl_blk* %12, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %11, align 4
  br label %103

80:                                               ; preds = %39
  %81 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %82 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %85 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @usb_rcvctrlpipe(i32 %86, i32 0)
  %88 = load i32, i32* @UAC2_CS_CUR, align 4
  %89 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %90 = load i32, i32* @USB_TYPE_CLASS, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @USB_DIR_IN, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @snd_usb_ctl_msg(i32 %83, i32 %87, i32 %88, i32 %93, i32 %94, i32 %95, %struct.uac3_insertion_ctl_blk* %13, i32 8)
  store i32 %96, i32* %10, align 4
  %97 = getelementptr inbounds %struct.uac3_insertion_ctl_blk, %struct.uac3_insertion_ctl_blk* %13, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %80, %56
  %104 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %105 = call i32 @snd_usb_unlock_shutdown(%struct.snd_usb_audio* %104)
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %103
  br label %109

109:                                              ; preds = %108, %38
  %110 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %111 = load i32, i32* @UAC_GET_CUR, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %115 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @usb_audio_err(%struct.snd_usb_audio* %110, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %111, i32 %112, i32 %113, i32 %116)
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %3, align 4
  br label %127

119:                                              ; preds = %103
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %122 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 %120, i32* %126, align 4
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %119, %109
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i64 @snd_usb_lock_shutdown(%struct.snd_usb_audio*) #1

declare dso_local i32 @snd_usb_ctrl_intf(%struct.snd_usb_audio*) #1

declare dso_local i32 @snd_usb_ctl_msg(i32, i32, i32, i32, i32, i32, %struct.uac3_insertion_ctl_blk*, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @snd_usb_unlock_shutdown(%struct.snd_usb_audio*) #1

declare dso_local i32 @usb_audio_err(%struct.snd_usb_audio*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
