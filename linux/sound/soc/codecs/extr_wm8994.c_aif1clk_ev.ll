; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_aif1clk_ev.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_aif1clk_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wm8994_priv = type { i32*, %struct.wm8994* }
%struct.wm8994 = type { i32 }

@WM8994_AIF1DAC1L_ENA = common dso_local global i32 0, align 4
@WM8994_AIF1DAC1R_ENA = common dso_local global i32 0, align 4
@WM8994_AIF1DAC2L_ENA = common dso_local global i32 0, align 4
@WM8994_AIF1DAC2R_ENA = common dso_local global i32 0, align 4
@WM8994_AIF1_CONTROL_1 = common dso_local global i32 0, align 4
@WM8994_AIF1ADCL_SRC = common dso_local global i32 0, align 4
@WM8994_AIF1ADCR_SRC = common dso_local global i32 0, align 4
@WM8994_AIF1ADC1R_ENA = common dso_local global i32 0, align 4
@WM8994_AIF1ADC2R_ENA = common dso_local global i32 0, align 4
@WM8994_AIF1ADC1L_ENA = common dso_local global i32 0, align 4
@WM8994_AIF1ADC2L_ENA = common dso_local global i32 0, align 4
@WM8994_AIF1_CONTROL_2 = common dso_local global i32 0, align 4
@WM8994_AIF1DACL_SRC = common dso_local global i32 0, align 4
@WM8994_AIF1DACR_SRC = common dso_local global i32 0, align 4
@WM8994_POWER_MANAGEMENT_4 = common dso_local global i32 0, align 4
@WM8994_POWER_MANAGEMENT_5 = common dso_local global i32 0, align 4
@WM8994_CLOCKING_1 = common dso_local global i32 0, align 4
@WM8994_AIF1DSPCLK_ENA = common dso_local global i32 0, align 4
@WM8994_SYSDSPCLK_ENA = common dso_local global i32 0, align 4
@wm8994_vu_bits = common dso_local global %struct.TYPE_3__* null, align 8
@WM8994_AIF2DSPCLK_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @aif1clk_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aif1clk_ev(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.wm8994_priv*, align 8
  %9 = alloca %struct.wm8994*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %17)
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %7, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %20 = call %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.wm8994_priv* %20, %struct.wm8994_priv** %8, align 8
  %21 = load %struct.wm8994_priv*, %struct.wm8994_priv** %8, align 8
  %22 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %21, i32 0, i32 1
  %23 = load %struct.wm8994*, %struct.wm8994** %22, align 8
  store %struct.wm8994* %23, %struct.wm8994** %9, align 8
  %24 = load i32, i32* @WM8994_AIF1DAC1L_ENA, align 4
  %25 = load i32, i32* @WM8994_AIF1DAC1R_ENA, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load %struct.wm8994*, %struct.wm8994** %9, align 8
  %28 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %36 [
    i32 128, label %30
    i32 129, label %30
  ]

30:                                               ; preds = %3, %3
  %31 = load i32, i32* @WM8994_AIF1DAC2L_ENA, align 4
  %32 = load i32, i32* @WM8994_AIF1DAC2R_ENA, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  br label %37

36:                                               ; preds = %3
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i32, i32* %6, align 4
  switch i32 %38, label %229 [
    i32 130, label %39
    i32 132, label %175
    i32 131, label %202
    i32 133, label %202
  ]

39:                                               ; preds = %37
  %40 = load %struct.wm8994_priv*, %struct.wm8994_priv** %8, align 8
  %41 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sle i32 %44, 2
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load i32, i32* @WM8994_AIF1DAC2L_ENA, align 4
  %48 = load i32, i32* @WM8994_AIF1DAC2R_ENA, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %46, %39
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %55 = load i32, i32* @WM8994_AIF1_CONTROL_1, align 4
  %56 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %54, i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @WM8994_AIF1ADCL_SRC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @WM8994_AIF1ADCR_SRC, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* @WM8994_AIF1ADC1R_ENA, align 4
  %68 = load i32, i32* @WM8994_AIF1ADC2R_ENA, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %13, align 4
  br label %93

70:                                               ; preds = %61, %53
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @WM8994_AIF1ADCL_SRC, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @WM8994_AIF1ADCR_SRC, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @WM8994_AIF1ADC1L_ENA, align 4
  %82 = load i32, i32* @WM8994_AIF1ADC2L_ENA, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %13, align 4
  br label %92

84:                                               ; preds = %75, %70
  %85 = load i32, i32* @WM8994_AIF1ADC1R_ENA, align 4
  %86 = load i32, i32* @WM8994_AIF1ADC2R_ENA, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @WM8994_AIF1ADC1L_ENA, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @WM8994_AIF1ADC2L_ENA, align 4
  %91 = or i32 %89, %90
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %84, %80
  br label %93

93:                                               ; preds = %92, %66
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %95 = load i32, i32* @WM8994_AIF1_CONTROL_2, align 4
  %96 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %94, i32 %95)
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* @WM8994_AIF1DACL_SRC, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %93
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* @WM8994_AIF1DACR_SRC, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i32, i32* @WM8994_AIF1DAC1R_ENA, align 4
  %108 = load i32, i32* @WM8994_AIF1DAC2R_ENA, align 4
  %109 = or i32 %107, %108
  store i32 %109, i32* %12, align 4
  br label %133

