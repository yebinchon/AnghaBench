; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.arizona_priv = type { i32, i32, %struct.arizona_dai_priv* }
%struct.arizona_dai_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ARIZONA_RATE_MASK = common dso_local global i32 0, align 4
@ARIZONA_44K1_RATE_MASK = common dso_local global i32 0, align 4
@ARIZONA_48K_RATE_MASK = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @arizona_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.arizona_priv*, align 8
  %8 = alloca %struct.arizona_dai_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.arizona_priv* %14, %struct.arizona_priv** %7, align 8
  %15 = load %struct.arizona_priv*, %struct.arizona_priv** %7, align 8
  %16 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %15, i32 0, i32 2
  %17 = load %struct.arizona_dai_priv*, %struct.arizona_dai_priv** %16, align 8
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.arizona_dai_priv, %struct.arizona_dai_priv* %17, i64 %22
  store %struct.arizona_dai_priv* %23, %struct.arizona_dai_priv** %8, align 8
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

29:                                               ; preds = %2
  %30 = load %struct.arizona_dai_priv*, %struct.arizona_dai_priv** %8, align 8
  %31 = getelementptr inbounds %struct.arizona_dai_priv, %struct.arizona_dai_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %41 [
    i32 128, label %33
    i32 129, label %37
  ]

33:                                               ; preds = %29
  %34 = load %struct.arizona_priv*, %struct.arizona_priv** %7, align 8
  %35 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %9, align 4
  br label %42

37:                                               ; preds = %29
  %38 = load %struct.arizona_priv*, %struct.arizona_priv** %7, align 8
  %39 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  br label %42

41:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %73

42:                                               ; preds = %37, %33
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* @ARIZONA_RATE_MASK, align 4
  %47 = load %struct.arizona_dai_priv*, %struct.arizona_dai_priv** %8, align 8
  %48 = getelementptr inbounds %struct.arizona_dai_priv, %struct.arizona_dai_priv* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  br label %65

50:                                               ; preds = %42
  %51 = load i32, i32* %9, align 4
  %52 = urem i32 %51, 8000
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* @ARIZONA_44K1_RATE_MASK, align 4
  %56 = load %struct.arizona_dai_priv*, %struct.arizona_dai_priv** %8, align 8
  %57 = getelementptr inbounds %struct.arizona_dai_priv, %struct.arizona_dai_priv* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  br label %64

59:                                               ; preds = %50
  %60 = load i32, i32* @ARIZONA_48K_RATE_MASK, align 4
  %61 = load %struct.arizona_dai_priv*, %struct.arizona_dai_priv** %8, align 8
  %62 = getelementptr inbounds %struct.arizona_dai_priv, %struct.arizona_dai_priv* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  br label %64

64:                                               ; preds = %59, %54
  br label %65

65:                                               ; preds = %64, %45
  %66 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %70 = load %struct.arizona_dai_priv*, %struct.arizona_dai_priv** %8, align 8
  %71 = getelementptr inbounds %struct.arizona_dai_priv, %struct.arizona_dai_priv* %70, i32 0, i32 1
  %72 = call i32 @snd_pcm_hw_constraint_list(i32 %68, i32 0, i32 %69, %struct.TYPE_2__* %71)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %65, %41, %28
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_pcm_hw_constraint_list(i32, i32, i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
