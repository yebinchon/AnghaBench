; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_snd_usb_substream_playback_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_snd_usb_substream_playback_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.snd_usb_substream* }
%struct.snd_usb_substream = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i32* }

@prepare_playback_urb = common dso_local global i32* null, align 8
@retire_playback_urb = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_usb_substream_playback_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usb_substream_playback_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_usb_substream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %10, align 8
  store %struct.snd_usb_substream* %11, %struct.snd_usb_substream** %6, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %46 [
    i32 129, label %13
    i32 130, label %16
    i32 128, label %29
    i32 131, label %34
  ]

13:                                               ; preds = %2
  %14 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %15 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  br label %16

16:                                               ; preds = %2, %13
  %17 = load i32*, i32** @prepare_playback_urb, align 8
  %18 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %19 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i32* %17, i32** %21, align 8
  %22 = load i8*, i8** @retire_playback_urb, align 8
  %23 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %24 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i8* %22, i8** %26, align 8
  %27 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %28 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %49

29:                                               ; preds = %2
  %30 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %31 = call i32 @stop_endpoints(%struct.snd_usb_substream* %30, i32 0)
  %32 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %33 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  store i32 0, i32* %3, align 4
  br label %49

34:                                               ; preds = %2
  %35 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %36 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = load i8*, i8** @retire_playback_urb, align 8
  %40 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %41 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i8* %39, i8** %43, align 8
  %44 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %45 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  store i32 0, i32* %3, align 4
  br label %49

46:                                               ; preds = %2
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %34, %29, %16
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @stop_endpoints(%struct.snd_usb_substream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
