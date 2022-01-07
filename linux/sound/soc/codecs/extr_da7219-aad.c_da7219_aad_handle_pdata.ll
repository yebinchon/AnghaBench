; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219-aad.c_da7219_aad_handle_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219-aad.c_da7219_aad_handle_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.da7219_priv = type { %struct.da7219_pdata*, %struct.da7219_aad_priv* }
%struct.da7219_pdata = type { %struct.da7219_aad_pdata* }
%struct.da7219_aad_pdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.da7219_aad_priv = type { i32, i32, i32, i32 }

@DA7219_MICBIAS1_LEVEL_SHIFT = common dso_local global i32 0, align 4
@DA7219_BUTTON_CONFIG_SHIFT = common dso_local global i32 0, align 4
@DA7219_MIC_DET_THRESH_SHIFT = common dso_local global i32 0, align 4
@DA7219_MIC_DET_THRESH_MASK = common dso_local global i32 0, align 4
@DA7219_ACCDET_CONFIG_1 = common dso_local global i32 0, align 4
@DA7219_JACKDET_DEBOUNCE_SHIFT = common dso_local global i32 0, align 4
@DA7219_JACKDET_DEBOUNCE_MASK = common dso_local global i32 0, align 4
@DA7219_JACK_DETECT_RATE_SHIFT = common dso_local global i32 0, align 4
@DA7219_JACK_DETECT_RATE_MASK = common dso_local global i32 0, align 4
@DA7219_JACKDET_REM_DEB_SHIFT = common dso_local global i32 0, align 4
@DA7219_JACKDET_REM_DEB_MASK = common dso_local global i32 0, align 4
@DA7219_ACCDET_CONFIG_2 = common dso_local global i32 0, align 4
@DA7219_ACCDET_CONFIG_3 = common dso_local global i32 0, align 4
@DA7219_ACCDET_CONFIG_4 = common dso_local global i32 0, align 4
@DA7219_ACCDET_CONFIG_5 = common dso_local global i32 0, align 4
@DA7219_ACCDET_CONFIG_6 = common dso_local global i32 0, align 4
@DA7219_BUTTON_AVERAGE_SHIFT = common dso_local global i32 0, align 4
@DA7219_BUTTON_AVERAGE_MASK = common dso_local global i32 0, align 4
@DA7219_ADC_1_BIT_REPEAT_SHIFT = common dso_local global i32 0, align 4
@DA7219_ADC_1_BIT_REPEAT_MASK = common dso_local global i32 0, align 4
@DA7219_ACCDET_CONFIG_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @da7219_aad_handle_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da7219_aad_handle_pdata(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.da7219_priv*, align 8
  %4 = alloca %struct.da7219_aad_priv*, align 8
  %5 = alloca %struct.da7219_pdata*, align 8
  %6 = alloca %struct.da7219_aad_pdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %10 = call %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.da7219_priv* %10, %struct.da7219_priv** %3, align 8
  %11 = load %struct.da7219_priv*, %struct.da7219_priv** %3, align 8
  %12 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %11, i32 0, i32 1
  %13 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %12, align 8
  store %struct.da7219_aad_priv* %13, %struct.da7219_aad_priv** %4, align 8
  %14 = load %struct.da7219_priv*, %struct.da7219_priv** %3, align 8
  %15 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %14, i32 0, i32 0
  %16 = load %struct.da7219_pdata*, %struct.da7219_pdata** %15, align 8
  store %struct.da7219_pdata* %16, %struct.da7219_pdata** %5, align 8
  %17 = load %struct.da7219_pdata*, %struct.da7219_pdata** %5, align 8
  %18 = icmp ne %struct.da7219_pdata* %17, null
  br i1 %18, label %19, label %192

19:                                               ; preds = %1
  %20 = load %struct.da7219_pdata*, %struct.da7219_pdata** %5, align 8
  %21 = getelementptr inbounds %struct.da7219_pdata, %struct.da7219_pdata* %20, i32 0, i32 0
  %22 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %21, align 8
  %23 = icmp ne %struct.da7219_aad_pdata* %22, null
  br i1 %23, label %24, label %192

24:                                               ; preds = %19
  %25 = load %struct.da7219_pdata*, %struct.da7219_pdata** %5, align 8
  %26 = getelementptr inbounds %struct.da7219_pdata, %struct.da7219_pdata* %25, i32 0, i32 0
  %27 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %26, align 8
  store %struct.da7219_aad_pdata* %27, %struct.da7219_aad_pdata** %6, align 8
  %28 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %6, align 8
  %29 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %28, i32 0, i32 13
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %4, align 8
  %32 = getelementptr inbounds %struct.da7219_aad_priv, %struct.da7219_aad_priv* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %6, align 8
  %34 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %44 [
    i32 133, label %36
    i32 132, label %36
  ]

36:                                               ; preds = %24, %24
  %37 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %6, align 8
  %38 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DA7219_MICBIAS1_LEVEL_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %4, align 8
  %43 = getelementptr inbounds %struct.da7219_aad_priv, %struct.da7219_aad_priv* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %45

44:                                               ; preds = %24
  br label %45

45:                                               ; preds = %44, %36
  %46 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %6, align 8
  %47 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %46, i32 0, i32 12
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %4, align 8
  %50 = getelementptr inbounds %struct.da7219_aad_priv, %struct.da7219_aad_priv* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %6, align 8
  %52 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %62 [
    i32 153, label %54
    i32 150, label %54
    i32 155, label %54
    i32 151, label %54
    i32 156, label %54
    i32 154, label %54
    i32 152, label %54
  ]

54:                                               ; preds = %45, %45, %45, %45, %45, %45, %45
  %55 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %6, align 8
  %56 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DA7219_BUTTON_CONFIG_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %4, align 8
  %61 = getelementptr inbounds %struct.da7219_aad_priv, %struct.da7219_aad_priv* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %54, %45
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %63 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %6, align 8
  %64 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %77 [
    i32 130, label %66
    i32 129, label %66
    i32 128, label %66
    i32 131, label %66
  ]

66:                                               ; preds = %62, %62, %62, %62
  %67 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %6, align 8
  %68 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @DA7219_MIC_DET_THRESH_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* @DA7219_MIC_DET_THRESH_MASK, align 4
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %66, %62
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %79 = load i32, i32* @DA7219_ACCDET_CONFIG_1, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %78, i32 %79, i32 %80, i32 %81)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %83 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %6, align 8
  %84 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %97 [
    i32 138, label %86
    i32 144, label %86
    i32 141, label %86
    i32 139, label %86
    i32 145, label %86
    i32 142, label %86
    i32 140, label %86
    i32 143, label %86
  ]

