; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da732x.c_da732x_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da732x.c_da732x_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@DA732X_REG_AIFA1 = common dso_local global i32 0, align 4
@DA732X_REG_AIFA3 = common dso_local global i32 0, align 4
@DA732X_PC_PULSE_AIFA = common dso_local global i32 0, align 4
@DA732X_PC_RESYNC_NOT_AUT = common dso_local global i32 0, align 4
@DA732X_PC_SAME = common dso_local global i32 0, align 4
@DA732X_REG_AIFB1 = common dso_local global i32 0, align 4
@DA732X_REG_AIFB3 = common dso_local global i32 0, align 4
@DA732X_PC_PULSE_AIFB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@DA732X_AIF_SLAVE = common dso_local global i32 0, align 4
@DA732X_AIFM_FRAME_64 = common dso_local global i32 0, align 4
@DA732X_AIFM_SRC_SEL_AIFA = common dso_local global i32 0, align 4
@DA732X_AIF_CLK_FROM_SRC = common dso_local global i32 0, align 4
@DA732X_CLK_GENERATION_AIF_A = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@DA732X_AIF_I2S_MODE = common dso_local global i32 0, align 4
@DA732X_AIF_RIGHT_J_MODE = common dso_local global i32 0, align 4
@DA732X_AIF_LEFT_J_MODE = common dso_local global i32 0, align 4
@DA732X_AIF_DSP_MODE = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@DA732X_AIF_BCLK_INV = common dso_local global i32 0, align 4
@DA732X_AIF_WCLK_INV = common dso_local global i32 0, align 4
@DA732X_REG_AIF_MCLK = common dso_local global i32 0, align 4
@DA732X_AIF1_CLK_MASK = common dso_local global i32 0, align 4
@DA732X_AIF_MODE_MASK = common dso_local global i32 0, align 4
@DA732X_REG_PC_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @da732x_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da732x_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 1
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %6, align 8
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %35 [
    i32 139, label %19
    i32 138, label %27
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* @DA732X_REG_AIFA1, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @DA732X_REG_AIFA3, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* @DA732X_PC_PULSE_AIFA, align 4
  %23 = load i32, i32* @DA732X_PC_RESYNC_NOT_AUT, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @DA732X_PC_SAME, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %8, align 4
  br label %38

27:                                               ; preds = %2
  %28 = load i32, i32* @DA732X_REG_AIFB1, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @DA732X_REG_AIFB3, align 4
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* @DA732X_PC_PULSE_AIFB, align 4
  %31 = load i32, i32* @DA732X_PC_RESYNC_NOT_AUT, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @DA732X_PC_SAME, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %8, align 4
  br label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %134

38:                                               ; preds = %27, %19
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %41 = and i32 %39, %40
  switch i32 %41, label %50 [
    i32 136, label %42
    i32 137, label %47
  ]

42:                                               ; preds = %38
  %43 = load i32, i32* @DA732X_AIF_SLAVE, align 4
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* @DA732X_AIFM_FRAME_64, align 4
  %45 = load i32, i32* @DA732X_AIFM_SRC_SEL_AIFA, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %7, align 4
  br label %53

47:                                               ; preds = %38
  %48 = load i32, i32* @DA732X_AIF_CLK_FROM_SRC, align 4
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* @DA732X_CLK_GENERATION_AIF_A, align 4
  store i32 %49, i32* %7, align 4
  br label %53

50:                                               ; preds = %38
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %134

53:                                               ; preds = %47, %42
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %56 = and i32 %54, %55
  switch i32 %56, label %65 [
    i32 134, label %57
    i32 128, label %59
    i32 131, label %61
    i32 135, label %63
  ]

57:                                               ; preds = %53
  %58 = load i32, i32* @DA732X_AIF_I2S_MODE, align 4
  store i32 %58, i32* %12, align 4
  br label %68

59:                                               ; preds = %53
  %60 = load i32, i32* @DA732X_AIF_RIGHT_J_MODE, align 4
  store i32 %60, i32* %12, align 4
  br label %68

61:                                               ; preds = %53
  %62 = load i32, i32* @DA732X_AIF_LEFT_J_MODE, align 4
  store i32 %62, i32* %12, align 4
  br label %68

63:                                               ; preds = %53
  %64 = load i32, i32* @DA732X_AIF_DSP_MODE, align 4
  store i32 %64, i32* %12, align 4
  br label %68

65:                                               ; preds = %53
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %134

68:                                               ; preds = %63, %61, %59, %57
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %71 = and i32 %69, %70
  switch i32 %71, label %108 [
    i32 135, label %72
    i32 134, label %85
    i32 128, label %85
    i32 131, label %85
  ]

72:                                               ; preds = %68
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %75 = and i32 %73, %74
  switch i32 %75, label %81 [
    i32 129, label %76
    i32 132, label %77
  ]

76:                                               ; preds = %72
  br label %84

77:                                               ; preds = %72
  %78 = load i32, i32* @DA732X_AIF_BCLK_INV, align 4
  %79 = load i32, i32* %12, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %12, align 4
  br label %84

81:                                               ; preds = %72
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %134

84:                                               ; preds = %77, %76
  br label %111

85:                                               ; preds = %68, %68, %68
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %88 = and i32 %86, %87
  switch i32 %88, label %104 [
    i32 129, label %89
    i32 133, label %90
    i32 132, label %96
    i32 130, label %100
  ]

89:                                               ; preds = %85
  br label %107

90:                                               ; preds = %85
  %91 = load i32, i32* @DA732X_AIF_BCLK_INV, align 4
  %92 = load i32, i32* @DA732X_AIF_WCLK_INV, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* %12, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %12, align 4
  br label %107

96:                                               ; preds = %85
  %97 = load i32, i32* @DA732X_AIF_BCLK_INV, align 4
  %98 = load i32, i32* %12, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %12, align 4
  br label %107

100:                                              ; preds = %85
  %101 = load i32, i32* @DA732X_AIF_WCLK_INV, align 4
  %102 = load i32, i32* %12, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %12, align 4
  br label %107

104:                                              ; preds = %85
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %134

107:                                              ; preds = %100, %96, %90, %89
  br label %111

108:                                              ; preds = %68
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %134

111:                                              ; preds = %107, %84
  %112 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %113 = load i32, i32* @DA732X_REG_AIF_MCLK, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %112, i32 %113, i32 %114)
  %116 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @DA732X_AIF1_CLK_MASK, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %116, i32 %117, i32 %118, i32 %119)
  %121 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @DA732X_AIF_BCLK_INV, align 4
  %124 = load i32, i32* @DA732X_AIF_WCLK_INV, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @DA732X_AIF_MODE_MASK, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %121, i32 %122, i32 %127, i32 %128)
  %130 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %131 = load i32, i32* @DA732X_REG_PC_CTRL, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %130, i32 %131, i32 %132)
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %111, %108, %104, %81, %65, %50, %35
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
