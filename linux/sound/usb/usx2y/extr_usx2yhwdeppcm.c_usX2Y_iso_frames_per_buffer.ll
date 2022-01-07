; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usx2yhwdeppcm.c_usX2Y_iso_frames_per_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usx2yhwdeppcm.c_usX2Y_iso_frames_per_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_runtime = type { i32 }
%struct.usX2Ydev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_runtime*, %struct.usX2Ydev*)* @usX2Y_iso_frames_per_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usX2Y_iso_frames_per_buffer(%struct.snd_pcm_runtime* %0, %struct.usX2Ydev* %1) #0 {
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.usX2Ydev*, align 8
  store %struct.snd_pcm_runtime* %0, %struct.snd_pcm_runtime** %3, align 8
  store %struct.usX2Ydev* %1, %struct.usX2Ydev** %4, align 8
  %5 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = mul nsw i32 %7, 1000
  %9 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %10 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sdiv i32 %8, %11
  %13 = add nsw i32 %12, 1
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
