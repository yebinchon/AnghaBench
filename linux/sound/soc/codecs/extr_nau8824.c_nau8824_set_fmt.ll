; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.nau8824 = type { i32 }

@HZ = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@NAU8824_I2S_MS_MASTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@NAU8824_I2S_BP_INV = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@NAU8824_I2S_DF_I2S = common dso_local global i32 0, align 4
@NAU8824_I2S_DF_LEFT = common dso_local global i32 0, align 4
@NAU8824_I2S_DF_RIGTH = common dso_local global i32 0, align 4
@NAU8824_I2S_DF_PCM_AB = common dso_local global i32 0, align 4
@NAU8824_I2S_PCMB_EN = common dso_local global i32 0, align 4
@NAU8824_REG_PORT0_I2S_PCM_CTRL_1 = common dso_local global i32 0, align 4
@NAU8824_I2S_DF_MASK = common dso_local global i32 0, align 4
@NAU8824_I2S_BP_MASK = common dso_local global i32 0, align 4
@NAU8824_REG_PORT0_I2S_PCM_CTRL_2 = common dso_local global i32 0, align 4
@NAU8824_I2S_MS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @nau8824_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8824_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.nau8824*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.nau8824* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.nau8824* %14, %struct.nau8824** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.nau8824*, %struct.nau8824** %7, align 8
  %16 = load i32, i32* @HZ, align 4
  %17 = call i32 @nau8824_sema_acquire(%struct.nau8824* %15, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %20 = and i32 %18, %19
  switch i32 %20, label %26 [
    i32 136, label %21
    i32 135, label %25
  ]

21:                                               ; preds = %2
  %22 = load i32, i32* @NAU8824_I2S_MS_MASTER, align 4
  %23 = load i32, i32* %9, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %9, align 4
  br label %29

25:                                               ; preds = %2
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %92

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %32 = and i32 %30, %31
  switch i32 %32, label %38 [
    i32 129, label %33
    i32 131, label %34
  ]

33:                                               ; preds = %29
  br label %41

34:                                               ; preds = %29
  %35 = load i32, i32* @NAU8824_I2S_BP_INV, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %41

38:                                               ; preds = %29
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %92

41:                                               ; preds = %34, %33
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %44 = and i32 %42, %43
  switch i32 %44, label %68 [
    i32 132, label %45
    i32 130, label %49
    i32 128, label %53
    i32 134, label %57
    i32 133, label %61
  ]

45:                                               ; preds = %41
  %46 = load i32, i32* @NAU8824_I2S_DF_I2S, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %71

49:                                               ; preds = %41
  %50 = load i32, i32* @NAU8824_I2S_DF_LEFT, align 4
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  br label %71

53:                                               ; preds = %41
  %54 = load i32, i32* @NAU8824_I2S_DF_RIGTH, align 4
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %71

57:                                               ; preds = %41
  %58 = load i32, i32* @NAU8824_I2S_DF_PCM_AB, align 4
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %71

61:                                               ; preds = %41
  %62 = load i32, i32* @NAU8824_I2S_DF_PCM_AB, align 4
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* @NAU8824_I2S_PCMB_EN, align 4
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %71

68:                                               ; preds = %41
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %92

71:                                               ; preds = %61, %57, %53, %49, %45
  %72 = load %struct.nau8824*, %struct.nau8824** %7, align 8
  %73 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @NAU8824_REG_PORT0_I2S_PCM_CTRL_1, align 4
  %76 = load i32, i32* @NAU8824_I2S_DF_MASK, align 4
  %77 = load i32, i32* @NAU8824_I2S_BP_MASK, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @NAU8824_I2S_PCMB_EN, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @regmap_update_bits(i32 %74, i32 %75, i32 %80, i32 %81)
  %83 = load %struct.nau8824*, %struct.nau8824** %7, align 8
  %84 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NAU8824_REG_PORT0_I2S_PCM_CTRL_2, align 4
  %87 = load i32, i32* @NAU8824_I2S_MS_MASK, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @regmap_update_bits(i32 %85, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.nau8824*, %struct.nau8824** %7, align 8
  %91 = call i32 @nau8824_sema_release(%struct.nau8824* %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %71, %68, %38, %26
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.nau8824* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @nau8824_sema_acquire(%struct.nau8824*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @nau8824_sema_release(%struct.nau8824*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
