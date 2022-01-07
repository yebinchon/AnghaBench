; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8995.c_wm8995_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8995.c_wm8995_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8995_priv = type { %struct.TYPE_6__*, %struct.TYPE_7__*, %struct.snd_soc_component* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@wm8995_supply_names = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Failed to request supplies: %d\0A\00", align 1
@wm8995_regulator_event_0 = common dso_local global i32 0, align 4
@wm8995_regulator_event_1 = common dso_local global i32 0, align 4
@wm8995_regulator_event_2 = common dso_local global i32 0, align 4
@wm8995_regulator_event_3 = common dso_local global i32 0, align 4
@wm8995_regulator_event_4 = common dso_local global i32 0, align 4
@wm8995_regulator_event_5 = common dso_local global i32 0, align 4
@wm8995_regulator_event_6 = common dso_local global i32 0, align 4
@wm8995_regulator_event_7 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to register regulator notifier: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@WM8995_SOFTWARE_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to read device ID: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Invalid device ID: %#x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to issue reset: %d\0A\00", align 1
@WM8995_AIF1_DAC1_RIGHT_VOLUME = common dso_local global i32 0, align 4
@WM8995_AIF1DAC1_VU_MASK = common dso_local global i32 0, align 4
@WM8995_AIF1DAC1_VU = common dso_local global i32 0, align 4
@WM8995_AIF1_DAC2_RIGHT_VOLUME = common dso_local global i32 0, align 4
@WM8995_AIF1DAC2_VU_MASK = common dso_local global i32 0, align 4
@WM8995_AIF1DAC2_VU = common dso_local global i32 0, align 4
@WM8995_AIF2_DAC_RIGHT_VOLUME = common dso_local global i32 0, align 4
@WM8995_AIF2DAC_VU_MASK = common dso_local global i32 0, align 4
@WM8995_AIF2DAC_VU = common dso_local global i32 0, align 4
@WM8995_AIF1_ADC1_RIGHT_VOLUME = common dso_local global i32 0, align 4
@WM8995_AIF1ADC1_VU_MASK = common dso_local global i32 0, align 4
@WM8995_AIF1ADC1_VU = common dso_local global i32 0, align 4
@WM8995_AIF1_ADC2_RIGHT_VOLUME = common dso_local global i32 0, align 4
@WM8995_AIF1ADC2_VU_MASK = common dso_local global i32 0, align 4
@WM8995_AIF1ADC2_VU = common dso_local global i32 0, align 4
@WM8995_AIF2_ADC_RIGHT_VOLUME = common dso_local global i32 0, align 4
@WM8995_AIF2ADC_VU_MASK = common dso_local global i32 0, align 4
@WM8995_DAC1_RIGHT_VOLUME = common dso_local global i32 0, align 4
@WM8995_DAC1_VU_MASK = common dso_local global i32 0, align 4
@WM8995_DAC1_VU = common dso_local global i32 0, align 4
@WM8995_DAC2_RIGHT_VOLUME = common dso_local global i32 0, align 4
@WM8995_DAC2_VU_MASK = common dso_local global i32 0, align 4
@WM8995_DAC2_VU = common dso_local global i32 0, align 4
@WM8995_RIGHT_LINE_INPUT_1_VOLUME = common dso_local global i32 0, align 4
@WM8995_IN1_VU_MASK = common dso_local global i32 0, align 4
@WM8995_IN1_VU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8995_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8995_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.wm8995_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.wm8995_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.wm8995_priv* %8, %struct.wm8995_priv** %4, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = load %struct.wm8995_priv*, %struct.wm8995_priv** %4, align 8
  %11 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %10, i32 0, i32 2
  store %struct.snd_soc_component* %9, %struct.snd_soc_component** %11, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %32, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.wm8995_priv*, %struct.wm8995_priv** %4, align 8
  %15 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %16)
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %12
  %20 = load i32*, i32** @wm8995_supply_names, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.wm8995_priv*, %struct.wm8995_priv** %4, align 8
  %26 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i32 %24, i32* %31, align 4
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %12

