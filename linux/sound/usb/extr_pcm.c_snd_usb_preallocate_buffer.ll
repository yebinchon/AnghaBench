; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_snd_usb_preallocate_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_snd_usb_preallocate_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_substream = type { i64, %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_5__ = type { %struct.snd_pcm* }
%struct.snd_pcm = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i32 }

@snd_usb_use_vmalloc = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV_SG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_usb_preallocate_buffer(%struct.snd_usb_substream* %0) #0 {
  %2 = alloca %struct.snd_usb_substream*, align 8
  %3 = alloca %struct.snd_pcm*, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.snd_usb_substream* %0, %struct.snd_usb_substream** %2, align 8
  %6 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %2, align 8
  %7 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %6, i32 0, i32 2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm*, %struct.snd_pcm** %9, align 8
  store %struct.snd_pcm* %10, %struct.snd_pcm** %3, align 8
  %11 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %2, align 8
  %15 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %18, align 8
  store %struct.snd_pcm_substream* %19, %struct.snd_pcm_substream** %4, align 8
  %20 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %2, align 8
  %21 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %20, i32 0, i32 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.device*, %struct.device** %25, align 8
  store %struct.device* %26, %struct.device** %5, align 8
  %27 = load i32, i32* @snd_usb_use_vmalloc, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %1
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %31 = load i32, i32* @SNDRV_DMA_TYPE_DEV_SG, align 4
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = call i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream* %30, i32 %31, %struct.device* %32, i32 65536, i32 524288)
  br label %34

34:                                               ; preds = %29, %1
  ret void
}

declare dso_local i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream*, i32, %struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
