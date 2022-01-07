; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_handle_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_handle_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.da7218_priv = type { i64, i64, %struct.da7218_pdata* }
%struct.da7218_pdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.da7218_hpldet_pdata*, i64 }
%struct.da7218_hpldet_pdata = type { i32, i32, i32, i64, i64, i64 }

@DA7218_MICBIAS_1_LP_MODE_MASK = common dso_local global i32 0, align 4
@DA7218_MICBIAS_1_LEVEL_SHIFT = common dso_local global i32 0, align 4
@DA7218_MICBIAS_2_LP_MODE_MASK = common dso_local global i32 0, align 4
@DA7218_MICBIAS_2_LEVEL_SHIFT = common dso_local global i32 0, align 4
@DA7218_MICBIAS_CTRL = common dso_local global i32 0, align 4
@DA7218_MIC_1_SELECT = common dso_local global i32 0, align 4
@DA7218_MIC_2_SELECT = common dso_local global i32 0, align 4
@DA7218_DMIC_1_DATA_SEL_SHIFT = common dso_local global i32 0, align 4
@DA7218_DMIC_1_SAMPLEPHASE_SHIFT = common dso_local global i32 0, align 4
@DA7218_DMIC_1_CLK_RATE_SHIFT = common dso_local global i32 0, align 4
@DA7218_DMIC_1_CTRL = common dso_local global i32 0, align 4
@DA7218_DMIC_1_DATA_SEL_MASK = common dso_local global i32 0, align 4
@DA7218_DMIC_1_SAMPLEPHASE_MASK = common dso_local global i32 0, align 4
@DA7218_DMIC_1_CLK_RATE_MASK = common dso_local global i32 0, align 4
@DA7218_DMIC_2_DATA_SEL_SHIFT = common dso_local global i32 0, align 4
@DA7218_DMIC_2_SAMPLEPHASE_SHIFT = common dso_local global i32 0, align 4
@DA7218_DMIC_2_CLK_RATE_SHIFT = common dso_local global i32 0, align 4
@DA7218_DMIC_2_CTRL = common dso_local global i32 0, align 4
@DA7218_DMIC_2_DATA_SEL_MASK = common dso_local global i32 0, align 4
@DA7218_DMIC_2_SAMPLEPHASE_MASK = common dso_local global i32 0, align 4
@DA7218_DMIC_2_CLK_RATE_MASK = common dso_local global i32 0, align 4
@DA7217_DEV_ID = common dso_local global i64 0, align 8
@DA7218_HP_DIFF_UNLOCK = common dso_local global i32 0, align 4
@DA7218_HP_DIFF_UNLOCK_VAL = common dso_local global i32 0, align 4
@DA7218_HP_DIFF_CTRL = common dso_local global i32 0, align 4
@DA7218_HP_AMP_SINGLE_SUPPLY_EN_MASK = common dso_local global i32 0, align 4
@DA7218_DEV_ID = common dso_local global i64 0, align 8
@DA7218_HPLDET_JACK_RATE_SHIFT = common dso_local global i32 0, align 4
@DA7218_HPLDET_JACK_DEBOUNCE_SHIFT = common dso_local global i32 0, align 4
@DA7218_HPLDET_JACK_THR_SHIFT = common dso_local global i32 0, align 4
@DA7218_HPLDET_JACK = common dso_local global i32 0, align 4
@DA7218_HPLDET_JACK_RATE_MASK = common dso_local global i32 0, align 4
@DA7218_HPLDET_JACK_DEBOUNCE_MASK = common dso_local global i32 0, align 4
@DA7218_HPLDET_JACK_THR_MASK = common dso_local global i32 0, align 4
@DA7218_HPLDET_COMP_INV_MASK = common dso_local global i32 0, align 4
@DA7218_HPLDET_HYST_EN_MASK = common dso_local global i32 0, align 4
@DA7218_HPLDET_DISCHARGE_EN_MASK = common dso_local global i32 0, align 4
@DA7218_HPLDET_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @da7218_handle_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da7218_handle_pdata(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.da7218_priv*, align 8
  %4 = alloca %struct.da7218_pdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.da7218_hpldet_pdata*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %10 = call %struct.da7218_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.da7218_priv* %10, %struct.da7218_priv** %3, align 8
  %11 = load %struct.da7218_priv*, %struct.da7218_priv** %3, align 8
  %12 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %11, i32 0, i32 2
  %13 = load %struct.da7218_pdata*, %struct.da7218_pdata** %12, align 8
  store %struct.da7218_pdata* %13, %struct.da7218_pdata** %4, align 8
  %14 = load %struct.da7218_pdata*, %struct.da7218_pdata** %4, align 8
  %15 = icmp ne %struct.da7218_pdata* %14, null
  br i1 %15, label %16, label %283

16:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %17 = load %struct.da7218_pdata*, %struct.da7218_pdata** %4, align 8
  %18 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %32 [
    i32 139, label %20
    i32 138, label %24
    i32 137, label %24
    i32 136, label %24
    i32 135, label %24
    i32 134, label %24
    i32 133, label %24
    i32 132, label %24
    i32 131, label %24
  ]

20:                                               ; preds = %16
  %21 = load i32, i32* @DA7218_MICBIAS_1_LP_MODE_MASK, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %32

24:                                               ; preds = %16, %16, %16, %16, %16, %16, %16, %16
  %25 = load %struct.da7218_pdata*, %struct.da7218_pdata** %4, align 8
  %26 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @DA7218_MICBIAS_1_LEVEL_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %16, %24, %20
  %33 = load %struct.da7218_pdata*, %struct.da7218_pdata** %4, align 8
  %34 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %48 [
    i32 139, label %36
    i32 138, label %40
    i32 137, label %40
    i32 136, label %40
    i32 135, label %40
    i32 134, label %40
    i32 133, label %40
    i32 132, label %40
    i32 131, label %40
  ]

36:                                               ; preds = %32
  %37 = load i32, i32* @DA7218_MICBIAS_2_LP_MODE_MASK, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %48

40:                                               ; preds = %32, %32, %32, %32, %32, %32, %32, %32
  %41 = load %struct.da7218_pdata*, %struct.da7218_pdata** %4, align 8
  %42 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DA7218_MICBIAS_2_LEVEL_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %32, %40, %36
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %50 = load i32, i32* @DA7218_MICBIAS_CTRL, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %49, i32 %50, i32 %51)
  %53 = load %struct.da7218_pdata*, %struct.da7218_pdata** %4, align 8
  %54 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %63 [
    i32 130, label %56
    i32 128, label %56
    i32 129, label %56
  ]

