; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_get_ctl_value_v1.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_get_ctl_value_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_elem_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_usb_audio* }
%struct.snd_usb_audio = type { i32 }

@USB_MIXER_S16 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"cannot get ctl value: req = %#x, wValue = %#x, wIndex = %#x, type = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_elem_info*, i32, i32, i32*)* @get_ctl_value_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ctl_value_v1(%struct.usb_mixer_elem_info* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_mixer_elem_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.snd_usb_audio*, align 8
  %11 = alloca [2 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.usb_mixer_elem_info* %0, %struct.usb_mixer_elem_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %17 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %20, align 8
  store %struct.snd_usb_audio* %21, %struct.snd_usb_audio** %10, align 8
  %22 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %23 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @USB_MIXER_S16, align 4
  %26 = icmp sge i32 %24, %25
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 2, i32 1
  store i32 %28, i32* %12, align 4
  store i32 10, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %29 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %30 = call i32 @snd_usb_lock_shutdown(%struct.snd_usb_audio* %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %101

36:                                               ; preds = %4
  br label %37

37:                                               ; preds = %85, %36
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %13, align 4
  %40 = icmp sgt i32 %38, 0
  br i1 %40, label %41, label %86

41:                                               ; preds = %37
  %42 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %43 = call i32 @snd_usb_ctrl_intf(%struct.snd_usb_audio* %42)
  %44 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %45 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = shl i32 %47, 8
  %49 = or i32 %43, %48
  store i32 %49, i32* %14, align 4
  %50 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %51 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %54 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @usb_rcvctrlpipe(i32 %55, i32 0)
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %59 = load i32, i32* @USB_TYPE_CLASS, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @USB_DIR_IN, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %14, align 4
  %65 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @snd_usb_ctl_msg(i32 %52, i32 %56, i32 %57, i32 %62, i32 %63, i32 %64, i8* %65, i32 %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %41
  %72 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %73 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @snd_usb_combine_bytes(i8* %73, i32 %74)
  %76 = call i32 @convert_signed_value(%struct.usb_mixer_elem_info* %72, i32 %75)
  %77 = load i32*, i32** %9, align 8
  store i32 %76, i32* %77, align 4
  store i32 0, i32* %15, align 4
  br label %97

78:                                               ; preds = %41
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* @ETIMEDOUT, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %97

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84
  br label %37

86:                                               ; preds = %37
  %87 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %92 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @usb_audio_dbg(%struct.snd_usb_audio* %87, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %89, i32 %90, i32 %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %15, align 4
  br label %97

97:                                               ; preds = %86, %83, %71
  %98 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %99 = call i32 @snd_usb_unlock_shutdown(%struct.snd_usb_audio* %98)
  %100 = load i32, i32* %15, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %97, %33
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @snd_usb_lock_shutdown(%struct.snd_usb_audio*) #1

declare dso_local i32 @snd_usb_ctrl_intf(%struct.snd_usb_audio*) #1

declare dso_local i32 @snd_usb_ctl_msg(i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @convert_signed_value(%struct.usb_mixer_elem_info*, i32) #1

declare dso_local i32 @snd_usb_combine_bytes(i8*, i32) #1

declare dso_local i32 @usb_audio_dbg(%struct.snd_usb_audio*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_usb_unlock_shutdown(%struct.snd_usb_audio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
