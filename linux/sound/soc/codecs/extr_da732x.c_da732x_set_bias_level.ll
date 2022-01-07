; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da732x.c_da732x_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da732x.c_da732x_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.da732x_priv = type { i32, i32 }

@DA732X_REG_BIAS_EN = common dso_local global i32 0, align 4
@DA732X_BIAS_BOOST_MASK = common dso_local global i32 0, align 4
@DA732X_BIAS_BOOST_100PC = common dso_local global i32 0, align 4
@DA732X_REG_REF1 = common dso_local global i32 0, align 4
@DA732X_VMID_FASTCHG = common dso_local global i32 0, align 4
@DA732X_BIAS_EN = common dso_local global i32 0, align 4
@DA732X_STARTUP_DELAY = common dso_local global i32 0, align 4
@DA732X_REFBUFX2_EN = common dso_local global i32 0, align 4
@DA732X_REG_DATA_ROUTE = common dso_local global i32 0, align 4
@DA732X_BYPASS_DSP = common dso_local global i32 0, align 4
@DA732X_REG_DSP_CTRL = common dso_local global i32 0, align 4
@DA732X_DIGITAL_EN = common dso_local global i32 0, align 4
@DA732X_REG_SPARE1_OUT = common dso_local global i32 0, align 4
@DA732X_HP_DRIVER_EN = common dso_local global i32 0, align 4
@DA732X_HP_GATE_LOW = common dso_local global i32 0, align 4
@DA732X_HP_LOOP_GAIN_CTRL = common dso_local global i32 0, align 4
@DA732X_REG_HP_LIN1_GNDSEL = common dso_local global i32 0, align 4
@DA732X_HP_OUT_GNDSEL = common dso_local global i32 0, align 4
@DA732X_ENABLE_CP = common dso_local global i32 0, align 4
@DA732X_REG_CLK_EN1 = common dso_local global i32 0, align 4
@DA732X_SYS3_CLK_EN = common dso_local global i32 0, align 4
@DA732X_PC_CLK_EN = common dso_local global i32 0, align 4
@DA732X_REG_INP_ZC_EN = common dso_local global i32 0, align 4
@DA732X_MIC1_PRE_ZC_EN = common dso_local global i32 0, align 4
@DA732X_MIC1_ZC_EN = common dso_local global i32 0, align 4
@DA732X_MIC2_PRE_ZC_EN = common dso_local global i32 0, align 4
@DA732X_MIC2_ZC_EN = common dso_local global i32 0, align 4
@DA732X_AUXL_ZC_EN = common dso_local global i32 0, align 4
@DA732X_AUXR_ZC_EN = common dso_local global i32 0, align 4
@DA732X_MIC3_PRE_ZC_EN = common dso_local global i32 0, align 4
@DA732X_MIC3_ZC_EN = common dso_local global i32 0, align 4
@DA732X_REG_OUT_ZC_EN = common dso_local global i32 0, align 4
@DA732X_HPL_ZC_EN = common dso_local global i32 0, align 4
@DA732X_HPR_ZC_EN = common dso_local global i32 0, align 4
@DA732X_LIN2_ZC_EN = common dso_local global i32 0, align 4
@DA732X_LIN3_ZC_EN = common dso_local global i32 0, align 4
@DA732X_LIN4_ZC_EN = common dso_local global i32 0, align 4
@DA732X_BIAS_BOOST_50PC = common dso_local global i32 0, align 4
@DA732X_REG_PLL_CTRL = common dso_local global i32 0, align 4
@DA732X_PLL_EN = common dso_local global i32 0, align 4
@DA732X_DISABLE_CP = common dso_local global i32 0, align 4
@DA732X_BIAS_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @da732x_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da732x_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.da732x_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.da732x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.da732x_priv* %7, %struct.da732x_priv** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %132 [
    i32 130, label %9
    i32 129, label %15
    i32 128, label %16
    i32 131, label %117
  ]

9:                                                ; preds = %2
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = load i32, i32* @DA732X_REG_BIAS_EN, align 4
  %12 = load i32, i32* @DA732X_BIAS_BOOST_MASK, align 4
  %13 = load i32, i32* @DA732X_BIAS_BOOST_100PC, align 4
  %14 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %10, i32 %11, i32 %12, i32 %13)
  br label %132

15:                                               ; preds = %2
  br label %132

16:                                               ; preds = %2
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %18 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %17)
  %19 = icmp eq i32 %18, 131
  br i1 %19, label %20, label %104