56:                                               ; preds = %48, %48, %48
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %58 = load i32, i32* @DA7218_MIC_1_SELECT, align 4
  %59 = load %struct.da7218_pdata*, %struct.da7218_pdata** %4, align 8
  %60 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %57, i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %48, %56
  %64 = load %struct.da7218_pdata*, %struct.da7218_pdata** %4, align 8
  %65 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %74 [
    i32 130, label %67
    i32 128, label %67
    i32 129, label %67
  ]

67:                                               ; preds = %63, %63, %63
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %69 = load i32, i32* @DA7218_MIC_2_SELECT, align 4
  %70 = load %struct.da7218_pdata*, %struct.da7218_pdata** %4, align 8
  %71 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %68, i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %63, %67
  %75 = load %struct.da7218_pdata*, %struct.da7218_pdata** %4, align 8
  %76 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  switch i32 %77, label %86 [
    i32 159, label %78
    i32 158, label %78
  ]

78:                                               ; preds = %74, %74
  %79 = load %struct.da7218_pdata*, %struct.da7218_pdata** %4, align 8
  %80 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @DA7218_DMIC_1_DATA_SEL_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = load i32, i32* %6, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %74, %78
  %87 = load %struct.da7218_pdata*, %struct.da7218_pdata** %4, align 8
  %88 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  switch i32 %89, label %98 [
    i32 156, label %90
    i32 157, label %90
  ]

