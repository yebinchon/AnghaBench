; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.ssp_priv = type { i64, %struct.ssp_device* }
%struct.ssp_device = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @pxa_ssp_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa_ssp_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.ssp_priv*, align 8
  %6 = alloca %struct.ssp_device*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %8 = call %struct.ssp_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %7)
  store %struct.ssp_priv* %8, %struct.ssp_priv** %5, align 8
  %9 = load %struct.ssp_priv*, %struct.ssp_priv** %5, align 8
  %10 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %9, i32 0, i32 1
  %11 = load %struct.ssp_device*, %struct.ssp_device** %10, align 8
  store %struct.ssp_device* %11, %struct.ssp_device** %6, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.ssp_device*, %struct.ssp_device** %6, align 8
  %18 = call i32 @pxa_ssp_disable(%struct.ssp_device* %17)
  %19 = load %struct.ssp_device*, %struct.ssp_device** %6, align 8
  %20 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @clk_disable_unprepare(i64 %21)
  br label %23

23:                                               ; preds = %16, %2
  %24 = load %struct.ssp_priv*, %struct.ssp_priv** %5, align 8
  %25 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.ssp_priv*, %struct.ssp_priv** %5, align 8
  %30 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @clk_disable_unprepare(i64 %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %36 = call i32 @snd_soc_dai_get_dma_data(%struct.snd_soc_dai* %34, %struct.snd_pcm_substream* %35)
  %37 = call i32 @kfree(i32 %36)
  %38 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %40 = call i32 @snd_soc_dai_set_dma_data(%struct.snd_soc_dai* %38, %struct.snd_pcm_substream* %39, i32* null)
  ret void
}

declare dso_local %struct.ssp_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @pxa_ssp_disable(%struct.ssp_device*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @snd_soc_dai_get_dma_data(%struct.snd_soc_dai*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_soc_dai_set_dma_data(%struct.snd_soc_dai*, %struct.snd_pcm_substream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
