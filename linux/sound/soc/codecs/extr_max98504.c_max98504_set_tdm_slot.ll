; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98504.c_max98504_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98504.c_max98504_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.max98504_priv = type { i32, %struct.regmap* }
%struct.regmap = type { i32 }

@MAX98504_PCM_TX_ENABLE = common dso_local global i32 0, align 4
@MAX98504_PDM_TX_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @max98504_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98504_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.max98504_priv*, align 8
  %12 = alloca %struct.regmap*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %14 = call %struct.max98504_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %13)
  store %struct.max98504_priv* %14, %struct.max98504_priv** %11, align 8
  %15 = load %struct.max98504_priv*, %struct.max98504_priv** %11, align 8
  %16 = getelementptr inbounds %struct.max98504_priv, %struct.max98504_priv* %15, i32 0, i32 1
  %17 = load %struct.regmap*, %struct.regmap** %16, align 8
  store %struct.regmap* %17, %struct.regmap** %12, align 8
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %34 [
    i32 129, label %21
    i32 128, label %29
  ]

21:                                               ; preds = %5
  %22 = load %struct.regmap*, %struct.regmap** %12, align 8
  %23 = load i32, i32* @MAX98504_PCM_TX_ENABLE, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @regmap_write(%struct.regmap* %22, i32 %23, i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.max98504_priv*, %struct.max98504_priv** %11, align 8
  %28 = getelementptr inbounds %struct.max98504_priv, %struct.max98504_priv* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %36

29:                                               ; preds = %5
  %30 = load %struct.regmap*, %struct.regmap** %12, align 8
  %31 = load i32, i32* @MAX98504_PDM_TX_ENABLE, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @regmap_write(%struct.regmap* %30, i32 %31, i32 %32)
  br label %36

34:                                               ; preds = %5
  %35 = call i32 @WARN_ON(i32 1)
  br label %36

36:                                               ; preds = %34, %29, %21
  ret i32 0
}

declare dso_local %struct.max98504_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
