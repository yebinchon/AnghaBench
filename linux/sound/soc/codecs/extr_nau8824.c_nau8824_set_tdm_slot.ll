; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.nau8824 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NAU8824_TDM_MODE = common dso_local global i32 0, align 4
@NAU8824_TDM_OFFSET_EN = common dso_local global i32 0, align 4
@NAU8824_TDM_DACR_RX_SFT = common dso_local global i32 0, align 4
@NAU8824_REG_TDM_CTRL = common dso_local global i32 0, align 4
@NAU8824_TDM_DACL_RX_MASK = common dso_local global i32 0, align 4
@NAU8824_TDM_DACR_RX_MASK = common dso_local global i32 0, align 4
@NAU8824_TDM_TX_MASK = common dso_local global i32 0, align 4
@NAU8824_REG_PORT0_LEFT_TIME_SLOT = common dso_local global i32 0, align 4
@NAU8824_TSLOT_L_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @nau8824_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8824_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.nau8824*, align 8
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
  %20 = call %struct.nau8824* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.nau8824* %20, %struct.nau8824** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp sgt i32 %21, 4
  br i1 %22, label %55, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 240
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 15
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %55, label %31

31:                                               ; preds = %27, %23
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, 240
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, 15
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %35, %31
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, 240
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, 15
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %43, %39
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 15
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, 240
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51, %43, %35, %27, %5
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %118

58:                                               ; preds = %51, %47
  %59 = load i32, i32* @NAU8824_TDM_MODE, align 4
  %60 = load i32, i32* @NAU8824_TDM_OFFSET_EN, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %15, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, 240
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %58
  %68 = load i32, i32* %11, align 4
  %69 = mul nsw i32 4, %68
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %8, align 4
  %71 = lshr i32 %70, 4
  %72 = load i32, i32* %15, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %15, align 4
  br label %78

74:                                               ; preds = %58
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %15, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %74, %67
  %79 = load i32, i32* %9, align 4
  %80 = and i32 %79, 240
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load i32, i32* %9, align 4
  %84 = lshr i32 %83, 4
  %85 = load i32, i32* @NAU8824_TDM_DACR_RX_SFT, align 4
  %86 = shl i32 %84, %85
  %87 = load i32, i32* %15, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %15, align 4
  br label %95

89:                                               ; preds = %78
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @NAU8824_TDM_DACR_RX_SFT, align 4
  %92 = shl i32 %90, %91
  %93 = load i32, i32* %15, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %15, align 4
  br label %95

95:                                               ; preds = %89, %82
  %96 = load %struct.nau8824*, %struct.nau8824** %13, align 8
  %97 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @NAU8824_REG_TDM_CTRL, align 4
  %100 = load i32, i32* @NAU8824_TDM_MODE, align 4
  %101 = load i32, i32* @NAU8824_TDM_OFFSET_EN, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @NAU8824_TDM_DACL_RX_MASK, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @NAU8824_TDM_DACR_RX_MASK, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @NAU8824_TDM_TX_MASK, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @regmap_update_bits(i32 %98, i32 %99, i32 %108, i32 %109)
  %111 = load %struct.nau8824*, %struct.nau8824** %13, align 8
  %112 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @NAU8824_REG_PORT0_LEFT_TIME_SLOT, align 4
  %115 = load i32, i32* @NAU8824_TSLOT_L_MASK, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @regmap_update_bits(i32 %113, i32 %114, i32 %115, i32 %116)
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %95, %55
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local %struct.nau8824* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
