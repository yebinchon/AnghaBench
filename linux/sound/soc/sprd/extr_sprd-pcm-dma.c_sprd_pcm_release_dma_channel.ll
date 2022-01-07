; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-pcm-dma.c_sprd_pcm_release_dma_channel.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-pcm-dma.c_sprd_pcm_release_dma_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.sprd_pcm_dma_private* }
%struct.sprd_pcm_dma_private = type { %struct.sprd_pcm_dma_data* }
%struct.sprd_pcm_dma_data = type { i32* }

@SPRD_PCM_CHANNEL_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*)* @sprd_pcm_release_dma_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprd_pcm_release_dma_channel(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.sprd_pcm_dma_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sprd_pcm_dma_data*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %3, align 8
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %10, i32 0, i32 0
  %12 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %11, align 8
  store %struct.sprd_pcm_dma_private* %12, %struct.sprd_pcm_dma_private** %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %36, %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SPRD_PCM_CHANNEL_MAX, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %4, align 8
  %19 = getelementptr inbounds %struct.sprd_pcm_dma_private, %struct.sprd_pcm_dma_private* %18, i32 0, i32 0
  %20 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %20, i64 %22
  store %struct.sprd_pcm_dma_data* %23, %struct.sprd_pcm_dma_data** %6, align 8
  %24 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %6, align 8
  %25 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %17
  %29 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %6, align 8
  %30 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @dma_release_channel(i32* %31)
  %33 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %6, align 8
  %34 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %28, %17
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %13

39:                                               ; preds = %13
  ret void
}

declare dso_local i32 @dma_release_channel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
