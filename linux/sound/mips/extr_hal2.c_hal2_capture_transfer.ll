; ModuleID = '/home/carl/AnghaBench/linux/sound/mips/extr_hal2.c_hal2_capture_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/mips/extr_hal2.c_hal2_capture_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.snd_pcm_indirect = type { i32, i64 }
%struct.snd_hal2 = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8* }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_pcm_indirect*, i64)* @hal2_capture_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hal2_capture_transfer(%struct.snd_pcm_substream* %0, %struct.snd_pcm_indirect* %1, i64 %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_indirect*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.snd_hal2*, align 8
  %8 = alloca i8*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_indirect* %1, %struct.snd_pcm_indirect** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = call %struct.snd_hal2* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.snd_hal2* %10, %struct.snd_hal2** %7, align 8
  %11 = load %struct.snd_hal2*, %struct.snd_hal2** %7, align 8
  %12 = getelementptr inbounds %struct.snd_hal2, %struct.snd_hal2* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.snd_pcm_indirect*, %struct.snd_pcm_indirect** %5, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_indirect, %struct.snd_pcm_indirect* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %14, i64 %18
  store i8* %19, i8** %8, align 8
  %20 = load %struct.snd_hal2*, %struct.snd_hal2** %7, align 8
  %21 = getelementptr inbounds %struct.snd_hal2, %struct.snd_hal2* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %28 = call i32 @dma_cache_sync(i32 %24, i8* %25, i64 %26, i32 %27)
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.snd_pcm_indirect*, %struct.snd_pcm_indirect** %5, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_indirect, %struct.snd_pcm_indirect* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load i8*, i8** %8, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @memcpy(i64 %37, i8* %38, i64 %39)
  ret void
}

declare dso_local %struct.snd_hal2* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dma_cache_sync(i32, i8*, i64, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
