; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_mbox1_switch_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_mbox1_switch_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { %struct.snd_usb_audio* }
%struct.snd_usb_audio = type { i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*, i32)* @snd_mbox1_switch_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mbox1_switch_update(%struct.usb_mixer_interface* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_mixer_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_usb_audio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x i8], align 1
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %10 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %9, i32 0, i32 0
  %11 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  store %struct.snd_usb_audio* %11, %struct.snd_usb_audio** %6, align 8
  %12 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %13 = call i32 @snd_usb_lock_shutdown(%struct.snd_usb_audio* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %122

18:                                               ; preds = %2
  %19 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %20 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %23 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @usb_rcvctrlpipe(i32 %24, i32 0)
  %26 = load i32, i32* @USB_DIR_IN, align 4
  %27 = load i32, i32* @USB_TYPE_CLASS, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %30 = or i32 %28, %29
  %31 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %32 = call i32 @snd_usb_ctl_msg(i32 %21, i32 %25, i32 129, i32 %30, i32 0, i32 1280, i8* %31, i32 1)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %18
  br label %118

36:                                               ; preds = %18
  %37 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %38 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %41 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @usb_rcvctrlpipe(i32 %42, i32 0)
  %44 = load i32, i32* @USB_DIR_IN, align 4
  %45 = load i32, i32* @USB_TYPE_CLASS, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %48 = or i32 %46, %47
  %49 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %50 = call i32 @snd_usb_ctl_msg(i32 %39, i32 %43, i32 129, i32 %48, i32 256, i32 129, i8* %49, i32 3)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %36
  br label %118

54:                                               ; preds = %36
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  store i8 -128, i8* %58, align 1
  %59 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 1
  store i8 -69, i8* %59, align 1
  %60 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 2
  store i8 0, i8* %60, align 1
  br label %65

61:                                               ; preds = %54
  %62 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 2
  store i8 0, i8* %62, align 1
  %63 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 1
  store i8 0, i8* %63, align 1
  %64 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %64, align 1
  br label %65

65:                                               ; preds = %61, %57
  %66 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %67 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %70 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @usb_sndctrlpipe(i32 %71, i32 0)
  %73 = load i32, i32* @USB_TYPE_CLASS, align 4
  %74 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %75 = or i32 %73, %74
  %76 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %77 = call i32 @snd_usb_ctl_msg(i32 %68, i32 %72, i32 1, i32 %75, i32 256, i32 129, i8* %76, i32 3)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %65
  br label %118

81:                                               ; preds = %65
  %82 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %83 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %86 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @usb_rcvctrlpipe(i32 %87, i32 0)
  %89 = load i32, i32* @USB_DIR_IN, align 4
  %90 = load i32, i32* @USB_TYPE_CLASS, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %93 = or i32 %91, %92
  %94 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %95 = call i32 @snd_usb_ctl_msg(i32 %84, i32 %88, i32 129, i32 %93, i32 256, i32 129, i8* %94, i32 3)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %81
  br label %118

99:                                               ; preds = %81
  %100 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %101 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %104 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @usb_rcvctrlpipe(i32 %105, i32 0)
  %107 = load i32, i32* @USB_DIR_IN, align 4
  %108 = load i32, i32* @USB_TYPE_CLASS, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %111 = or i32 %109, %110
  %112 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %113 = call i32 @snd_usb_ctl_msg(i32 %102, i32 %106, i32 129, i32 %111, i32 256, i32 2, i8* %112, i32 3)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %99
  br label %118

117:                                              ; preds = %99
  br label %118

118:                                              ; preds = %117, %116, %98, %80, %53, %35
  %119 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %120 = call i32 @snd_usb_unlock_shutdown(%struct.snd_usb_audio* %119)
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %118, %16
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @snd_usb_lock_shutdown(%struct.snd_usb_audio*) #1

declare dso_local i32 @snd_usb_ctl_msg(i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @snd_usb_unlock_shutdown(%struct.snd_usb_audio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
