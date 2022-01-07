; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_snd_usb_mixer_set_ctl_value.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_snd_usb_mixer_set_ctl_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_elem_info = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.snd_usb_audio* }
%struct.snd_usb_audio = type { i32 }

@UAC_VERSION_1 = common dso_local global i64 0, align 8
@USB_MIXER_S16 = common dso_local global i32 0, align 4
@UAC_SET_CUR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"RANGE setting not yet supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UAC2_CS_CUR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [88 x i8] c"cannot set ctl value: req = %#x, wValue = %#x, wIndex = %#x, type = %d, data = %#x/%#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_usb_mixer_set_ctl_value(%struct.usb_mixer_elem_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_mixer_elem_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_usb_audio*, align 8
  %11 = alloca [4 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.usb_mixer_elem_info* %0, %struct.usb_mixer_elem_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %17 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %20, align 8
  store %struct.snd_usb_audio* %21, %struct.snd_usb_audio** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 10, i32* %15, align 4
  %22 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %23 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %30 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @UAC_VERSION_1, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %4
  %38 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %39 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @USB_MIXER_S16, align 4
  %42 = icmp sge i32 %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 2, i32 1
  store i32 %44, i32* %13, align 4
  br label %60

45:                                               ; preds = %4
  %46 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %47 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @uac2_ctl_value_size(i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @UAC_SET_CUR, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %55 = call i32 (%struct.snd_usb_audio*, i8*, ...) @usb_audio_dbg(%struct.snd_usb_audio* %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %154

58:                                               ; preds = %45
  %59 = load i32, i32* @UAC2_CS_CUR, align 4
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %58, %37
  %61 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @convert_bytes_value(%struct.usb_mixer_elem_info* %61, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = and i32 %64, 255
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  store i8 %66, i8* %67, align 1
  %68 = load i32, i32* %9, align 4
  %69 = ashr i32 %68, 8
  %70 = and i32 %69, 255
  %71 = trunc i32 %70 to i8
  %72 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 1
  store i8 %71, i8* %72, align 1
  %73 = load i32, i32* %9, align 4
  %74 = ashr i32 %73, 16
  %75 = and i32 %74, 255
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 2
  store i8 %76, i8* %77, align 1
  %78 = load i32, i32* %9, align 4
  %79 = ashr i32 %78, 24
  %80 = and i32 %79, 255
  %81 = trunc i32 %80 to i8
  %82 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 3
  store i8 %81, i8* %82, align 1
  %83 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %84 = call i32 @snd_usb_lock_shutdown(%struct.snd_usb_audio* %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %60
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %154

90:                                               ; preds = %60
  br label %91

91:                                               ; preds = %132, %90
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %15, align 4
  %94 = icmp sgt i32 %92, 0
  br i1 %94, label %95, label %133

95:                                               ; preds = %91
  %96 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %97 = call i32 @snd_usb_ctrl_intf(%struct.snd_usb_audio* %96)
  %98 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %99 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = shl i32 %101, 8
  %103 = or i32 %97, %102
  store i32 %103, i32* %12, align 4
  %104 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %105 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %108 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @usb_sndctrlpipe(i32 %109, i32 0)
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %113 = load i32, i32* @USB_TYPE_CLASS, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @USB_DIR_OUT, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %12, align 4
  %119 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @snd_usb_ctl_msg(i32 %106, i32 %110, i32 %111, i32 %116, i32 %117, i32 %118, i8* %119, i32 %120)
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = icmp sge i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %95
  store i32 0, i32* %14, align 4
  br label %150

125:                                              ; preds = %95
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* @ETIMEDOUT, align 4
  %128 = sub nsw i32 0, %127
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %150

131:                                              ; preds = %125
  br label %132

132:                                              ; preds = %131
  br label %91

133:                                              ; preds = %91
  %134 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %139 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 1
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = call i32 (%struct.snd_usb_audio*, i8*, ...) @usb_audio_dbg(%struct.snd_usb_audio* %134, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 %135, i32 %136, i32 %137, i32 %140, i32 %143, i32 %146)
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %14, align 4
  br label %150

150:                                              ; preds = %133, %130, %124
  %151 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %152 = call i32 @snd_usb_unlock_shutdown(%struct.snd_usb_audio* %151)
  %153 = load i32, i32* %14, align 4
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %150, %87, %53
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i32 @uac2_ctl_value_size(i32) #1

declare dso_local i32 @usb_audio_dbg(%struct.snd_usb_audio*, i8*, ...) #1

declare dso_local i32 @convert_bytes_value(%struct.usb_mixer_elem_info*, i32) #1

declare dso_local i32 @snd_usb_lock_shutdown(%struct.snd_usb_audio*) #1

declare dso_local i32 @snd_usb_ctrl_intf(%struct.snd_usb_audio*) #1

declare dso_local i32 @snd_usb_ctl_msg(i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @snd_usb_unlock_shutdown(%struct.snd_usb_audio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
