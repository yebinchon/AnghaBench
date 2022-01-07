; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_stream.c_usb_chmap_ctl_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_stream.c_usb_chmap_ctl_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_info = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.snd_pcm_chmap = type { %struct.snd_usb_substream* }
%struct.snd_usb_substream = type { i32 }

@SNDRV_CTL_ELEM_TYPE_INTEGER = common dso_local global i32 0, align 4
@SNDRV_CHMAP_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @usb_chmap_ctl_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_chmap_ctl_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  %5 = alloca %struct.snd_pcm_chmap*, align 8
  %6 = alloca %struct.snd_usb_substream*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = call %struct.snd_pcm_chmap* @snd_kcontrol_chip(%struct.snd_kcontrol* %7)
  store %struct.snd_pcm_chmap* %8, %struct.snd_pcm_chmap** %5, align 8
  %9 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %5, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %9, i32 0, i32 0
  %11 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %10, align 8
  store %struct.snd_usb_substream* %11, %struct.snd_usb_substream** %6, align 8
  %12 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_INTEGER, align 4
  %13 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %14 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %16 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %19 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %21 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @SNDRV_CHMAP_LAST, align 4
  %25 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %26 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 8
  ret i32 0
}

declare dso_local %struct.snd_pcm_chmap* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
