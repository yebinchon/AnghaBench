; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.rt5640_priv = type { i32, i32, i32, i8*, %struct.snd_soc_component*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@SND_SOC_BIAS_OFF = common dso_local global i32 0, align 4
@RT5640_DUMMY1 = common dso_local global i32 0, align 4
@RT5640_MICBIAS = common dso_local global i32 0, align 4
@RT5640_DSP_PATH2 = common dso_local global i32 0, align 4
@RT5640_RESET = common dso_local global i32 0, align 4
@RT5640_ID_MASK = common dso_local global i32 0, align 4
@rt5640_specific_snd_controls = common dso_local global i32 0, align 4
@rt5640_specific_dapm_widgets = common dso_local global i32 0, align 4
@rt5640_specific_dapm_routes = common dso_local global i32 0, align 4
@rt5639_specific_dapm_widgets = common dso_local global i32 0, align 4
@rt5639_specific_dapm_routes = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"The driver is for RT5639 RT5640 or RT5642 only\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"realtek,in1-differential\00", align 1
@RT5640_IN1_IN2 = common dso_local global i32 0, align 4
@RT5640_IN_DF1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"realtek,in2-differential\00", align 1
@RT5640_IN3_IN4 = common dso_local global i32 0, align 4
@RT5640_IN_DF2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"realtek,in3-differential\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"realtek,dmic1-data-pin\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"realtek,dmic2-data-pin\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"realtek,jack-detect-source\00", align 1
@RT5640_JD_SRC_GPIO4 = common dso_local global i32 0, align 4
@RT5640_JD_SFT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [77 x i8] c"Warning: Invalid jack-detect-source value: %d, leaving jack-detect disabled\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"realtek,jack-detect-not-inverted\00", align 1
@RT5640_MIC1_OVTH_2000UA = common dso_local global i8* null, align 8
@RT5640_MIC_OVCD_SF_0P75 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [40 x i8] c"realtek,over-current-threshold-microamp\00", align 1
@RT5640_MIC1_OVTH_600UA = common dso_local global i8* null, align 8
@RT5640_MIC1_OVTH_1500UA = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [82 x i8] c"Warning: Invalid over-current-threshold-microamp value: %d, defaulting to 2000uA\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"realtek,over-current-scale-factor\00", align 1
@RT5640_OVCD_SF_1P5 = common dso_local global i32 0, align 4
@RT5640_MIC_OVCD_SF_SFT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [74 x i8] c"Warning: Invalid over-current-scale-factor value: %d, defaulting to 0.75\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @rt5640_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5640_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca %struct.rt5640_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %10)
  store %struct.snd_soc_dapm_context* %11, %struct.snd_soc_dapm_context** %4, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = call %struct.rt5640_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.rt5640_priv* %13, %struct.rt5640_priv** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @devm_clk_get(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.rt5640_priv*, %struct.rt5640_priv** %5, align 8
  %19 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 8
  %20 = load %struct.rt5640_priv*, %struct.rt5640_priv** %5, align 8
  %21 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @PTR_ERR(i32 %22)
  %24 = load i32, i32* @EPROBE_DEFER, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @EPROBE_DEFER, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %242

30:                                               ; preds = %1
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %32 = load %struct.rt5640_priv*, %struct.rt5640_priv** %5, align 8
  %33 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %32, i32 0, i32 4
  store %struct.snd_soc_component* %31, %struct.snd_soc_component** %33, align 8
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %35 = load i32, i32* @SND_SOC_BIAS_OFF, align 4
  %36 = call i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component* %34, i32 %35)
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %38 = load i32, i32* @RT5640_DUMMY1, align 4
  %39 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %37, i32 %38, i32 769, i32 769)
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %41 = load i32, i32* @RT5640_MICBIAS, align 4
  %42 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %40, i32 %41, i32 48, i32 48)
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %44 = load i32, i32* @RT5640_DSP_PATH2, align 4
  %45 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %43, i32 %44, i32 64512, i32 3072)
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %47 = load i32, i32* @RT5640_RESET, align 4
  %48 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %46, i32 %47)
  %49 = load i32, i32* @RT5640_ID_MASK, align 4
  %50 = and i32 %48, %49
  switch i32 %50, label %78 [
    i32 129, label %51
    i32 128, label %51
    i32 130, label %67
  ]