35:                                               ; preds = %12
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %37 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.wm8995_priv*, %struct.wm8995_priv** %4, align 8
  %40 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %41)
  %43 = load %struct.wm8995_priv*, %struct.wm8995_priv** %4, align 8
  %44 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = call i32 @devm_regulator_bulk_get(i32 %38, i32 %42, %struct.TYPE_6__* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %35
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %51 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %251

56:                                               ; preds = %35
  %57 = load i32, i32* @wm8995_regulator_event_0, align 4
  %58 = load %struct.wm8995_priv*, %struct.wm8995_priv** %4, align 8
  %59 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %58, i32 0, i32 1
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store i32 %57, i32* %62, align 4
  %63 = load i32, i32* @wm8995_regulator_event_1, align 4
  %64 = load %struct.wm8995_priv*, %struct.wm8995_priv** %4, align 8
  %65 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %64, i32 0, i32 1
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32 %63, i32* %68, align 4
  %69 = load i32, i32* @wm8995_regulator_event_2, align 4
  %70 = load %struct.wm8995_priv*, %struct.wm8995_priv** %4, align 8
  %71 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %70, i32 0, i32 1
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 2
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store i32 %69, i32* %74, align 4
  %75 = load i32, i32* @wm8995_regulator_event_3, align 4
  %76 = load %struct.wm8995_priv*, %struct.wm8995_priv** %4, align 8
  %77 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %76, i32 0, i32 1
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 3
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store i32 %75, i32* %80, align 4
  %81 = load i32, i32* @wm8995_regulator_event_4, align 4
  %82 = load %struct.wm8995_priv*, %struct.wm8995_priv** %4, align 8
  %83 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %82, i32 0, i32 1
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 4
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store i32 %81, i32* %86, align 4
  %87 = load i32, i32* @wm8995_regulator_event_5, align 4
  %88 = load %struct.wm8995_priv*, %struct.wm8995_priv** %4, align 8
  %89 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %88, i32 0, i32 1
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i64 5
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store i32 %87, i32* %92, align 4
  %93 = load i32, i32* @wm8995_regulator_event_6, align 4
  %94 = load %struct.wm8995_priv*, %struct.wm8995_priv** %4, align 8
  %95 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %94, i32 0, i32 1
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i64 6
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  store i32 %93, i32* %98, align 4
  %99 = load i32, i32* @wm8995_regulator_event_7, align 4
  %100 = load %struct.wm8995_priv*, %struct.wm8995_priv** %4, align 8
  %101 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %100, i32 0, i32 1
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 7
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  store i32 %99, i32* %104, align 4
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %137, %56
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.wm8995_priv*, %struct.wm8995_priv** %4, align 8
  %108 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %109)
  %111 = icmp slt i32 %106, %110
  br i1 %111, label %112, label %140

112:                                              ; preds = %105
  %113 = load %struct.wm8995_priv*, %struct.wm8995_priv** %4, align 8
  %114 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.wm8995_priv*, %struct.wm8995_priv** %4, align 8
  %122 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %121, i32 0, i32 1
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 %125
  %127 = call i32 @devm_regulator_register_notifier(i32 %120, %struct.TYPE_7__* %126)
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %112
  %131 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %132 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @dev_err(i32 %133, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %130, %112
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %5, align 4
  br label %105

140:                                              ; preds = %105
  %141 = load %struct.wm8995_priv*, %struct.wm8995_priv** %4, align 8
  %142 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %141, i32 0, i32 0
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %143)
  %145 = load %struct.wm8995_priv*, %struct.wm8995_priv** %4, align 8
  %146 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %145, i32 0, i32 0
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = call i32 @regulator_bulk_enable(i32 %144, %struct.TYPE_6__* %147)
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* %6, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %140
  %152 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %153 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @dev_err(i32 %154, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* %6, align 4
  store i32 %157, i32* %2, align 4
  br label %251

158:                                              ; preds = %140
  %159 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %160 = load i32, i32* @WM8995_SOFTWARE_RESET, align 4
  %161 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %159, i32 %160)
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* %6, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %158
  %165 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %166 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @dev_err(i32 %167, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %168)
  br label %241

170:                                              ; preds = %158
  %171 = load i32, i32* %6, align 4
  %172 = icmp ne i32 %171, 35221
  br i1 %172, label %173, label %181

173:                                              ; preds = %170
  %174 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %175 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %6, align 4
  %178 = call i32 @dev_err(i32 %176, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %6, align 4
  br label %241

181:                                              ; preds = %170
  %182 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %183 = load i32, i32* @WM8995_SOFTWARE_RESET, align 4
  %184 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %182, i32 %183, i32 0)
  store i32 %184, i32* %6, align 4
  %185 = load i32, i32* %6, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %181
  %188 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %189 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %6, align 4
  %192 = call i32 @dev_err(i32 %190, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %191)
  br label %241

