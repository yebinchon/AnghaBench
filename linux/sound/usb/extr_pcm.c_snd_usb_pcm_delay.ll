; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_snd_usb_pcm_delay.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_snd_usb_pcm_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_substream = type { i32, i32, i64, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_usb_pcm_delay(%struct.snd_usb_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_usb_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_usb_substream* %0, %struct.snd_usb_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %10 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

14:                                               ; preds = %2
  %15 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %16 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @usb_get_current_frame_number(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %21 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %19, %22
  %24 = and i32 %23, 255
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = mul i32 %25, %26
  %28 = udiv i32 %27, 1000
  store i32 %28, i32* %8, align 4
  %29 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %30 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %14
  %35 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %36 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %37, %38
  store i32 %39, i32* %8, align 4
  br label %46

40:                                               ; preds = %14
  %41 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %42 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %40, %34
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %13
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @usb_get_current_frame_number(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