110:                                              ; preds = %101, %93
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* @WM8994_AIF1DACL_SRC, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %124, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* @WM8994_AIF1DACR_SRC, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* @WM8994_AIF1DAC1L_ENA, align 4
  %122 = load i32, i32* @WM8994_AIF1DAC2L_ENA, align 4
  %123 = or i32 %121, %122
  store i32 %123, i32* %12, align 4
  br label %132

124:                                              ; preds = %115, %110
  %125 = load i32, i32* @WM8994_AIF1DAC1R_ENA, align 4
  %126 = load i32, i32* @WM8994_AIF1DAC2R_ENA, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @WM8994_AIF1DAC1L_ENA, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @WM8994_AIF1DAC2L_ENA, align 4
  %131 = or i32 %129, %130
  store i32 %131, i32* %12, align 4
  br label %132

132:                                              ; preds = %124, %120
  br label %133

133:                                              ; preds = %132, %106
  %134 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %135 = load i32, i32* @WM8994_POWER_MANAGEMENT_4, align 4
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %134, i32 %135, i32 %136, i32 %137)
  %139 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %140 = load i32, i32* @WM8994_POWER_MANAGEMENT_5, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %139, i32 %140, i32 %141, i32 %142)
  %144 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %145 = load i32, i32* @WM8994_CLOCKING_1, align 4
  %146 = load i32, i32* @WM8994_AIF1DSPCLK_ENA, align 4
  %147 = load i32, i32* @WM8994_SYSDSPCLK_ENA, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @WM8994_AIF1DSPCLK_ENA, align 4
  %150 = load i32, i32* @WM8994_SYSDSPCLK_ENA, align 4
  %151 = or i32 %149, %150
  %152 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %144, i32 %145, i32 %148, i32 %151)
  %153 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %154 = load i32, i32* @WM8994_POWER_MANAGEMENT_4, align 4
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @WM8994_AIF1ADC1R_ENA, align 4
  %157 = load i32, i32* @WM8994_AIF1ADC1L_ENA, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @WM8994_AIF1ADC2R_ENA, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @WM8994_AIF1ADC2L_ENA, align 4
  %162 = or i32 %160, %161
  %163 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %153, i32 %154, i32 %155, i32 %162)
  %164 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %165 = load i32, i32* @WM8994_POWER_MANAGEMENT_5, align 4
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* @WM8994_AIF1DAC1R_ENA, align 4
  %168 = load i32, i32* @WM8994_AIF1DAC1L_ENA, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @WM8994_AIF1DAC2R_ENA, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @WM8994_AIF1DAC2L_ENA, align 4
  %173 = or i32 %171, %172
  %174 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %164, i32 %165, i32 %166, i32 %173)
  br label %229

175:                                              ; preds = %37
  store i32 0, i32* %11, align 4
  br label %176

176:                                              ; preds = %198, %175
  %177 = load i32, i32* %11, align 4
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm8994_vu_bits, align 8
  %179 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %178)
  %180 = icmp slt i32 %177, %179
  br i1 %180, label %181, label %201

181:                                              ; preds = %176
  %182 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm8994_vu_bits, align 8
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm8994_vu_bits, align 8
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %189, i32 %195)
  %197 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %182, i32 %188, i32 %196)
  br label %198

198:                                              ; preds = %181
  %199 = load i32, i32* %11, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %11, align 4
  br label %176

201:                                              ; preds = %176
  br label %229

202:                                              ; preds = %37, %37
  %203 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %204 = load i32, i32* @WM8994_POWER_MANAGEMENT_5, align 4
  %205 = load i32, i32* %10, align 4
  %206 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %203, i32 %204, i32 %205, i32 0)
  %207 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %208 = load i32, i32* @WM8994_POWER_MANAGEMENT_4, align 4
  %209 = load i32, i32* %10, align 4
  %210 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %207, i32 %208, i32 %209, i32 0)
  %211 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %212 = load i32, i32* @WM8994_CLOCKING_1, align 4
  %213 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %211, i32 %212)
  store i32 %213, i32* %14, align 4
  %214 = load i32, i32* %14, align 4
  %215 = load i32, i32* @WM8994_AIF2DSPCLK_ENA, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %202
  %219 = load i32, i32* @WM8994_SYSDSPCLK_ENA, align 4
  store i32 %219, i32* %14, align 4
  br label %221

220:                                              ; preds = %202
  store i32 0, i32* %14, align 4
  br label %221

221:                                              ; preds = %220, %218
  %222 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %223 = load i32, i32* @WM8994_CLOCKING_1, align 4
  %224 = load i32, i32* @WM8994_SYSDSPCLK_ENA, align 4
  %225 = load i32, i32* @WM8994_AIF1DSPCLK_ENA, align 4
  %226 = or i32 %224, %225
  %227 = load i32, i32* %14, align 4
  %228 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %222, i32 %223, i32 %226, i32 %227)
  br label %229

229:                                              ; preds = %37, %221, %201, %133
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