193:                                              ; preds = %181
  %194 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %195 = load i32, i32* @WM8995_AIF1_DAC1_RIGHT_VOLUME, align 4
  %196 = load i32, i32* @WM8995_AIF1DAC1_VU_MASK, align 4
  %197 = load i32, i32* @WM8995_AIF1DAC1_VU, align 4
  %198 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %194, i32 %195, i32 %196, i32 %197)
  %199 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %200 = load i32, i32* @WM8995_AIF1_DAC2_RIGHT_VOLUME, align 4
  %201 = load i32, i32* @WM8995_AIF1DAC2_VU_MASK, align 4
  %202 = load i32, i32* @WM8995_AIF1DAC2_VU, align 4
  %203 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %199, i32 %200, i32 %201, i32 %202)
  %204 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %205 = load i32, i32* @WM8995_AIF2_DAC_RIGHT_VOLUME, align 4
  %206 = load i32, i32* @WM8995_AIF2DAC_VU_MASK, align 4
  %207 = load i32, i32* @WM8995_AIF2DAC_VU, align 4
  %208 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %204, i32 %205, i32 %206, i32 %207)
  %209 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %210 = load i32, i32* @WM8995_AIF1_ADC1_RIGHT_VOLUME, align 4
  %211 = load i32, i32* @WM8995_AIF1ADC1_VU_MASK, align 4
  %212 = load i32, i32* @WM8995_AIF1ADC1_VU, align 4
  %213 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %209, i32 %210, i32 %211, i32 %212)
  %214 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %215 = load i32, i32* @WM8995_AIF1_ADC2_RIGHT_VOLUME, align 4
  %216 = load i32, i32* @WM8995_AIF1ADC2_VU_MASK, align 4
  %217 = load i32, i32* @WM8995_AIF1ADC2_VU, align 4
  %218 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %214, i32 %215, i32 %216, i32 %217)
  %219 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %220 = load i32, i32* @WM8995_AIF2_ADC_RIGHT_VOLUME, align 4
  %221 = load i32, i32* @WM8995_AIF2ADC_VU_MASK, align 4
  %222 = load i32, i32* @WM8995_AIF1ADC2_VU, align 4
  %223 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %219, i32 %220, i32 %221, i32 %222)
  %224 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %225 = load i32, i32* @WM8995_DAC1_RIGHT_VOLUME, align 4
  %226 = load i32, i32* @WM8995_DAC1_VU_MASK, align 4
  %227 = load i32, i32* @WM8995_DAC1_VU, align 4
  %228 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %224, i32 %225, i32 %226, i32 %227)
  %229 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %230 = load i32, i32* @WM8995_DAC2_RIGHT_VOLUME, align 4
  %231 = load i32, i32* @WM8995_DAC2_VU_MASK, align 4
  %232 = load i32, i32* @WM8995_DAC2_VU, align 4
  %233 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %229, i32 %230, i32 %231, i32 %232)
  %234 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %235 = load i32, i32* @WM8995_RIGHT_LINE_INPUT_1_VOLUME, align 4
  %236 = load i32, i32* @WM8995_IN1_VU_MASK, align 4
  %237 = load i32, i32* @WM8995_IN1_VU, align 4
  %238 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %234, i32 %235, i32 %236, i32 %237)
  %239 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %240 = call i32 @wm8995_update_class_w(%struct.snd_soc_component* %239)
  store i32 0, i32* %2, align 4
  br label %251

241:                                              ; preds = %187, %173, %164
  %242 = load %struct.wm8995_priv*, %struct.wm8995_priv** %4, align 8
  %243 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %242, i32 0, i32 0
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %243, align 8
  %245 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %244)
  %246 = load %struct.wm8995_priv*, %struct.wm8995_priv** %4, align 8
  %247 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %246, i32 0, i32 0
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %247, align 8
  %249 = call i32 @regulator_bulk_disable(i32 %245, %struct.TYPE_6__* %248)
  %250 = load i32, i32* %6, align 4
  store i32 %250, i32* %2, align 4
  br label %251

251:                                              ; preds = %241, %193, %151, %49
  %252 = load i32, i32* %2, align 4
  ret i32 %252
}

declare dso_local %struct.wm8995_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @devm_regulator_bulk_get(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @devm_regulator_register_notifier(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @wm8995_update_class_w(%struct.snd_soc_component*) #1

declare dso_local i32 @regulator_bulk_disable(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
