; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_snd_usb_set_pcm_ops.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_snd_usb_set_pcm_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_ops = type { i32 }
%struct.snd_pcm = type { i32 }

@snd_usb_use_vmalloc = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_usb_playback_ops = common dso_local global %struct.snd_pcm_ops zeroinitializer, align 4
@snd_usb_capture_ops = common dso_local global %struct.snd_pcm_ops zeroinitializer, align 4
@snd_usb_playback_dev_ops = common dso_local global %struct.snd_pcm_ops zeroinitializer, align 4
@snd_usb_capture_dev_ops = common dso_local global %struct.snd_pcm_ops zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_usb_set_pcm_ops(%struct.snd_pcm* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_ops*, align 8
  store %struct.snd_pcm* %0, %struct.snd_pcm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @snd_usb_use_vmalloc, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %11 = icmp eq i32 %9, %10
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, %struct.snd_pcm_ops* @snd_usb_playback_ops, %struct.snd_pcm_ops* @snd_usb_capture_ops
  store %struct.snd_pcm_ops* %13, %struct.snd_pcm_ops** %5, align 8
  br label %20

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, %struct.snd_pcm_ops* @snd_usb_playback_dev_ops, %struct.snd_pcm_ops* @snd_usb_capture_dev_ops
  store %struct.snd_pcm_ops* %19, %struct.snd_pcm_ops** %5, align 8
  br label %20

20:                                               ; preds = %14, %8
  %21 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.snd_pcm_ops*, %struct.snd_pcm_ops** %5, align 8
  %24 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %21, i32 %22, %struct.snd_pcm_ops* %23)
  ret void
}

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, %struct.snd_pcm_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
