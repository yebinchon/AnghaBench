; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8540.c_nau8540_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8540.c_nau8540_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.nau8540 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NAU8540_TDM_MODE = common dso_local global i32 0, align 4
@NAU8540_TDM_OFFSET_EN = common dso_local global i32 0, align 4
@NAU8540_REG_PCM_CTRL4 = common dso_local global i32 0, align 4
@NAU8540_TDM_TX_MASK = common dso_local global i32 0, align 4
@NAU8540_REG_PCM_CTRL1 = common dso_local global i32 0, align 4
@NAU8540_I2S_DO12_OE = common dso_local global i32 0, align 4
@NAU8540_REG_PCM_CTRL2 = common dso_local global i32 0, align 4
@NAU8540_I2S_DO34_OE = common dso_local global i32 0, align 4
@NAU8540_I2S_TSLOT_L_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @nau8540_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8540_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.nau8540*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %16, i32 0, i32 0
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %17, align 8
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %12, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %20 = call %struct.nau8540* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.nau8540* %20, %struct.nau8540** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp sgt i32 %21, 4
  br i1 %22, label %31, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 240
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 15
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %5
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %84

34:                                               ; preds = %27, %23
  %35 = load i32, i32* @NAU8540_TDM_MODE, align 4
  %36 = load i32, i32* @NAU8540_TDM_OFFSET_EN, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %15, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 240
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load i32, i32* %11, align 4
  %45 = mul nsw i32 4, %44
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %8, align 4
  %47 = lshr i32 %46, 4
  %48 = load i32, i32* %15, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %15, align 4
  br label %54

50:                                               ; preds = %34
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %15, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %15, align 4
  br label %54

54:                                               ; preds = %50, %43
  %55 = load %struct.nau8540*, %struct.nau8540** %13, align 8
  %56 = getelementptr inbounds %struct.nau8540, %struct.nau8540* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @NAU8540_REG_PCM_CTRL4, align 4
  %59 = load i32, i32* @NAU8540_TDM_MODE, align 4
  %60 = load i32, i32* @NAU8540_TDM_OFFSET_EN, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @NAU8540_TDM_TX_MASK, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @regmap_update_bits(i32 %57, i32 %58, i32 %63, i32 %64)
  %66 = load %struct.nau8540*, %struct.nau8540** %13, align 8
  %67 = getelementptr inbounds %struct.nau8540, %struct.nau8540* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @NAU8540_REG_PCM_CTRL1, align 4
  %70 = load i32, i32* @NAU8540_I2S_DO12_OE, align 4
  %71 = load i32, i32* @NAU8540_I2S_DO12_OE, align 4
  %72 = call i32 @regmap_update_bits(i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.nau8540*, %struct.nau8540** %13, align 8
  %74 = getelementptr inbounds %struct.nau8540, %struct.nau8540* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @NAU8540_REG_PCM_CTRL2, align 4
  %77 = load i32, i32* @NAU8540_I2S_DO34_OE, align 4
  %78 = load i32, i32* @NAU8540_I2S_TSLOT_L_MASK, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @NAU8540_I2S_DO34_OE, align 4
  %81 = load i32, i32* %14, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @regmap_update_bits(i32 %75, i32 %76, i32 %79, i32 %82)
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %54, %31
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local %struct.nau8540* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
