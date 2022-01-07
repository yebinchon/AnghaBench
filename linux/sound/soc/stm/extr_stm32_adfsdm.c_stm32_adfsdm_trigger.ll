; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_adfsdm.c_stm32_adfsdm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_adfsdm.c_stm32_adfsdm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.stm32_adfsdm_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@stm32_afsdm_pcm_cb = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @stm32_adfsdm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_adfsdm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.stm32_adfsdm_priv*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  store %struct.snd_soc_pcm_runtime* %10, %struct.snd_soc_pcm_runtime** %6, align 8
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %12 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.stm32_adfsdm_priv* @snd_soc_dai_get_drvdata(i32 %13)
  store %struct.stm32_adfsdm_priv* %14, %struct.stm32_adfsdm_priv** %7, align 8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %34 [
    i32 130, label %16
    i32 131, label %16
    i32 128, label %27
    i32 129, label %27
  ]

16:                                               ; preds = %2, %2
  %17 = load %struct.stm32_adfsdm_priv*, %struct.stm32_adfsdm_priv** %7, align 8
  %18 = getelementptr inbounds %struct.stm32_adfsdm_priv, %struct.stm32_adfsdm_priv* %17, i32 0, i32 1
  store i32 0, i32* %18, align 8
  %19 = load %struct.stm32_adfsdm_priv*, %struct.stm32_adfsdm_priv** %7, align 8
  %20 = getelementptr inbounds %struct.stm32_adfsdm_priv, %struct.stm32_adfsdm_priv* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @stm32_afsdm_pcm_cb, align 4
  %25 = load %struct.stm32_adfsdm_priv*, %struct.stm32_adfsdm_priv** %7, align 8
  %26 = call i32 @stm32_dfsdm_get_buff_cb(i32 %23, i32 %24, %struct.stm32_adfsdm_priv* %25)
  store i32 %26, i32* %3, align 4
  br label %37

27:                                               ; preds = %2, %2
  %28 = load %struct.stm32_adfsdm_priv*, %struct.stm32_adfsdm_priv** %7, align 8
  %29 = getelementptr inbounds %struct.stm32_adfsdm_priv, %struct.stm32_adfsdm_priv* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @stm32_dfsdm_release_buff_cb(i32 %32)
  store i32 %33, i32* %3, align 4
  br label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %27, %16
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.stm32_adfsdm_priv* @snd_soc_dai_get_drvdata(i32) #1

declare dso_local i32 @stm32_dfsdm_get_buff_cb(i32, i32, %struct.stm32_adfsdm_priv*) #1

declare dso_local i32 @stm32_dfsdm_release_buff_cb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
