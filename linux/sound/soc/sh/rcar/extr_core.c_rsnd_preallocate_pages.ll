; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_preallocate_pages.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_preallocate_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_substream* }
%struct.rsnd_dai_stream = type { %struct.device* }
%struct.device = type { i32 }
%struct.rsnd_priv = type { i32 }

@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@PREALLOC_BUFFER = common dso_local global i32 0, align 4
@PREALLOC_BUFFER_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*, %struct.rsnd_dai_stream*, i32)* @rsnd_preallocate_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_preallocate_pages(%struct.snd_soc_pcm_runtime* %0, %struct.rsnd_dai_stream* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.rsnd_dai_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rsnd_priv*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.snd_pcm_substream*, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %4, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %11 = call %struct.rsnd_priv* @rsnd_io_to_priv(%struct.rsnd_dai_stream* %10)
  store %struct.rsnd_priv* %11, %struct.rsnd_priv** %7, align 8
  %12 = load %struct.rsnd_priv*, %struct.rsnd_priv** %7, align 8
  %13 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %12)
  store %struct.device* %13, %struct.device** %8, align 8
  %14 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %15 = getelementptr inbounds %struct.rsnd_dai_stream, %struct.rsnd_dai_stream* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  %17 = icmp ne %struct.device* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %20 = getelementptr inbounds %struct.rsnd_dai_stream, %struct.rsnd_dai_stream* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %8, align 8
  br label %22

22:                                               ; preds = %18, %3
  %23 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %24 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %31, align 8
  store %struct.snd_pcm_substream* %32, %struct.snd_pcm_substream** %9, align 8
  br label %33

33:                                               ; preds = %43, %22
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %35 = icmp ne %struct.snd_pcm_substream* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %38 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %39 = load %struct.device*, %struct.device** %8, align 8
  %40 = load i32, i32* @PREALLOC_BUFFER, align 4
  %41 = load i32, i32* @PREALLOC_BUFFER_MAX, align 4
  %42 = call i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream* %37, i32 %38, %struct.device* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %36
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %44, i32 0, i32 0
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %45, align 8
  store %struct.snd_pcm_substream* %46, %struct.snd_pcm_substream** %9, align 8
  br label %33

47:                                               ; preds = %33
  ret i32 0
}

declare dso_local %struct.rsnd_priv* @rsnd_io_to_priv(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream*, i32, %struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
