; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98926.c_max98926_dai_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98926.c_max98926_dai_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.max98926_priv = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAX98926_FORMAT = common dso_local global i32 0, align 4
@MAX98926_DAI_CHANSZ_MASK = common dso_local global i32 0, align 4
@MAX98926_DAI_CHANSZ_16 = common dso_local global i32 0, align 4
@MAX98926_DAI_CHANSZ_24 = common dso_local global i32 0, align 4
@MAX98926_DAI_CHANSZ_32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"format unsupported %d\0A\00", align 1
@MAX98926_DAI_CLK_MODE2 = common dso_local global i32 0, align 4
@MAX98926_DAI_BSEL_MASK = common dso_local global i32 0, align 4
@MAX98926_DAI_BSEL_32 = common dso_local global i32 0, align 4
@MAX98926_DAI_BSEL_48 = common dso_local global i32 0, align 4
@MAX98926_DAI_BSEL_64 = common dso_local global i32 0, align 4
@rate_table = common dso_local global %struct.TYPE_3__* null, align 8
@MAX98926_DAI_SR_MASK = common dso_local global i32 0, align 4
@MAX98926_DAI_SR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @max98926_dai_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98926_dai_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_soc_component*, align 8
  %12 = alloca %struct.max98926_priv*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %17 = call i32 @params_rate(%struct.snd_pcm_hw_params* %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %18, i32 0, i32 0
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %19, align 8
  store %struct.snd_soc_component* %20, %struct.snd_soc_component** %11, align 8
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %22 = call %struct.max98926_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %21)
  store %struct.max98926_priv* %22, %struct.max98926_priv** %12, align 8
  %23 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %24 = call i32 @params_format(%struct.snd_pcm_hw_params* %23)
  switch i32 %24, label %55 [
    i32 130, label %25
    i32 129, label %35
    i32 128, label %45
  ]

25:                                               ; preds = %3
  %26 = load %struct.max98926_priv*, %struct.max98926_priv** %12, align 8
  %27 = getelementptr inbounds %struct.max98926_priv, %struct.max98926_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MAX98926_FORMAT, align 4
  %30 = load i32, i32* @MAX98926_DAI_CHANSZ_MASK, align 4
  %31 = load i32, i32* @MAX98926_DAI_CHANSZ_16, align 4
  %32 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.max98926_priv*, %struct.max98926_priv** %12, align 8
  %34 = getelementptr inbounds %struct.max98926_priv, %struct.max98926_priv* %33, i32 0, i32 0
  store i32 16, i32* %34, align 4
  br label %64

35:                                               ; preds = %3
  %36 = load %struct.max98926_priv*, %struct.max98926_priv** %12, align 8
  %37 = getelementptr inbounds %struct.max98926_priv, %struct.max98926_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MAX98926_FORMAT, align 4
  %40 = load i32, i32* @MAX98926_DAI_CHANSZ_MASK, align 4
  %41 = load i32, i32* @MAX98926_DAI_CHANSZ_24, align 4
  %42 = call i32 @regmap_update_bits(i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.max98926_priv*, %struct.max98926_priv** %12, align 8
  %44 = getelementptr inbounds %struct.max98926_priv, %struct.max98926_priv* %43, i32 0, i32 0
  store i32 24, i32* %44, align 4
  br label %64

45:                                               ; preds = %3
  %46 = load %struct.max98926_priv*, %struct.max98926_priv** %12, align 8
  %47 = getelementptr inbounds %struct.max98926_priv, %struct.max98926_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MAX98926_FORMAT, align 4
  %50 = load i32, i32* @MAX98926_DAI_CHANSZ_MASK, align 4
  %51 = load i32, i32* @MAX98926_DAI_CHANSZ_32, align 4
  %52 = call i32 @regmap_update_bits(i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.max98926_priv*, %struct.max98926_priv** %12, align 8
  %54 = getelementptr inbounds %struct.max98926_priv, %struct.max98926_priv* %53, i32 0, i32 0
  store i32 32, i32* %54, align 4
  br label %64

55:                                               ; preds = %3
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %57 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %60 = call i32 @params_format(%struct.snd_pcm_hw_params* %59)
  %61 = call i32 @dev_dbg(i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %141

64:                                               ; preds = %45, %35, %25
  %65 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %66 = call i32 @params_channels(%struct.snd_pcm_hw_params* %65)
  %67 = load %struct.max98926_priv*, %struct.max98926_priv** %12, align 8
  %68 = getelementptr inbounds %struct.max98926_priv, %struct.max98926_priv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %66, %69
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  switch i32 %71, label %96 [
    i32 32, label %72
    i32 48, label %80
    i32 64, label %88
  ]

72:                                               ; preds = %64
  %73 = load %struct.max98926_priv*, %struct.max98926_priv** %12, align 8
  %74 = getelementptr inbounds %struct.max98926_priv, %struct.max98926_priv* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @MAX98926_DAI_CLK_MODE2, align 4
  %77 = load i32, i32* @MAX98926_DAI_BSEL_MASK, align 4
  %78 = load i32, i32* @MAX98926_DAI_BSEL_32, align 4
  %79 = call i32 @regmap_update_bits(i32 %75, i32 %76, i32 %77, i32 %78)
  br label %99

80:                                               ; preds = %64
  %81 = load %struct.max98926_priv*, %struct.max98926_priv** %12, align 8
  %82 = getelementptr inbounds %struct.max98926_priv, %struct.max98926_priv* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @MAX98926_DAI_CLK_MODE2, align 4
  %85 = load i32, i32* @MAX98926_DAI_BSEL_MASK, align 4
  %86 = load i32, i32* @MAX98926_DAI_BSEL_48, align 4
  %87 = call i32 @regmap_update_bits(i32 %83, i32 %84, i32 %85, i32 %86)
  br label %99

88:                                               ; preds = %64
  %89 = load %struct.max98926_priv*, %struct.max98926_priv** %12, align 8
  %90 = getelementptr inbounds %struct.max98926_priv, %struct.max98926_priv* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @MAX98926_DAI_CLK_MODE2, align 4
  %93 = load i32, i32* @MAX98926_DAI_BSEL_MASK, align 4
  %94 = load i32, i32* @MAX98926_DAI_BSEL_64, align 4
  %95 = call i32 @regmap_update_bits(i32 %91, i32 %92, i32 %93, i32 %94)
  br label %99

96:                                               ; preds = %64
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %141

99:                                               ; preds = %88, %80, %72
  store i32 0, i32* %10, align 4
  br label %100

100:                                              ; preds = %122, %99
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rate_table, align 8
  %103 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %102)
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %105, label %125

105:                                              ; preds = %100
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rate_table, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp sge i32 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %105
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rate_table, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %8, align 4
  br label %125

121:                                              ; preds = %105
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %100

125:                                              ; preds = %114, %100
  %126 = load i32, i32* %8, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %4, align 4
  br label %141

131:                                              ; preds = %125
  %132 = load %struct.max98926_priv*, %struct.max98926_priv** %12, align 8
  %133 = getelementptr inbounds %struct.max98926_priv, %struct.max98926_priv* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @MAX98926_DAI_CLK_MODE2, align 4
  %136 = load i32, i32* @MAX98926_DAI_SR_MASK, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @MAX98926_DAI_SR_SHIFT, align 4
  %139 = shl i32 %137, %138
  %140 = call i32 @regmap_update_bits(i32 %134, i32 %135, i32 %136, i32 %139)
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %131, %128, %96, %55
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local %struct.max98926_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
