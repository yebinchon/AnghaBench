; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_usb_sbrc_hwdep_poll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_usb_sbrc_hwdep_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_hwdep = type { %struct.usb_mixer_interface* }
%struct.usb_mixer_interface = type { i64, i32 }
%struct.file = type { i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_hwdep*, %struct.file*, i32*)* @snd_usb_sbrc_hwdep_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usb_sbrc_hwdep_poll(%struct.snd_hwdep* %0, %struct.file* %1, i32* %2) #0 {
  %4 = alloca %struct.snd_hwdep*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.usb_mixer_interface*, align 8
  store %struct.snd_hwdep* %0, %struct.snd_hwdep** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %9 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %8, i32 0, i32 0
  %10 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %9, align 8
  store %struct.usb_mixer_interface* %10, %struct.usb_mixer_interface** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %7, align 8
  %13 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %12, i32 0, i32 1
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @poll_wait(%struct.file* %11, i32* %13, i32* %14)
  %16 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %7, align 8
  %17 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @EPOLLIN, align 4
  %22 = load i32, i32* @EPOLLRDNORM, align 4
  %23 = or i32 %21, %22
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32 [ %23, %20 ], [ 0, %24 ]
  ret i32 %26
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
