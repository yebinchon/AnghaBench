; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7213.c_da7213_alc_calib.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7213.c_da7213_alc_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.da7213_priv = type { i64 }

@DA7213_ADC_L_CTRL = common dso_local global i32 0, align 4
@DA7213_ADC_R_CTRL = common dso_local global i32 0, align 4
@DA7213_MIXIN_L_SELECT = common dso_local global i32 0, align 4
@DA7213_MIXIN_R_SELECT = common dso_local global i32 0, align 4
@DA7213_MIC_1_CTRL = common dso_local global i32 0, align 4
@DA7213_MIC_2_CTRL = common dso_local global i32 0, align 4
@DA7213_ADC_EN = common dso_local global i32 0, align 4
@DA7213_MIXIN_L_MIX_SELECT_MIC_1 = common dso_local global i32 0, align 4
@DA7213_MIXIN_L_MIX_SELECT_MIC_2 = common dso_local global i32 0, align 4
@DA7213_MIXIN_R_MIX_SELECT_MIC_2 = common dso_local global i32 0, align 4
@DA7213_MIXIN_R_MIX_SELECT_MIC_1 = common dso_local global i32 0, align 4
@DA7213_MUTE_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @da7213_alc_calib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da7213_alc_calib(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.da7213_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %11 = call %struct.da7213_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.da7213_priv* %11, %struct.da7213_priv** %3, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %13 = load i32, i32* @DA7213_ADC_L_CTRL, align 4
  %14 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %16 = load i32, i32* @DA7213_ADC_R_CTRL, align 4
  %17 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %19 = load i32, i32* @DA7213_MIXIN_L_SELECT, align 4
  %20 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %22 = load i32, i32* @DA7213_MIXIN_R_SELECT, align 4
  %23 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %25 = load i32, i32* @DA7213_MIC_1_CTRL, align 4
  %26 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %28 = load i32, i32* @DA7213_MIC_2_CTRL, align 4
  %29 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %31 = load i32, i32* @DA7213_ADC_L_CTRL, align 4
  %32 = load i32, i32* @DA7213_ADC_EN, align 4
  %33 = load i32, i32* @DA7213_ADC_EN, align 4
  %34 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %36 = load i32, i32* @DA7213_ADC_R_CTRL, align 4
  %37 = load i32, i32* @DA7213_ADC_EN, align 4
  %38 = load i32, i32* @DA7213_ADC_EN, align 4
  %39 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %41 = load i32, i32* @DA7213_MIXIN_L_SELECT, align 4
  %42 = load i32, i32* @DA7213_MIXIN_L_MIX_SELECT_MIC_1, align 4
  %43 = load i32, i32* @DA7213_MIXIN_L_MIX_SELECT_MIC_2, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @DA7213_MIXIN_L_MIX_SELECT_MIC_1, align 4
  %46 = load i32, i32* @DA7213_MIXIN_L_MIX_SELECT_MIC_2, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %40, i32 %41, i32 %44, i32 %47)
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %50 = load i32, i32* @DA7213_MIXIN_R_SELECT, align 4
  %51 = load i32, i32* @DA7213_MIXIN_R_MIX_SELECT_MIC_2, align 4
  %52 = load i32, i32* @DA7213_MIXIN_R_MIX_SELECT_MIC_1, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @DA7213_MIXIN_R_MIX_SELECT_MIC_2, align 4
  %55 = load i32, i32* @DA7213_MIXIN_R_MIX_SELECT_MIC_1, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %49, i32 %50, i32 %53, i32 %56)
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %59 = load i32, i32* @DA7213_MIC_1_CTRL, align 4
  %60 = load i32, i32* @DA7213_MUTE_EN, align 4
  %61 = load i32, i32* @DA7213_MUTE_EN, align 4
  %62 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %58, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %64 = load i32, i32* @DA7213_MIC_2_CTRL, align 4
  %65 = load i32, i32* @DA7213_MUTE_EN, align 4
  %66 = load i32, i32* @DA7213_MUTE_EN, align 4
  %67 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.da7213_priv*, %struct.da7213_priv** %3, align 8
  %69 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %1
  %73 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %74 = call i32 @da7213_alc_calib_auto(%struct.snd_soc_component* %73)
  br label %78

75:                                               ; preds = %1
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %77 = call i32 @da7213_alc_calib_man(%struct.snd_soc_component* %76)
  br label %78

78:                                               ; preds = %75, %72
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %80 = load i32, i32* @DA7213_MIXIN_L_SELECT, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %79, i32 %80, i32 %81)
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %84 = load i32, i32* @DA7213_MIXIN_R_SELECT, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %83, i32 %84, i32 %85)
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %88 = load i32, i32* @DA7213_ADC_L_CTRL, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %87, i32 %88, i32 %89)
  %91 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %92 = load i32, i32* @DA7213_ADC_R_CTRL, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %91, i32 %92, i32 %93)
  %95 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %96 = load i32, i32* @DA7213_MIC_1_CTRL, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %95, i32 %96, i32 %97)
  %99 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %100 = load i32, i32* @DA7213_MIC_2_CTRL, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %99, i32 %100, i32 %101)
  ret void
}

declare dso_local %struct.da7213_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @da7213_alc_calib_auto(%struct.snd_soc_component*) #1

declare dso_local i32 @da7213_alc_calib_man(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
