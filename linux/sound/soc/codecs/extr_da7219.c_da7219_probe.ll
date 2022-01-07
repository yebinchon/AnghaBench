; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.da7219_priv = type { i32, i32*, i64, i32, i32, i32, %struct.snd_soc_component* }

@DA7219_CHIP_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to read chip revision: %d\0A\00", align 1
@DA7219_CHIP_MINOR_MASK = common dso_local global i32 0, align 4
@da7219_rev_aa_patch = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to register AA patch: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@DA7219_PC_COUNT = common dso_local global i32 0, align 4
@DA7219_PC_FREERUN_MASK = common dso_local global i32 0, align 4
@DA7219_MIXIN_L_CTRL = common dso_local global i32 0, align 4
@DA7219_MIXIN_L_AMP_RAMP_EN_MASK = common dso_local global i32 0, align 4
@DA7219_ADC_L_CTRL = common dso_local global i32 0, align 4
@DA7219_ADC_L_RAMP_EN_MASK = common dso_local global i32 0, align 4
@DA7219_DAC_L_CTRL = common dso_local global i32 0, align 4
@DA7219_DAC_L_RAMP_EN_MASK = common dso_local global i32 0, align 4
@DA7219_DAC_R_CTRL = common dso_local global i32 0, align 4
@DA7219_DAC_R_RAMP_EN_MASK = common dso_local global i32 0, align 4
@DA7219_HP_L_CTRL = common dso_local global i32 0, align 4
@DA7219_HP_L_AMP_RAMP_EN_MASK = common dso_local global i32 0, align 4
@DA7219_HP_R_CTRL = common dso_local global i32 0, align 4
@DA7219_HP_R_AMP_RAMP_EN_MASK = common dso_local global i32 0, align 4
@DA7219_HP_L_AMP_MIN_GAIN_EN_MASK = common dso_local global i32 0, align 4
@DA7219_HP_R_AMP_MIN_GAIN_EN_MASK = common dso_local global i32 0, align 4
@DA7219_TONE_GEN_CYCLES = common dso_local global i32 0, align 4
@DA7219_BEEP_CYCLES_MASK = common dso_local global i32 0, align 4
@DA7219_NUM_SUPPLIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @da7219_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7219_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.da7219_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.da7219_priv* %8, %struct.da7219_priv** %4, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = load %struct.da7219_priv*, %struct.da7219_priv** %4, align 8
  %11 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %10, i32 0, i32 6
  store %struct.snd_soc_component* %9, %struct.snd_soc_component** %11, align 8
  %12 = load %struct.da7219_priv*, %struct.da7219_priv** %4, align 8
  %13 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %12, i32 0, i32 5
  %14 = call i32 @mutex_init(i32* %13)
  %15 = load %struct.da7219_priv*, %struct.da7219_priv** %4, align 8
  %16 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %15, i32 0, i32 4
  %17 = call i32 @mutex_init(i32* %16)
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %19 = call i32 @da7219_handle_supplies(%struct.snd_soc_component* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %177

24:                                               ; preds = %1
  %25 = load %struct.da7219_priv*, %struct.da7219_priv** %4, align 8
  %26 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @DA7219_CHIP_REVISION, align 4
  %29 = call i32 @regmap_read(i32 %27, i32 %28, i32* %5)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %34 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %170

38:                                               ; preds = %24
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @DA7219_CHIP_MINOR_MASK, align 4
  %41 = and i32 %39, %40
  switch i32 %41, label %59 [
    i32 0, label %42
  ]

42:                                               ; preds = %38
  %43 = load %struct.da7219_priv*, %struct.da7219_priv** %4, align 8
  %44 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @da7219_rev_aa_patch, align 4
  %47 = load i32, i32* @da7219_rev_aa_patch, align 4
  %48 = call i32 @ARRAY_SIZE(i32 %47)
  %49 = call i32 @regmap_register_patch(i32 %45, i32 %46, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %42
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %54 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %170

58:                                               ; preds = %42
  br label %60

59:                                               ; preds = %38
  br label %60

60:                                               ; preds = %59, %58
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %62 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @dev_get_platdata(i32 %63)
  %65 = load %struct.da7219_priv*, %struct.da7219_priv** %4, align 8
  %66 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = load %struct.da7219_priv*, %struct.da7219_priv** %4, align 8
  %68 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %60
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %73 = call i64 @da7219_fw_to_pdata(%struct.snd_soc_component* %72)
  %74 = load %struct.da7219_priv*, %struct.da7219_priv** %4, align 8
  %75 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %71, %60
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %78 = call i32 @da7219_handle_pdata(%struct.snd_soc_component* %77)
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %80 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32* @devm_clk_get(i32 %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.da7219_priv*, %struct.da7219_priv** %4, align 8
  %84 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %83, i32 0, i32 1
  store i32* %82, i32** %84, align 8
  %85 = load %struct.da7219_priv*, %struct.da7219_priv** %4, align 8
  %86 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = call i64 @IS_ERR(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %76
  %91 = load %struct.da7219_priv*, %struct.da7219_priv** %4, align 8
  %92 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @PTR_ERR(i32* %93)
  %95 = load i32, i32* @ENOENT, align 4
  %96 = sub nsw i32 0, %95
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %90
  %99 = load %struct.da7219_priv*, %struct.da7219_priv** %4, align 8
  %100 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @PTR_ERR(i32* %101)
  store i32 %102, i32* %6, align 4
  br label %170

103:                                              ; preds = %90
  %104 = load %struct.da7219_priv*, %struct.da7219_priv** %4, align 8
  %105 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %104, i32 0, i32 1
  store i32* null, i32** %105, align 8
  br label %106

106:                                              ; preds = %103
  br label %107

107:                                              ; preds = %106, %76
  %108 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %109 = call i32 @da7219_register_dai_clks(%struct.snd_soc_component* %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %2, align 4
  br label %177

114:                                              ; preds = %107
  %115 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %116 = load i32, i32* @DA7219_PC_COUNT, align 4
  %117 = load i32, i32* @DA7219_PC_FREERUN_MASK, align 4
  %118 = load i32, i32* @DA7219_PC_FREERUN_MASK, align 4
  %119 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %115, i32 %116, i32 %117, i32 %118)
  %120 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %121 = load i32, i32* @DA7219_MIXIN_L_CTRL, align 4
  %122 = load i32, i32* @DA7219_MIXIN_L_AMP_RAMP_EN_MASK, align 4
  %123 = load i32, i32* @DA7219_MIXIN_L_AMP_RAMP_EN_MASK, align 4
  %124 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %120, i32 %121, i32 %122, i32 %123)
  %125 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %126 = load i32, i32* @DA7219_ADC_L_CTRL, align 4
  %127 = load i32, i32* @DA7219_ADC_L_RAMP_EN_MASK, align 4
  %128 = load i32, i32* @DA7219_ADC_L_RAMP_EN_MASK, align 4
  %129 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %125, i32 %126, i32 %127, i32 %128)
  %130 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %131 = load i32, i32* @DA7219_DAC_L_CTRL, align 4
  %132 = load i32, i32* @DA7219_DAC_L_RAMP_EN_MASK, align 4
  %133 = load i32, i32* @DA7219_DAC_L_RAMP_EN_MASK, align 4
  %134 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %130, i32 %131, i32 %132, i32 %133)
  %135 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %136 = load i32, i32* @DA7219_DAC_R_CTRL, align 4
  %137 = load i32, i32* @DA7219_DAC_R_RAMP_EN_MASK, align 4
  %138 = load i32, i32* @DA7219_DAC_R_RAMP_EN_MASK, align 4
  %139 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %135, i32 %136, i32 %137, i32 %138)
  %140 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %141 = load i32, i32* @DA7219_HP_L_CTRL, align 4
  %142 = load i32, i32* @DA7219_HP_L_AMP_RAMP_EN_MASK, align 4
  %143 = load i32, i32* @DA7219_HP_L_AMP_RAMP_EN_MASK, align 4
  %144 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %140, i32 %141, i32 %142, i32 %143)
  %145 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %146 = load i32, i32* @DA7219_HP_R_CTRL, align 4
  %147 = load i32, i32* @DA7219_HP_R_AMP_RAMP_EN_MASK, align 4
  %148 = load i32, i32* @DA7219_HP_R_AMP_RAMP_EN_MASK, align 4
  %149 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %145, i32 %146, i32 %147, i32 %148)
  %150 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %151 = load i32, i32* @DA7219_HP_L_CTRL, align 4
  %152 = load i32, i32* @DA7219_HP_L_AMP_MIN_GAIN_EN_MASK, align 4
  %153 = load i32, i32* @DA7219_HP_L_AMP_MIN_GAIN_EN_MASK, align 4
  %154 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %150, i32 %151, i32 %152, i32 %153)
  %155 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %156 = load i32, i32* @DA7219_HP_R_CTRL, align 4
  %157 = load i32, i32* @DA7219_HP_R_AMP_MIN_GAIN_EN_MASK, align 4
  %158 = load i32, i32* @DA7219_HP_R_AMP_MIN_GAIN_EN_MASK, align 4
  %159 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %155, i32 %156, i32 %157, i32 %158)
  %160 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %161 = load i32, i32* @DA7219_TONE_GEN_CYCLES, align 4
  %162 = load i32, i32* @DA7219_BEEP_CYCLES_MASK, align 4
  %163 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %160, i32 %161, i32 %162)
  %164 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %165 = call i32 @da7219_aad_init(%struct.snd_soc_component* %164)
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %114
  br label %170

169:                                              ; preds = %114
  store i32 0, i32* %2, align 4
  br label %177

170:                                              ; preds = %168, %98, %52, %32
  %171 = load i32, i32* @DA7219_NUM_SUPPLIES, align 4
  %172 = load %struct.da7219_priv*, %struct.da7219_priv** %4, align 8
  %173 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @regulator_bulk_disable(i32 %171, i32 %174)
  %176 = load i32, i32* %6, align 4
  store i32 %176, i32* %2, align 4
  br label %177

177:                                              ; preds = %170, %169, %112, %22
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @da7219_handle_supplies(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_register_patch(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @dev_get_platdata(i32) #1

declare dso_local i64 @da7219_fw_to_pdata(%struct.snd_soc_component*) #1

declare dso_local i32 @da7219_handle_pdata(%struct.snd_soc_component*) #1

declare dso_local i32* @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @da7219_register_dai_clks(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @da7219_aad_init(%struct.snd_soc_component*) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