86:                                               ; preds = %77, %77, %77, %77, %77, %77, %77, %77
  %87 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %6, align 8
  %88 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @DA7219_JACKDET_DEBOUNCE_SHIFT, align 4
  %91 = shl i32 %89, %90
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* @DA7219_JACKDET_DEBOUNCE_MASK, align 4
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %86, %77
  %98 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %6, align 8
  %99 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  switch i32 %100, label %112 [
    i32 147, label %101
    i32 146, label %101
    i32 149, label %101
    i32 148, label %101
  ]

101:                                              ; preds = %97, %97, %97, %97
  %102 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %6, align 8
  %103 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @DA7219_JACK_DETECT_RATE_SHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = load i32, i32* %7, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* @DA7219_JACK_DETECT_RATE_MASK, align 4
  %110 = load i32, i32* %8, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %101, %97
  %113 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %6, align 8
  %114 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  switch i32 %115, label %127 [
    i32 136, label %116
    i32 134, label %116
    i32 137, label %116
    i32 135, label %116
  ]

116:                                              ; preds = %112, %112, %112, %112
  %117 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %6, align 8
  %118 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @DA7219_JACKDET_REM_DEB_SHIFT, align 4
  %121 = shl i32 %119, %120
  %122 = load i32, i32* %7, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* @DA7219_JACKDET_REM_DEB_MASK, align 4
  %125 = load i32, i32* %8, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %116, %112
  %128 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %129 = load i32, i32* @DA7219_ACCDET_CONFIG_2, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %128, i32 %129, i32 %130, i32 %131)
  %133 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %134 = load i32, i32* @DA7219_ACCDET_CONFIG_3, align 4
  %135 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %6, align 8
  %136 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %135, i32 0, i32 11
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %133, i32 %134, i32 %137)
  %139 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %140 = load i32, i32* @DA7219_ACCDET_CONFIG_4, align 4
  %141 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %6, align 8
  %142 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %141, i32 0, i32 10
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %139, i32 %140, i32 %143)
  %145 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %146 = load i32, i32* @DA7219_ACCDET_CONFIG_5, align 4
  %147 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %6, align 8
  %148 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %147, i32 0, i32 9
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %145, i32 %146, i32 %149)
  %151 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %152 = load i32, i32* @DA7219_ACCDET_CONFIG_6, align 4
  %153 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %6, align 8
  %154 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %153, i32 0, i32 8
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %151, i32 %152, i32 %155)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %157 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %6, align 8
  %158 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 4
  switch i32 %159, label %171 [
    i32 160, label %160
    i32 159, label %160
    i32 158, label %160
    i32 157, label %160
  ]

160:                                              ; preds = %127, %127, %127, %127
  %161 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %6, align 8
  %162 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @DA7219_BUTTON_AVERAGE_SHIFT, align 4
  %165 = shl i32 %163, %164
  %166 = load i32, i32* %7, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* @DA7219_BUTTON_AVERAGE_MASK, align 4
  %169 = load i32, i32* %8, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %8, align 4
  br label %171

171:                                              ; preds = %160, %127
  %172 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %6, align 8
  %173 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %172, i32 0, i32 7
  %174 = load i32, i32* %173, align 4
  switch i32 %174, label %186 [
    i32 164, label %175
    i32 163, label %175
    i32 162, label %175
    i32 161, label %175
  ]

175:                                              ; preds = %171, %171, %171, %171
  %176 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %6, align 8
  %177 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @DA7219_ADC_1_BIT_REPEAT_SHIFT, align 4
  %180 = shl i32 %178, %179
  %181 = load i32, i32* %7, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* @DA7219_ADC_1_BIT_REPEAT_MASK, align 4
  %184 = load i32, i32* %8, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %8, align 4
  br label %186

186:                                              ; preds = %175, %171
  %187 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %188 = load i32, i32* @DA7219_ACCDET_CONFIG_7, align 4
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %187, i32 %188, i32 %189, i32 %190)
  br label %192

192:                                              ; preds = %186, %19, %1
  ret void
}

declare dso_local %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
