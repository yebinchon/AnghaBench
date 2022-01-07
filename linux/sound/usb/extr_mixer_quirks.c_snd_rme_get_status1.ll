; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_rme_get_status1.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_rme_get_status1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.usb_mixer_elem_list = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_usb_audio* }
%struct.snd_usb_audio = type { i32 }

@SND_RME_GET_STATUS1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, i32*)* @snd_rme_get_status1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme_get_status1(%struct.snd_kcontrol* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.usb_mixer_elem_list*, align 8
  %7 = alloca %struct.snd_usb_audio*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %10 = call %struct.usb_mixer_elem_list* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.usb_mixer_elem_list* %10, %struct.usb_mixer_elem_list** %6, align 8
  %11 = load %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %6, align 8
  %12 = getelementptr inbounds %struct.usb_mixer_elem_list, %struct.usb_mixer_elem_list* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %14, align 8
  store %struct.snd_usb_audio* %15, %struct.snd_usb_audio** %7, align 8
  %16 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %17 = call i32 @snd_usb_lock_shutdown(%struct.snd_usb_audio* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %30

22:                                               ; preds = %2
  %23 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %24 = load i32, i32* @SND_RME_GET_STATUS1, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @snd_rme_read_value(%struct.snd_usb_audio* %23, i32 %24, i32* %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %28 = call i32 @snd_usb_unlock_shutdown(%struct.snd_usb_audio* %27)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %22, %20
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.usb_mixer_elem_list* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_usb_lock_shutdown(%struct.snd_usb_audio*) #1

declare dso_local i32 @snd_rme_read_value(%struct.snd_usb_audio*, i32, i32*) #1

declare dso_local i32 @snd_usb_unlock_shutdown(%struct.snd_usb_audio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