90:                                               ; preds = %86, %86
  %91 = load %struct.da7218_pdata*, %struct.da7218_pdata** %4, align 8
  %92 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @DA7218_DMIC_1_SAMPLEPHASE_SHIFT, align 4
  %95 = shl i32 %93, %94
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %86, %90
  %99 = load %struct.da7218_pdata*, %struct.da7218_pdata** %4, align 8
  %100 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  switch i32 %101, label %110 [
    i32 160, label %102
    i32 161, label %102
  ]

102:                                              ; preds = %98, %98
  %103 = load %struct.da7218_pdata*, %struct.da7218_pdata** %4, align 8
  %104 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @DA7218_DMIC_1_CLK_RATE_SHIFT, align 4
  %107 = shl i32 %105, %106
  %108 = load i32, i32* %6, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %98, %102
  %111 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %112 = load i32, i32* @DA7218_DMIC_1_CTRL, align 4
  %113 = load i32, i32* @DA7218_DMIC_1_DATA_SEL_MASK, align 4
  %114 = load i32, i32* @DA7218_DMIC_1_SAMPLEPHASE_MASK, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @DA7218_DMIC_1_CLK_RATE_MASK, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %111, i32 %112, i32 %117, i32 %118)
  store i32 0, i32* %6, align 4
  %120 = load %struct.da7218_pdata*, %struct.da7218_pdata** %4, align 8
  %121 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %120, i32 0, i32 7
  %122 = load i32, i32* %121, align 4
  switch i32 %122, label %131 [
    i32 159, label %123
    i32 158, label %123
  ]

123:                                              ; preds = %110, %110
  %124 = load %struct.da7218_pdata*, %struct.da7218_pdata** %4, align 8
  %125 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @DA7218_DMIC_2_DATA_SEL_SHIFT, align 4
  %128 = shl i32 %126, %127
  %129 = load i32, i32* %6, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %110, %123
  %132 = load %struct.da7218_pdata*, %struct.da7218_pdata** %4, align 8
  %133 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 8
  switch i32 %134, label %143 [
    i32 156, label %135
    i32 157, label %135
  ]

135:                                              ; preds = %131, %131
  %136 = load %struct.da7218_pdata*, %struct.da7218_pdata** %4, align 8
  %137 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @DA7218_DMIC_2_SAMPLEPHASE_SHIFT, align 4
  %140 = shl i32 %138, %139
  %141 = load i32, i32* %6, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %131, %135
  %144 = load %struct.da7218_pdata*, %struct.da7218_pdata** %4, align 8
  %145 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %144, i32 0, i32 9
  %146 = load i32, i32* %145, align 4
  switch i32 %146, label %155 [
    i32 160, label %147
    i32 161, label %147
  ]

147:                                              ; preds = %143, %143
  %148 = load %struct.da7218_pdata*, %struct.da7218_pdata** %4, align 8
  %149 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %148, i32 0, i32 9
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @DA7218_DMIC_2_CLK_RATE_SHIFT, align 4
  %152 = shl i32 %150, %151
  %153 = load i32, i32* %6, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %6, align 4
  br label %155

155:                                              ; preds = %143, %147
  %156 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %157 = load i32, i32* @DA7218_DMIC_2_CTRL, align 4
  %158 = load i32, i32* @DA7218_DMIC_2_DATA_SEL_MASK, align 4
  %159 = load i32, i32* @DA7218_DMIC_2_SAMPLEPHASE_MASK, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @DA7218_DMIC_2_CLK_RATE_MASK, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %156, i32 %157, i32 %162, i32 %163)
  %165 = load %struct.da7218_priv*, %struct.da7218_priv** %3, align 8
  %166 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @DA7217_DEV_ID, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %191

