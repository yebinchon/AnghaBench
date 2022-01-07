; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_snd_pcm_lib_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_snd_pcm_lib_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }

@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_lib_ioctl(%struct.snd_pcm_substream* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %21 [
    i32 128, label %9
    i32 130, label %13
    i32 129, label %17
  ]

9:                                                ; preds = %3
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @snd_pcm_lib_ioctl_reset(%struct.snd_pcm_substream* %10, i8* %11)
  store i32 %12, i32* %4, align 4
  br label %24

13:                                               ; preds = %3
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @snd_pcm_lib_ioctl_channel_info(%struct.snd_pcm_substream* %14, i8* %15)
  store i32 %16, i32* %4, align 4
  br label %24

17:                                               ; preds = %3
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @snd_pcm_lib_ioctl_fifo_size(%struct.snd_pcm_substream* %18, i8* %19)
  store i32 %20, i32* %4, align 4
  br label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @ENXIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %21, %17, %13, %9
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @snd_pcm_lib_ioctl_reset(%struct.snd_pcm_substream*, i8*) #1

declare dso_local i32 @snd_pcm_lib_ioctl_channel_info(%struct.snd_pcm_substream*, i8*) #1

declare dso_local i32 @snd_pcm_lib_ioctl_fifo_size(%struct.snd_pcm_substream*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
