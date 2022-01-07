; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_set_dsp_vad.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_set_dsp_vad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5677_priv = type { i32, i32, i32, i32 }

@rt5677_set_dsp_vad.activity = internal global i32 0, align 4
@CONFIG_SND_SOC_RT5677_SPI = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@RT5677_DIG_MISC = common dso_local global i64 0, align 8
@RT5677_PR_BASE = common dso_local global i64 0, align 8
@RT5677_BIAS_CUR4 = common dso_local global i64 0, align 8
@RT5677_PWR_ANLG1 = common dso_local global i64 0, align 8
@RT5677_LDO1_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_PWR_ANLG2 = common dso_local global i64 0, align 8
@RT5677_PWR_LDO1 = common dso_local global i32 0, align 4
@RT5677_GLB_CLK1 = common dso_local global i64 0, align 8
@RT5677_MCLK_SRC_MASK = common dso_local global i32 0, align 4
@RT5677_MCLK2_SRC = common dso_local global i32 0, align 4
@RT5677_GLB_CLK2 = common dso_local global i64 0, align 8
@RT5677_PLL2_PR_SRC_MASK = common dso_local global i32 0, align 4
@RT5677_DSP_CLK_SRC_MASK = common dso_local global i32 0, align 4
@RT5677_PLL2_PR_SRC_MCLK2 = common dso_local global i32 0, align 4
@RT5677_DSP_CLK_SRC_BYPASS = common dso_local global i32 0, align 4
@RT5677_PWR_DSP2 = common dso_local global i64 0, align 8
@RT5677_PWR_DSP1 = common dso_local global i64 0, align 8
@RT5677_FIRMWARE1 = common dso_local global i32 0, align 4
@RT5677_FIRMWARE2 = common dso_local global i32 0, align 4
@RT5677_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @rt5677_set_dsp_vad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5677_set_dsp_vad(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rt5677_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.rt5677_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.rt5677_priv* %9, %struct.rt5677_priv** %6, align 8
  %10 = load i32, i32* @CONFIG_SND_SOC_RT5677_SPI, align 4
  %11 = call i32 @IS_ENABLED(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENXIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %197

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %151

19:                                               ; preds = %16
  %20 = load i32, i32* @rt5677_set_dsp_vad.activity, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %151, label %22

22:                                               ; preds = %19
  store i32 1, i32* @rt5677_set_dsp_vad.activity, align 4
  %23 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %24 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @regcache_cache_only(i32 %25, i32 0)
  %27 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %28 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @regcache_cache_bypass(i32 %29, i32 1)
  %31 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %32 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* @RT5677_DIG_MISC, align 8
  %35 = call i32 @regmap_update_bits(i32 %33, i64 %34, i32 1, i32 1)
  %36 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %37 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* @RT5677_PR_BASE, align 8
  %40 = load i64, i64* @RT5677_BIAS_CUR4, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @regmap_update_bits(i32 %38, i64 %41, i32 3840, i32 3840)
  %43 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %44 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* @RT5677_PWR_ANLG1, align 8
  %47 = load i32, i32* @RT5677_LDO1_SEL_MASK, align 4
  %48 = call i32 @regmap_update_bits(i32 %45, i64 %46, i32 %47, i32 0)
  %49 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %50 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* @RT5677_PWR_ANLG2, align 8
  %53 = load i32, i32* @RT5677_PWR_LDO1, align 4
  %54 = load i32, i32* @RT5677_PWR_LDO1, align 4
  %55 = call i32 @regmap_update_bits(i32 %51, i64 %52, i32 %53, i32 %54)
  %56 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %57 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %86 [
    i32 128, label %59
    i32 129, label %78
  ]

59:                                               ; preds = %22
  %60 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %61 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* @RT5677_GLB_CLK1, align 8
  %64 = load i32, i32* @RT5677_MCLK_SRC_MASK, align 4
  %65 = load i32, i32* @RT5677_MCLK2_SRC, align 4
  %66 = call i32 @regmap_update_bits(i32 %62, i64 %63, i32 %64, i32 %65)
  %67 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %68 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* @RT5677_GLB_CLK2, align 8
  %71 = load i32, i32* @RT5677_PLL2_PR_SRC_MASK, align 4
  %72 = load i32, i32* @RT5677_DSP_CLK_SRC_MASK, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @RT5677_PLL2_PR_SRC_MCLK2, align 4
  %75 = load i32, i32* @RT5677_DSP_CLK_SRC_BYPASS, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @regmap_update_bits(i32 %69, i64 %70, i32 %73, i32 %76)
  br label %87

78:                                               ; preds = %22
  %79 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %80 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* @RT5677_GLB_CLK2, align 8
  %83 = load i32, i32* @RT5677_DSP_CLK_SRC_MASK, align 4
  %84 = load i32, i32* @RT5677_DSP_CLK_SRC_BYPASS, align 4
  %85 = call i32 @regmap_update_bits(i32 %81, i64 %82, i32 %83, i32 %84)
  br label %87

86:                                               ; preds = %22
  br label %87

87:                                               ; preds = %86, %78, %59
  %88 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %89 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* @RT5677_PWR_DSP2, align 8
  %92 = call i32 @regmap_write(i32 %90, i64 %91, i32 2047)
  %93 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %94 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* @RT5677_PWR_DSP1, align 8
  %97 = call i32 @regmap_write(i32 %95, i64 %96, i32 2045)
  %98 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %99 = call i32 @rt5677_set_dsp_mode(%struct.snd_soc_component* %98, i32 1)
  %100 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %101 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %100, i32 0, i32 3
  %102 = load i32, i32* @RT5677_FIRMWARE1, align 4
  %103 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %104 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @request_firmware(i32* %101, i32 %102, i32 %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %87
  %110 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %111 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @rt5677_spi_write_firmware(i32 1342177280, i32 %112)
  %114 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %115 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @release_firmware(i32 %116)
  br label %118

118:                                              ; preds = %109, %87
  %119 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %120 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %119, i32 0, i32 2
  %121 = load i32, i32* @RT5677_FIRMWARE2, align 4
  %122 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %123 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @request_firmware(i32* %120, i32 %121, i32 %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %118
  %129 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %130 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @rt5677_spi_write_firmware(i32 1610612736, i32 %131)
  %133 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %134 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @release_firmware(i32 %135)
  br label %137

137:                                              ; preds = %128, %118
  %138 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %139 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i64, i64* @RT5677_PWR_DSP1, align 8
  %142 = call i32 @regmap_update_bits(i32 %140, i64 %141, i32 1, i32 0)
  %143 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %144 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @regcache_cache_bypass(i32 %145, i32 0)
  %147 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %148 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @regcache_cache_only(i32 %149, i32 1)
  br label %196

151:                                              ; preds = %19, %16
  %152 = load i32, i32* %5, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %195, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* @rt5677_set_dsp_vad.activity, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %195

157:                                              ; preds = %154
  store i32 0, i32* @rt5677_set_dsp_vad.activity, align 4
  %158 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %159 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @regcache_cache_only(i32 %160, i32 0)
  %162 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %163 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @regcache_cache_bypass(i32 %164, i32 1)
  %166 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %167 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i64, i64* @RT5677_PWR_DSP1, align 8
  %170 = call i32 @regmap_update_bits(i32 %168, i64 %169, i32 1, i32 1)
  %171 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %172 = call i32 @rt5677_set_dsp_mode(%struct.snd_soc_component* %171, i32 0)
  %173 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %174 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i64, i64* @RT5677_PWR_DSP1, align 8
  %177 = call i32 @regmap_write(i32 %175, i64 %176, i32 1)
  %178 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %179 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i64, i64* @RT5677_RESET, align 8
  %182 = call i32 @regmap_write(i32 %180, i64 %181, i32 4332)
  %183 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %184 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @regcache_cache_bypass(i32 %185, i32 0)
  %187 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %188 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @regcache_mark_dirty(i32 %189)
  %191 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %192 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @regcache_sync(i32 %193)
  br label %195

195:                                              ; preds = %157, %154, %151
  br label %196

196:                                              ; preds = %195, %137
  store i32 0, i32* %3, align 4
  br label %197

197:                                              ; preds = %196, %13
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local %struct.rt5677_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i32 @regcache_cache_bypass(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @rt5677_set_dsp_mode(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @request_firmware(i32*, i32, i32) #1

declare dso_local i32 @rt5677_spi_write_firmware(i32, i32) #1

declare dso_local i32 @release_firmware(i32) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

declare dso_local i32 @regcache_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