170:                                              ; preds = %155
  %171 = load %struct.da7218_pdata*, %struct.da7218_pdata** %4, align 8
  %172 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %171, i32 0, i32 11
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.da7218_priv*, %struct.da7218_priv** %3, align 8
  %175 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %174, i32 0, i32 1
  store i64 %173, i64* %175, align 8
  %176 = load %struct.da7218_priv*, %struct.da7218_priv** %3, align 8
  %177 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %170
  %181 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %182 = load i32, i32* @DA7218_HP_DIFF_UNLOCK, align 4
  %183 = load i32, i32* @DA7218_HP_DIFF_UNLOCK_VAL, align 4
  %184 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %181, i32 %182, i32 %183)
  %185 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %186 = load i32, i32* @DA7218_HP_DIFF_CTRL, align 4
  %187 = load i32, i32* @DA7218_HP_AMP_SINGLE_SUPPLY_EN_MASK, align 4
  %188 = load i32, i32* @DA7218_HP_AMP_SINGLE_SUPPLY_EN_MASK, align 4
  %189 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %185, i32 %186, i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %180, %170
  br label %191

191:                                              ; preds = %190, %155
  %192 = load %struct.da7218_priv*, %struct.da7218_priv** %3, align 8
  %193 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @DA7218_DEV_ID, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %282

197:                                              ; preds = %191
  %198 = load %struct.da7218_pdata*, %struct.da7218_pdata** %4, align 8
  %199 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %198, i32 0, i32 10
  %200 = load %struct.da7218_hpldet_pdata*, %struct.da7218_hpldet_pdata** %199, align 8
  %201 = icmp ne %struct.da7218_hpldet_pdata* %200, null
  br i1 %201, label %202, label %282

202:                                              ; preds = %197
  %203 = load %struct.da7218_pdata*, %struct.da7218_pdata** %4, align 8
  %204 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %203, i32 0, i32 10
  %205 = load %struct.da7218_hpldet_pdata*, %struct.da7218_hpldet_pdata** %204, align 8
  store %struct.da7218_hpldet_pdata* %205, %struct.da7218_hpldet_pdata** %7, align 8
  store i32 0, i32* %8, align 4
  %206 = load %struct.da7218_hpldet_pdata*, %struct.da7218_hpldet_pdata** %7, align 8
  %207 = getelementptr inbounds %struct.da7218_hpldet_pdata, %struct.da7218_hpldet_pdata* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  switch i32 %208, label %217 [
    i32 146, label %209
    i32 151, label %209
    i32 149, label %209
    i32 147, label %209
    i32 144, label %209
    i32 150, label %209
    i32 148, label %209
    i32 145, label %209
  ]

209:                                              ; preds = %202, %202, %202, %202, %202, %202, %202, %202
  %210 = load %struct.da7218_hpldet_pdata*, %struct.da7218_hpldet_pdata** %7, align 8
  %211 = getelementptr inbounds %struct.da7218_hpldet_pdata, %struct.da7218_hpldet_pdata* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @DA7218_HPLDET_JACK_RATE_SHIFT, align 4
  %214 = shl i32 %212, %213
  %215 = load i32, i32* %8, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %8, align 4
  br label %217

217:                                              ; preds = %202, %209
  %218 = load %struct.da7218_hpldet_pdata*, %struct.da7218_hpldet_pdata** %7, align 8
  %219 = getelementptr inbounds %struct.da7218_hpldet_pdata, %struct.da7218_hpldet_pdata* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  switch i32 %220, label %229 [
    i32 152, label %221
    i32 155, label %221
    i32 154, label %221
    i32 153, label %221
  ]

