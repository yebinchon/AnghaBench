; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_get_cluster_channels_v3.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_get_cluster_channels_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixer_build = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.uac3_cluster_header_descriptor = type { i32 }

@UAC3_CS_REQ_HIGH_CAPABILITY_DESCRIPTOR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"cannot request logical cluster ID: %d (err: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mixer_build*, i32)* @get_cluster_channels_v3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cluster_channels_v3(%struct.mixer_build* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mixer_build*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uac3_cluster_header_descriptor, align 4
  %7 = alloca i32, align 4
  store %struct.mixer_build* %0, %struct.mixer_build** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mixer_build*, %struct.mixer_build** %4, align 8
  %9 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mixer_build*, %struct.mixer_build** %4, align 8
  %14 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @usb_rcvctrlpipe(i32 %17, i32 0)
  %19 = load i32, i32* @UAC3_CS_REQ_HIGH_CAPABILITY_DESCRIPTOR, align 4
  %20 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %21 = load i32, i32* @USB_TYPE_CLASS, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @USB_DIR_IN, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.mixer_build*, %struct.mixer_build** %4, align 8
  %27 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = call i32 @snd_usb_ctrl_intf(%struct.TYPE_3__* %28)
  %30 = call i32 @snd_usb_ctl_msg(i32 %12, i32 %18, i32 %19, i32 %24, i32 %25, i32 %29, %struct.uac3_cluster_header_descriptor* %6, i32 4)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %44

34:                                               ; preds = %2
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ne i64 %36, 4
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %44

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.uac3_cluster_header_descriptor, %struct.uac3_cluster_header_descriptor* %6, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %3, align 4
  br label %52

44:                                               ; preds = %38, %33
  %45 = load %struct.mixer_build*, %struct.mixer_build** %4, align 8
  %46 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @usb_audio_err(%struct.TYPE_3__* %47, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %44, %41
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @snd_usb_ctl_msg(i32, i32, i32, i32, i32, i32, %struct.uac3_cluster_header_descriptor*, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @snd_usb_ctrl_intf(%struct.TYPE_3__*) #1

declare dso_local i32 @usb_audio_err(%struct.TYPE_3__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
