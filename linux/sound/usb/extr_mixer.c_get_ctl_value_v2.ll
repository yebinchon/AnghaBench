; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_get_ctl_value_v2.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_get_ctl_value_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_elem_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_usb_audio* }
%struct.snd_usb_audio = type { i32 }

@UAC2_CS_CUR = common dso_local global i32 0, align 4
@UAC2_CS_RANGE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"cannot get ctl value: req = %#x, wValue = %#x, wIndex = %#x, type = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_elem_info*, i32, i32, i32*)* @get_ctl_value_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ctl_value_v2(%struct.usb_mixer_elem_info* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_mixer_elem_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.snd_usb_audio*, align 8
  %11 = alloca [16 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.usb_mixer_elem_info* %0, %struct.usb_mixer_elem_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %19 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %22, align 8
  store %struct.snd_usb_audio* %23, %struct.snd_usb_audio** %10, align 8
  store i32 0, i32* %13, align 4
  %24 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %25 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @uac2_ctl_value_size(i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 131
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @UAC2_CS_CUR, align 4
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %15, align 4
  store i32 %32, i32* %16, align 4
  br label %40

33:                                               ; preds = %4
  %34 = load i32, i32* @UAC2_CS_RANGE, align 4
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %15, align 4
  %36 = mul nsw i32 3, %35
  %37 = sext i32 %36 to i64
  %38 = add i64 4, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %16, align 4
  br label %40

40:                                               ; preds = %33, %30
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %42 = call i32 @memset(i8* %41, i32 0, i32 16)
  %43 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %44 = call i64 @snd_usb_lock_shutdown(%struct.snd_usb_audio* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  br label %50

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %46
  %51 = phi i32 [ %48, %46 ], [ 0, %49 ]
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %87

55:                                               ; preds = %50
  %56 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %57 = call i32 @snd_usb_ctrl_intf(%struct.snd_usb_audio* %56)
  %58 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %59 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 %61, 8
  %63 = or i32 %57, %62
  store i32 %63, i32* %13, align 4
  %64 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %65 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %68 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @usb_rcvctrlpipe(i32 %69, i32 0)
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %73 = load i32, i32* @USB_TYPE_CLASS, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @USB_DIR_IN, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %13, align 4
  %79 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @snd_usb_ctl_msg(i32 %66, i32 %70, i32 %71, i32 %76, i32 %77, i32 %78, i8* %79, i32 %80)
  store i32 %81, i32* %14, align 4
  %82 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %83 = call i32 @snd_usb_unlock_shutdown(%struct.snd_usb_audio* %82)
  %84 = load i32, i32* %14, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %55
  br label %87

87:                                               ; preds = %86, %54
  %88 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %93 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @usb_audio_err(%struct.snd_usb_audio* %88, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %90, i32 %91, i32 %94)
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %5, align 4
  br label %127

97:                                               ; preds = %55
  %98 = load i32, i32* %7, align 4
  switch i32 %98, label %117 [
    i32 131, label %99
    i32 129, label %101
    i32 130, label %104
    i32 128, label %110
  ]

99:                                               ; preds = %97
  %100 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  store i8* %100, i8** %12, align 8
  br label %120

101:                                              ; preds = %97
  %102 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %103 = getelementptr inbounds i8, i8* %102, i64 4
  store i8* %103, i8** %12, align 8
  br label %120

104:                                              ; preds = %97
  %105 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %106 = getelementptr inbounds i8, i8* %105, i64 4
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  store i8* %109, i8** %12, align 8
  br label %120

110:                                              ; preds = %97
  %111 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %112 = getelementptr inbounds i8, i8* %111, i64 4
  %113 = load i32, i32* %15, align 4
  %114 = mul nsw i32 %113, 2
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %112, i64 %115
  store i8* %116, i8** %12, align 8
  br label %120

117:                                              ; preds = %97
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %5, align 4
  br label %127

120:                                              ; preds = %110, %104, %101, %99
  %121 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = load i32, i32* %15, align 4
  %124 = call i32 @snd_usb_combine_bytes(i8* %122, i32 %123)
  %125 = call i32 @convert_signed_value(%struct.usb_mixer_elem_info* %121, i32 %124)
  %126 = load i32*, i32** %9, align 8
  store i32 %125, i32* %126, align 4
  store i32 0, i32* %5, align 4
  br label %127

127:                                              ; preds = %120, %117, %87
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i32 @uac2_ctl_value_size(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @snd_usb_lock_shutdown(%struct.snd_usb_audio*) #1

declare dso_local i32 @snd_usb_ctrl_intf(%struct.snd_usb_audio*) #1

declare dso_local i32 @snd_usb_ctl_msg(i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @snd_usb_unlock_shutdown(%struct.snd_usb_audio*) #1

declare dso_local i32 @usb_audio_err(%struct.snd_usb_audio*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @convert_signed_value(%struct.usb_mixer_elem_info*, i32) #1

declare dso_local i32 @snd_usb_combine_bytes(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