51:                                               ; preds = %30, %30
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %53 = load i32, i32* @rt5640_specific_snd_controls, align 4
  %54 = load i32, i32* @rt5640_specific_snd_controls, align 4
  %55 = call i32 @ARRAY_SIZE(i32 %54)
  %56 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %52, i32 %53, i32 %55)
  %57 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %58 = load i32, i32* @rt5640_specific_dapm_widgets, align 4
  %59 = load i32, i32* @rt5640_specific_dapm_widgets, align 4
  %60 = call i32 @ARRAY_SIZE(i32 %59)
  %61 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %57, i32 %58, i32 %60)
  %62 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %63 = load i32, i32* @rt5640_specific_dapm_routes, align 4
  %64 = load i32, i32* @rt5640_specific_dapm_routes, align 4
  %65 = call i32 @ARRAY_SIZE(i32 %64)
  %66 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %62, i32 %63, i32 %65)
  br label %85

67:                                               ; preds = %30
  %68 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %69 = load i32, i32* @rt5639_specific_dapm_widgets, align 4
  %70 = load i32, i32* @rt5639_specific_dapm_widgets, align 4
  %71 = call i32 @ARRAY_SIZE(i32 %70)
  %72 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %68, i32 %69, i32 %71)
  %73 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %74 = load i32, i32* @rt5639_specific_dapm_routes, align 4
  %75 = load i32, i32* @rt5639_specific_dapm_routes, align 4
  %76 = call i32 @ARRAY_SIZE(i32 %75)
  %77 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %73, i32 %74, i32 %76)
  br label %85

78:                                               ; preds = %30
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %80 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %242