221:                                              ; preds = %217, %217, %217, %217
  %222 = load %struct.da7218_hpldet_pdata*, %struct.da7218_hpldet_pdata** %7, align 8
  %223 = getelementptr inbounds %struct.da7218_hpldet_pdata, %struct.da7218_hpldet_pdata* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @DA7218_HPLDET_JACK_DEBOUNCE_SHIFT, align 4
  %226 = shl i32 %224, %225
  %227 = load i32, i32* %8, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %8, align 4
  br label %229

229:                                              ; preds = %217, %221
  %230 = load %struct.da7218_hpldet_pdata*, %struct.da7218_hpldet_pdata** %7, align 8
  %231 = getelementptr inbounds %struct.da7218_hpldet_pdata, %struct.da7218_hpldet_pdata* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  switch i32 %232, label %241 [
    i32 143, label %233
    i32 142, label %233
    i32 141, label %233
    i32 140, label %233
  ]

233:                                              ; preds = %229, %229, %229, %229
  %234 = load %struct.da7218_hpldet_pdata*, %struct.da7218_hpldet_pdata** %7, align 8
  %235 = getelementptr inbounds %struct.da7218_hpldet_pdata, %struct.da7218_hpldet_pdata* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @DA7218_HPLDET_JACK_THR_SHIFT, align 4
  %238 = shl i32 %236, %237
  %239 = load i32, i32* %8, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %8, align 4
  br label %241

241:                                              ; preds = %229, %233
  %242 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %243 = load i32, i32* @DA7218_HPLDET_JACK, align 4
  %244 = load i32, i32* @DA7218_HPLDET_JACK_RATE_MASK, align 4
  %245 = load i32, i32* @DA7218_HPLDET_JACK_DEBOUNCE_MASK, align 4
  %246 = or i32 %244, %245
  %247 = load i32, i32* @DA7218_HPLDET_JACK_THR_MASK, align 4
  %248 = or i32 %246, %247
  %249 = load i32, i32* %8, align 4
  %250 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %242, i32 %243, i32 %248, i32 %249)
  store i32 0, i32* %8, align 4
  %251 = load %struct.da7218_hpldet_pdata*, %struct.da7218_hpldet_pdata** %7, align 8
  %252 = getelementptr inbounds %struct.da7218_hpldet_pdata, %struct.da7218_hpldet_pdata* %251, i32 0, i32 5
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %241
  %256 = load i32, i32* @DA7218_HPLDET_COMP_INV_MASK, align 4
  %257 = load i32, i32* %8, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %8, align 4
  br label %259

259:                                              ; preds = %255, %241
  %260 = load %struct.da7218_hpldet_pdata*, %struct.da7218_hpldet_pdata** %7, align 8
  %261 = getelementptr inbounds %struct.da7218_hpldet_pdata, %struct.da7218_hpldet_pdata* %260, i32 0, i32 4
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %259
  %265 = load i32, i32* @DA7218_HPLDET_HYST_EN_MASK, align 4
  %266 = load i32, i32* %8, align 4
  %267 = or i32 %266, %265
  store i32 %267, i32* %8, align 4
  br label %268

268:                                              ; preds = %264, %259
  %269 = load %struct.da7218_hpldet_pdata*, %struct.da7218_hpldet_pdata** %7, align 8
  %270 = getelementptr inbounds %struct.da7218_hpldet_pdata, %struct.da7218_hpldet_pdata* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %268
  %274 = load i32, i32* @DA7218_HPLDET_DISCHARGE_EN_MASK, align 4
  %275 = load i32, i32* %8, align 4
  %276 = or i32 %275, %274
  store i32 %276, i32* %8, align 4
  br label %277

277:                                              ; preds = %273, %268
  %278 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %279 = load i32, i32* @DA7218_HPLDET_CTRL, align 4
  %280 = load i32, i32* %8, align 4
  %281 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %278, i32 %279, i32 %280)
  br label %282

282:                                              ; preds = %277, %197, %191
  br label %283

283:                                              ; preds = %282, %1
  ret void
}

declare dso_local %struct.da7218_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