20:                                               ; preds = %16
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %22 = load i32, i32* @DA732X_REG_REF1, align 4
  %23 = load i32, i32* @DA732X_VMID_FASTCHG, align 4
  %24 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %21, i32 %22, i32 %23)
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %26 = load i32, i32* @DA732X_REG_BIAS_EN, align 4
  %27 = load i32, i32* @DA732X_BIAS_EN, align 4
  %28 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %25, i32 %26, i32 %27)
  %29 = load i32, i32* @DA732X_STARTUP_DELAY, align 4
  %30 = call i32 @mdelay(i32 %29)
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %32 = load i32, i32* @DA732X_REG_REF1, align 4
  %33 = load i32, i32* @DA732X_REFBUFX2_EN, align 4
  %34 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %31, i32 %32, i32 %33)
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %36 = load i32, i32* @DA732X_REG_DATA_ROUTE, align 4
  %37 = load i32, i32* @DA732X_BYPASS_DSP, align 4
  %38 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %35, i32 %36, i32 %37)
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %40 = load i32, i32* @DA732X_REG_DSP_CTRL, align 4
  %41 = load i32, i32* @DA732X_DIGITAL_EN, align 4
  %42 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %39, i32 %40, i32 %41)
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %44 = load i32, i32* @DA732X_REG_SPARE1_OUT, align 4
  %45 = load i32, i32* @DA732X_HP_DRIVER_EN, align 4
  %46 = load i32, i32* @DA732X_HP_GATE_LOW, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @DA732X_HP_LOOP_GAIN_CTRL, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %43, i32 %44, i32 %49)
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %52 = load i32, i32* @DA732X_REG_HP_LIN1_GNDSEL, align 4
  %53 = load i32, i32* @DA732X_HP_OUT_GNDSEL, align 4
  %54 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %51, i32 %52, i32 %53)
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %56 = load i32, i32* @DA732X_ENABLE_CP, align 4
  %57 = call i32 @da732x_set_charge_pump(%struct.snd_soc_component* %55, i32 %56)
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %59 = load i32, i32* @DA732X_REG_CLK_EN1, align 4
  %60 = load i32, i32* @DA732X_SYS3_CLK_EN, align 4
  %61 = load i32, i32* @DA732X_PC_CLK_EN, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %58, i32 %59, i32 %62)
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %65 = load i32, i32* @DA732X_REG_INP_ZC_EN, align 4
  %66 = load i32, i32* @DA732X_MIC1_PRE_ZC_EN, align 4
  %67 = load i32, i32* @DA732X_MIC1_ZC_EN, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @DA732X_MIC2_PRE_ZC_EN, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @DA732X_MIC2_ZC_EN, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @DA732X_AUXL_ZC_EN, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @DA732X_AUXR_ZC_EN, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @DA732X_MIC3_PRE_ZC_EN, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @DA732X_MIC3_ZC_EN, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %64, i32 %65, i32 %80)
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %83 = load i32, i32* @DA732X_REG_OUT_ZC_EN, align 4
  %84 = load i32, i32* @DA732X_HPL_ZC_EN, align 4
  %85 = load i32, i32* @DA732X_HPR_ZC_EN, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @DA732X_LIN2_ZC_EN, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @DA732X_LIN3_ZC_EN, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @DA732X_LIN4_ZC_EN, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %82, i32 %83, i32 %92)
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %95 = call i32 @da732x_hp_dc_offset_cancellation(%struct.snd_soc_component* %94)
  %96 = load %struct.da732x_priv*, %struct.da732x_priv** %5, align 8
  %97 = getelementptr inbounds %struct.da732x_priv, %struct.da732x_priv* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @regcache_cache_only(i32 %98, i32 0)
  %100 = load %struct.da732x_priv*, %struct.da732x_priv** %5, align 8
  %101 = getelementptr inbounds %struct.da732x_priv, %struct.da732x_priv* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @regcache_sync(i32 %102)
  br label %116

104:                                              ; preds = %16
  %105 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %106 = load i32, i32* @DA732X_REG_BIAS_EN, align 4
  %107 = load i32, i32* @DA732X_BIAS_BOOST_MASK, align 4
  %108 = load i32, i32* @DA732X_BIAS_BOOST_50PC, align 4
  %109 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %105, i32 %106, i32 %107, i32 %108)
  %110 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %111 = load i32, i32* @DA732X_REG_PLL_CTRL, align 4
  %112 = load i32, i32* @DA732X_PLL_EN, align 4
  %113 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %110, i32 %111, i32 %112, i32 0)
  %114 = load %struct.da732x_priv*, %struct.da732x_priv** %5, align 8
  %115 = getelementptr inbounds %struct.da732x_priv, %struct.da732x_priv* %114, i32 0, i32 0
  store i32 0, i32* %115, align 4
  br label %116

116:                                              ; preds = %104, %20
  br label %132

117:                                              ; preds = %2
  %118 = load %struct.da732x_priv*, %struct.da732x_priv** %5, align 8
  %119 = getelementptr inbounds %struct.da732x_priv, %struct.da732x_priv* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @regcache_cache_only(i32 %120, i32 1)
  %122 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %123 = load i32, i32* @DA732X_DISABLE_CP, align 4
  %124 = call i32 @da732x_set_charge_pump(%struct.snd_soc_component* %122, i32 %123)
  %125 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %126 = load i32, i32* @DA732X_REG_BIAS_EN, align 4
  %127 = load i32, i32* @DA732X_BIAS_EN, align 4
  %128 = load i32, i32* @DA732X_BIAS_DIS, align 4
  %129 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %125, i32 %126, i32 %127, i32 %128)
  %130 = load %struct.da732x_priv*, %struct.da732x_priv** %5, align 8
  %131 = getelementptr inbounds %struct.da732x_priv, %struct.da732x_priv* %130, i32 0, i32 0
  store i32 0, i32* %131, align 4
  br label %132

132:                                              ; preds = %2, %117, %116, %15, %9
  ret i32 0
}

declare dso_local %struct.da732x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @da732x_set_charge_pump(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @da732x_hp_dc_offset_cancellation(%struct.snd_soc_component*) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i32 @regcache_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