85:                                               ; preds = %67, %51
  %86 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %87 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @device_property_read_bool(i32 %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %93 = load i32, i32* @RT5640_IN1_IN2, align 4
  %94 = load i32, i32* @RT5640_IN_DF1, align 4
  %95 = load i32, i32* @RT5640_IN_DF1, align 4
  %96 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %92, i32 %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %91, %85
  %98 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %99 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @device_property_read_bool(i32 %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %105 = load i32, i32* @RT5640_IN3_IN4, align 4
  %106 = load i32, i32* @RT5640_IN_DF2, align 4
  %107 = load i32, i32* @RT5640_IN_DF2, align 4
  %108 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %104, i32 %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %103, %97
  %110 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %111 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @device_property_read_bool(i32 %112, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %117 = load i32, i32* @RT5640_IN1_IN2, align 4
  %118 = load i32, i32* @RT5640_IN_DF2, align 4
  %119 = load i32, i32* @RT5640_IN_DF2, align 4
  %120 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %116, i32 %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %115, %109
  %122 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %123 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @device_property_read_u32(i32 %124, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32* %9)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32, i32* %9, align 4
  %132 = sub nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  store i32 1, i32* %8, align 4
  br label %133

133:                                              ; preds = %130, %127, %121
  %134 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %135 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @device_property_read_u32(i32 %136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32* %9)
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i32, i32* %9, align 4
  %144 = sub nsw i32 %143, 1
  store i32 %144, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %145

145:                                              ; preds = %142, %139, %133
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %145
  %149 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @rt5640_dmic_enable(%struct.snd_soc_component* %149, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %148, %145
  %154 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %155 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @device_property_read_u32(i32 %156, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32* %9)
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %176

159:                                              ; preds = %153
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* @RT5640_JD_SRC_GPIO4, align 4
  %162 = icmp sle i32 %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %159
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* @RT5640_JD_SFT, align 4
  %166 = shl i32 %164, %165
  %167 = load %struct.rt5640_priv*, %struct.rt5640_priv** %5, align 8
  %168 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  br label %175

169:                                              ; preds = %159
  %170 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %171 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %9, align 4
  %174 = call i32 @dev_warn(i32 %172, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.8, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %169, %163
  br label %176

176:                                              ; preds = %175, %153
  %177 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %178 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @device_property_read_bool(i32 %179, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %176
  %183 = load %struct.rt5640_priv*, %struct.rt5640_priv** %5, align 8
  %184 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %183, i32 0, i32 1
  store i32 1, i32* %184, align 4
  br label %185

185:                                              ; preds = %182, %176
  %186 = load i8*, i8** @RT5640_MIC1_OVTH_2000UA, align 8
  %187 = load %struct.rt5640_priv*, %struct.rt5640_priv** %5, align 8
  %188 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %187, i32 0, i32 3
  store i8* %186, i8** %188, align 8
  %189 = load i32, i32* @RT5640_MIC_OVCD_SF_0P75, align 4
  %190 = load %struct.rt5640_priv*, %struct.rt5640_priv** %5, align 8
  %191 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 8
  %192 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %193 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i64 @device_property_read_u32(i32 %194, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32* %9)
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %218

197:                                              ; preds = %185
  %198 = load i32, i32* %9, align 4
  switch i32 %198, label %211 [
    i32 600, label %199
    i32 1500, label %203
    i32 2000, label %207
  ]

199:                                              ; preds = %197
  %200 = load i8*, i8** @RT5640_MIC1_OVTH_600UA, align 8
  %201 = load %struct.rt5640_priv*, %struct.rt5640_priv** %5, align 8
  %202 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %201, i32 0, i32 3
  store i8* %200, i8** %202, align 8
  br label %217

203:                                              ; preds = %197
  %204 = load i8*, i8** @RT5640_MIC1_OVTH_1500UA, align 8
  %205 = load %struct.rt5640_priv*, %struct.rt5640_priv** %5, align 8
  %206 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %205, i32 0, i32 3
  store i8* %204, i8** %206, align 8
  br label %217

207:                                              ; preds = %197
  %208 = load i8*, i8** @RT5640_MIC1_OVTH_2000UA, align 8
  %209 = load %struct.rt5640_priv*, %struct.rt5640_priv** %5, align 8
  %210 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %209, i32 0, i32 3
  store i8* %208, i8** %210, align 8
  br label %217

211:                                              ; preds = %197
  %212 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %213 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %9, align 4
  %216 = call i32 @dev_warn(i32 %214, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.11, i64 0, i64 0), i32 %215)
  br label %217

217:                                              ; preds = %211, %207, %203, %199
  br label %218

218:                                              ; preds = %217, %185
  %219 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %220 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i64 @device_property_read_u32(i32 %221, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i32* %9)
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %241

224:                                              ; preds = %218
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* @RT5640_OVCD_SF_1P5, align 4
  %227 = icmp sle i32 %225, %226
  br i1 %227, label %228, label %234

228:                                              ; preds = %224
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* @RT5640_MIC_OVCD_SF_SFT, align 4
  %231 = shl i32 %229, %230
  %232 = load %struct.rt5640_priv*, %struct.rt5640_priv** %5, align 8
  %233 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %232, i32 0, i32 2
  store i32 %231, i32* %233, align 8
  br label %240

234:                                              ; preds = %224
  %235 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %236 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %9, align 4
  %239 = call i32 @dev_warn(i32 %237, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.13, i64 0, i64 0), i32 %238)
  br label %240

240:                                              ; preds = %234, %228
  br label %241

241:                                              ; preds = %240, %218
  store i32 0, i32* %2, align 4
  br label %242

242:                                              ; preds = %241, %78, %27
  %243 = load i32, i32* %2, align 4
  ret i32 %243
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.rt5640_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @devm_clk_get(i32, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @device_property_read_bool(i32, i8*) #1

declare dso_local i64 @device_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @rt5640_dmic_enable(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
