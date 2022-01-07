; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/amd/raven/extr_acp3x-pcm-dma.c_acp3x_dai_i2s_hwparams.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/amd/raven/extr_acp3x-pcm-dma.c_acp3x_dai_i2s_hwparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i2s_stream_instance* }
%struct.i2s_stream_instance = type { i32, i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@mmACP_BTTDM_ITER = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@mmACP_BTTDM_IRER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @acp3x_dai_i2s_hwparams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acp3x_dai_i2s_hwparams(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2s_stream_instance*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %13, align 8
  store %struct.i2s_stream_instance* %14, %struct.i2s_stream_instance** %9, align 8
  %15 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %16 = call i32 @params_format(%struct.snd_pcm_hw_params* %15)
  switch i32 %16, label %29 [
    i32 128, label %17
    i32 129, label %17
    i32 132, label %20
    i32 131, label %23
    i32 130, label %26
  ]

17:                                               ; preds = %3, %3
  %18 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %9, align 8
  %19 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  br label %32

20:                                               ; preds = %3
  %21 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %9, align 8
  %22 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %21, i32 0, i32 0
  store i32 2, i32* %22, align 8
  br label %32

23:                                               ; preds = %3
  %24 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %9, align 8
  %25 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %24, i32 0, i32 0
  store i32 4, i32* %25, align 8
  br label %32

26:                                               ; preds = %3
  %27 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %9, align 8
  %28 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %27, i32 0, i32 0
  store i32 5, i32* %28, align 8
  br label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %67

32:                                               ; preds = %26, %23, %20, %17
  %33 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %9, align 8
  %34 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @mmACP_BTTDM_ITER, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @rv_readl(i64 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %9, align 8
  %41 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = shl i32 %42, 3
  %44 = or i32 %39, %43
  store i32 %44, i32* %8, align 4
  %45 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %32
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %9, align 8
  %53 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @mmACP_BTTDM_ITER, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @rv_writel(i32 %51, i64 %56)
  br label %66

58:                                               ; preds = %32
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %9, align 8
  %61 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @mmACP_BTTDM_IRER, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @rv_writel(i32 %59, i64 %64)
  br label %66

66:                                               ; preds = %58, %50
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %29
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @rv_readl(i64) #1

declare dso_local i32 @rv_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
