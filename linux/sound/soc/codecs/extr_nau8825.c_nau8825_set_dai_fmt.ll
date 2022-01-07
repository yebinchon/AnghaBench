; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.nau8825 = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@NAU8825_I2S_MS_MASTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@NAU8825_I2S_BP_INV = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@NAU8825_I2S_DF_I2S = common dso_local global i32 0, align 4
@NAU8825_I2S_DF_LEFT = common dso_local global i32 0, align 4
@NAU8825_I2S_DF_RIGTH = common dso_local global i32 0, align 4
@NAU8825_I2S_DF_PCM_AB = common dso_local global i32 0, align 4
@NAU8825_I2S_PCMB_EN = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@NAU8825_REG_I2S_PCM_CTRL1 = common dso_local global i32 0, align 4
@NAU8825_I2S_DL_MASK = common dso_local global i32 0, align 4
@NAU8825_I2S_DF_MASK = common dso_local global i32 0, align 4
@NAU8825_I2S_BP_MASK = common dso_local global i32 0, align 4
@NAU8825_I2S_PCMB_MASK = common dso_local global i32 0, align 4
@NAU8825_REG_I2S_PCM_CTRL2 = common dso_local global i32 0, align 4
@NAU8825_I2S_MS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @nau8825_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8825_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.nau8825*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.nau8825* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.nau8825* %14, %struct.nau8825** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %23 [
    i32 136, label %18
    i32 135, label %22
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @NAU8825_I2S_MS_MASTER, align 4
  %20 = load i32, i32* %9, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %9, align 4
  br label %26

22:                                               ; preds = %2
  br label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %95

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %29 = and i32 %27, %28
  switch i32 %29, label %35 [
    i32 129, label %30
    i32 131, label %31
  ]

30:                                               ; preds = %26
  br label %38

31:                                               ; preds = %26
  %32 = load i32, i32* @NAU8825_I2S_BP_INV, align 4
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  br label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %95

38:                                               ; preds = %31, %30
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %41 = and i32 %39, %40
  switch i32 %41, label %65 [
    i32 132, label %42
    i32 130, label %46
    i32 128, label %50
    i32 134, label %54
    i32 133, label %58
  ]

42:                                               ; preds = %38
  %43 = load i32, i32* @NAU8825_I2S_DF_I2S, align 4
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %68

46:                                               ; preds = %38
  %47 = load i32, i32* @NAU8825_I2S_DF_LEFT, align 4
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %68

50:                                               ; preds = %38
  %51 = load i32, i32* @NAU8825_I2S_DF_RIGTH, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %68

54:                                               ; preds = %38
  %55 = load i32, i32* @NAU8825_I2S_DF_PCM_AB, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %68

58:                                               ; preds = %38
  %59 = load i32, i32* @NAU8825_I2S_DF_PCM_AB, align 4
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* @NAU8825_I2S_PCMB_EN, align 4
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  br label %68

65:                                               ; preds = %38
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %95

68:                                               ; preds = %58, %54, %50, %46, %42
  %69 = load %struct.nau8825*, %struct.nau8825** %7, align 8
  %70 = load i32, i32* @HZ, align 4
  %71 = mul nsw i32 3, %70
  %72 = call i32 @nau8825_sema_acquire(%struct.nau8825* %69, i32 %71)
  %73 = load %struct.nau8825*, %struct.nau8825** %7, align 8
  %74 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @NAU8825_REG_I2S_PCM_CTRL1, align 4
  %77 = load i32, i32* @NAU8825_I2S_DL_MASK, align 4
  %78 = load i32, i32* @NAU8825_I2S_DF_MASK, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @NAU8825_I2S_BP_MASK, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @NAU8825_I2S_PCMB_MASK, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @regmap_update_bits(i32 %75, i32 %76, i32 %83, i32 %84)
  %86 = load %struct.nau8825*, %struct.nau8825** %7, align 8
  %87 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @NAU8825_REG_I2S_PCM_CTRL2, align 4
  %90 = load i32, i32* @NAU8825_I2S_MS_MASK, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @regmap_update_bits(i32 %88, i32 %89, i32 %90, i32 %91)
  %93 = load %struct.nau8825*, %struct.nau8825** %7, align 8
  %94 = call i32 @nau8825_sema_release(%struct.nau8825* %93)
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %68, %65, %35, %23
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.nau8825* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @nau8825_sema_acquire(%struct.nau8825*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @nau8825_sema_release(%struct.nau8825*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
