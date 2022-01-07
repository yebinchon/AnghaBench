; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.madera_priv = type { i32, i32, %struct.madera*, %struct.madera_dai_priv* }
%struct.madera = type { i32 }
%struct.madera_dai_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MADERA_384K_RATE_MASK = common dso_local global i32 0, align 4
@MADERA_384K_44K1_RATE_MASK = common dso_local global i32 0, align 4
@MADERA_384K_48K_RATE_MASK = common dso_local global i32 0, align 4
@MADERA_192K_RATE_MASK = common dso_local global i32 0, align 4
@MADERA_192K_44K1_RATE_MASK = common dso_local global i32 0, align 4
@MADERA_192K_48K_RATE_MASK = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @madera_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.madera_priv*, align 8
  %8 = alloca %struct.madera_dai_priv*, align 8
  %9 = alloca %struct.madera*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 1
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %6, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %15 = call %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.madera_priv* %15, %struct.madera_priv** %7, align 8
  %16 = load %struct.madera_priv*, %struct.madera_priv** %7, align 8
  %17 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %16, i32 0, i32 3
  %18 = load %struct.madera_dai_priv*, %struct.madera_dai_priv** %17, align 8
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %20 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.madera_dai_priv, %struct.madera_dai_priv* %18, i64 %23
  store %struct.madera_dai_priv* %24, %struct.madera_dai_priv** %8, align 8
  %25 = load %struct.madera_priv*, %struct.madera_priv** %7, align 8
  %26 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %25, i32 0, i32 2
  %27 = load %struct.madera*, %struct.madera** %26, align 8
  store %struct.madera* %27, %struct.madera** %9, align 8
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %106

33:                                               ; preds = %2
  %34 = load %struct.madera_dai_priv*, %struct.madera_dai_priv** %8, align 8
  %35 = getelementptr inbounds %struct.madera_dai_priv, %struct.madera_dai_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %45 [
    i32 130, label %37
    i32 129, label %37
    i32 128, label %37
    i32 132, label %41
    i32 131, label %41
  ]

37:                                               ; preds = %33, %33, %33
  %38 = load %struct.madera_priv*, %struct.madera_priv** %7, align 8
  %39 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %10, align 4
  br label %46

41:                                               ; preds = %33, %33
  %42 = load %struct.madera_priv*, %struct.madera_priv** %7, align 8
  %43 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  br label %46

45:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %106

46:                                               ; preds = %41, %37
  %47 = load %struct.madera*, %struct.madera** %9, align 8
  %48 = getelementptr inbounds %struct.madera, %struct.madera* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %74 [
    i32 135, label %50
    i32 134, label %50
    i32 133, label %50
  ]

50:                                               ; preds = %46, %46, %46
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, i32* @MADERA_384K_RATE_MASK, align 4
  %55 = load %struct.madera_dai_priv*, %struct.madera_dai_priv** %8, align 8
  %56 = getelementptr inbounds %struct.madera_dai_priv, %struct.madera_dai_priv* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  br label %73

58:                                               ; preds = %50
  %59 = load i32, i32* %10, align 4
  %60 = urem i32 %59, 4000
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32, i32* @MADERA_384K_44K1_RATE_MASK, align 4
  %64 = load %struct.madera_dai_priv*, %struct.madera_dai_priv** %8, align 8
  %65 = getelementptr inbounds %struct.madera_dai_priv, %struct.madera_dai_priv* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  br label %72

67:                                               ; preds = %58
  %68 = load i32, i32* @MADERA_384K_48K_RATE_MASK, align 4
  %69 = load %struct.madera_dai_priv*, %struct.madera_dai_priv** %8, align 8
  %70 = getelementptr inbounds %struct.madera_dai_priv, %struct.madera_dai_priv* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  br label %72

72:                                               ; preds = %67, %62
  br label %73

73:                                               ; preds = %72, %53
  br label %98

74:                                               ; preds = %46
  %75 = load i32, i32* %10, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32, i32* @MADERA_192K_RATE_MASK, align 4
  %79 = load %struct.madera_dai_priv*, %struct.madera_dai_priv** %8, align 8
  %80 = getelementptr inbounds %struct.madera_dai_priv, %struct.madera_dai_priv* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  br label %97

82:                                               ; preds = %74
  %83 = load i32, i32* %10, align 4
  %84 = urem i32 %83, 4000
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i32, i32* @MADERA_192K_44K1_RATE_MASK, align 4
  %88 = load %struct.madera_dai_priv*, %struct.madera_dai_priv** %8, align 8
  %89 = getelementptr inbounds %struct.madera_dai_priv, %struct.madera_dai_priv* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  br label %96

91:                                               ; preds = %82
  %92 = load i32, i32* @MADERA_192K_48K_RATE_MASK, align 4
  %93 = load %struct.madera_dai_priv*, %struct.madera_dai_priv** %8, align 8
  %94 = getelementptr inbounds %struct.madera_dai_priv, %struct.madera_dai_priv* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 4
  br label %96

96:                                               ; preds = %91, %86
  br label %97

97:                                               ; preds = %96, %77
  br label %98

98:                                               ; preds = %97, %73
  %99 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %100 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %103 = load %struct.madera_dai_priv*, %struct.madera_dai_priv** %8, align 8
  %104 = getelementptr inbounds %struct.madera_dai_priv, %struct.madera_dai_priv* %103, i32 0, i32 1
  %105 = call i32 @snd_pcm_hw_constraint_list(i32 %101, i32 0, i32 %102, %struct.TYPE_2__* %104)
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %98, %45, %32
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_pcm_hw_constraint_list(i32, i32, i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
