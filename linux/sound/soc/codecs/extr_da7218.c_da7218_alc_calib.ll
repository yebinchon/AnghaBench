; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_alc_calib.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_alc_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@DA7218_MIC_1_CTRL = common dso_local global i32 0, align 4
@DA7218_MIC_2_CTRL = common dso_local global i32 0, align 4
@DA7218_MIXIN_1_CTRL = common dso_local global i32 0, align 4
@DA7218_MIXIN_2_CTRL = common dso_local global i32 0, align 4
@DA7218_IN_1L_FILTER_CTRL = common dso_local global i32 0, align 4
@DA7218_IN_1R_FILTER_CTRL = common dso_local global i32 0, align 4
@DA7218_IN_2L_FILTER_CTRL = common dso_local global i32 0, align 4
@DA7218_IN_2R_FILTER_CTRL = common dso_local global i32 0, align 4
@DA7218_IN_1_HPF_FILTER_CTRL = common dso_local global i32 0, align 4
@DA7218_IN_2_HPF_FILTER_CTRL = common dso_local global i32 0, align 4
@DA7218_MIC_1_AMP_EN_MASK = common dso_local global i32 0, align 4
@DA7218_MIC_2_AMP_EN_MASK = common dso_local global i32 0, align 4
@DA7218_MIC_1_AMP_MUTE_EN_MASK = common dso_local global i32 0, align 4
@DA7218_MIC_2_AMP_MUTE_EN_MASK = common dso_local global i32 0, align 4
@DA7218_MIXIN_1_AMP_EN_MASK = common dso_local global i32 0, align 4
@DA7218_MIXIN_1_AMP_MUTE_EN_MASK = common dso_local global i32 0, align 4
@DA7218_MIXIN_2_AMP_EN_MASK = common dso_local global i32 0, align 4
@DA7218_MIXIN_2_AMP_MUTE_EN_MASK = common dso_local global i32 0, align 4
@DA7218_IN_1L_FILTER_EN_MASK = common dso_local global i32 0, align 4
@DA7218_IN_1L_MUTE_EN_MASK = common dso_local global i32 0, align 4
@DA7218_IN_1R_FILTER_EN_MASK = common dso_local global i32 0, align 4
@DA7218_IN_1R_MUTE_EN_MASK = common dso_local global i32 0, align 4
@DA7218_IN_2L_FILTER_EN_MASK = common dso_local global i32 0, align 4
@DA7218_IN_2L_MUTE_EN_MASK = common dso_local global i32 0, align 4
@DA7218_IN_2R_FILTER_EN_MASK = common dso_local global i32 0, align 4
@DA7218_IN_2R_MUTE_EN_MASK = common dso_local global i32 0, align 4
@DA7218_IN_1_VOICE_EN_MASK = common dso_local global i32 0, align 4
@DA7218_IN_2_VOICE_EN_MASK = common dso_local global i32 0, align 4
@DA7218_CALIB_CTRL = common dso_local global i32 0, align 4
@DA7218_CALIB_AUTO_EN_MASK = common dso_local global i32 0, align 4
@DA7218_ALC_CALIB_DELAY_MIN = common dso_local global i32 0, align 4
@DA7218_ALC_CALIB_DELAY_MAX = common dso_local global i32 0, align 4
@DA7218_ALC_CALIB_MAX_TRIES = common dso_local global i32 0, align 4
@DA7218_CALIB_OVERFLOW_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ALC auto calibration failed - %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@DA7218_CALIB_OFFSET_EN_MASK = common dso_local global i32 0, align 4
@DA7218_ALC_CTRL1 = common dso_local global i32 0, align 4
@DA7218_ALC_SYNC_MODE_MASK = common dso_local global i32 0, align 4
@DA7218_ALC_SYNC_MODE_CH1 = common dso_local global i32 0, align 4
@DA7218_ALC_SYNC_MODE_CH2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @da7218_alc_calib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da7218_alc_calib(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %17 = load i32, i32* @DA7218_MIC_1_CTRL, align 4
  %18 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %20 = load i32, i32* @DA7218_MIC_2_CTRL, align 4
  %21 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %23 = load i32, i32* @DA7218_MIXIN_1_CTRL, align 4
  %24 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %26 = load i32, i32* @DA7218_MIXIN_2_CTRL, align 4
  %27 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %29 = load i32, i32* @DA7218_IN_1L_FILTER_CTRL, align 4
  %30 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %32 = load i32, i32* @DA7218_IN_1R_FILTER_CTRL, align 4
  %33 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %35 = load i32, i32* @DA7218_IN_2L_FILTER_CTRL, align 4
  %36 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %38 = load i32, i32* @DA7218_IN_2R_FILTER_CTRL, align 4
  %39 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %41 = load i32, i32* @DA7218_IN_1_HPF_FILTER_CTRL, align 4
  %42 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %44 = load i32, i32* @DA7218_IN_2_HPF_FILTER_CTRL, align 4
  %45 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %47 = load i32, i32* @DA7218_MIC_1_CTRL, align 4
  %48 = load i32, i32* @DA7218_MIC_1_AMP_EN_MASK, align 4
  %49 = load i32, i32* @DA7218_MIC_1_AMP_EN_MASK, align 4
  %50 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %52 = load i32, i32* @DA7218_MIC_2_CTRL, align 4
  %53 = load i32, i32* @DA7218_MIC_2_AMP_EN_MASK, align 4
  %54 = load i32, i32* @DA7218_MIC_2_AMP_EN_MASK, align 4
  %55 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %57 = load i32, i32* @DA7218_MIC_1_CTRL, align 4
  %58 = load i32, i32* @DA7218_MIC_1_AMP_MUTE_EN_MASK, align 4
  %59 = load i32, i32* @DA7218_MIC_1_AMP_MUTE_EN_MASK, align 4
  %60 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %56, i32 %57, i32 %58, i32 %59)
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %62 = load i32, i32* @DA7218_MIC_2_CTRL, align 4
  %63 = load i32, i32* @DA7218_MIC_2_AMP_MUTE_EN_MASK, align 4
  %64 = load i32, i32* @DA7218_MIC_2_AMP_MUTE_EN_MASK, align 4
  %65 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %67 = load i32, i32* @DA7218_MIXIN_1_CTRL, align 4
  %68 = load i32, i32* @DA7218_MIXIN_1_AMP_EN_MASK, align 4
  %69 = load i32, i32* @DA7218_MIXIN_1_AMP_MUTE_EN_MASK, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @DA7218_MIXIN_1_AMP_EN_MASK, align 4
  %72 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %66, i32 %67, i32 %70, i32 %71)
  %73 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %74 = load i32, i32* @DA7218_MIXIN_2_CTRL, align 4
  %75 = load i32, i32* @DA7218_MIXIN_2_AMP_EN_MASK, align 4
  %76 = load i32, i32* @DA7218_MIXIN_2_AMP_MUTE_EN_MASK, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @DA7218_MIXIN_2_AMP_EN_MASK, align 4
  %79 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %73, i32 %74, i32 %77, i32 %78)
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %81 = load i32, i32* @DA7218_IN_1L_FILTER_CTRL, align 4
  %82 = load i32, i32* @DA7218_IN_1L_FILTER_EN_MASK, align 4
  %83 = load i32, i32* @DA7218_IN_1L_MUTE_EN_MASK, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @DA7218_IN_1L_FILTER_EN_MASK, align 4
  %86 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %80, i32 %81, i32 %84, i32 %85)
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %88 = load i32, i32* @DA7218_IN_1R_FILTER_CTRL, align 4
  %89 = load i32, i32* @DA7218_IN_1R_FILTER_EN_MASK, align 4
  %90 = load i32, i32* @DA7218_IN_1R_MUTE_EN_MASK, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @DA7218_IN_1R_FILTER_EN_MASK, align 4
  %93 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %87, i32 %88, i32 %91, i32 %92)
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %95 = load i32, i32* @DA7218_IN_2L_FILTER_CTRL, align 4
  %96 = load i32, i32* @DA7218_IN_2L_FILTER_EN_MASK, align 4
  %97 = load i32, i32* @DA7218_IN_2L_MUTE_EN_MASK, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @DA7218_IN_2L_FILTER_EN_MASK, align 4
  %100 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %94, i32 %95, i32 %98, i32 %99)
  %101 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %102 = load i32, i32* @DA7218_IN_2R_FILTER_CTRL, align 4
  %103 = load i32, i32* @DA7218_IN_2R_FILTER_EN_MASK, align 4
  %104 = load i32, i32* @DA7218_IN_2R_MUTE_EN_MASK, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @DA7218_IN_2R_FILTER_EN_MASK, align 4
  %107 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %101, i32 %102, i32 %105, i32 %106)
  %108 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %109 = load i32, i32* @DA7218_IN_1_HPF_FILTER_CTRL, align 4
  %110 = load i32, i32* @DA7218_IN_1_VOICE_EN_MASK, align 4
  %111 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %108, i32 %109, i32 %110, i32 0)
  %112 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %113 = load i32, i32* @DA7218_IN_2_HPF_FILTER_CTRL, align 4
  %114 = load i32, i32* @DA7218_IN_2_VOICE_EN_MASK, align 4
  %115 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %112, i32 %113, i32 %114, i32 0)
  %116 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %117 = load i32, i32* @DA7218_CALIB_CTRL, align 4
  %118 = load i32, i32* @DA7218_CALIB_AUTO_EN_MASK, align 4
  %119 = load i32, i32* @DA7218_CALIB_AUTO_EN_MASK, align 4
  %120 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %116, i32 %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %145, %1
  %122 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %123 = load i32, i32* @DA7218_CALIB_CTRL, align 4
  %124 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %122, i32 %123)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* @DA7218_CALIB_AUTO_EN_MASK, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %121
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* @DA7218_ALC_CALIB_DELAY_MIN, align 4
  %133 = load i32, i32* @DA7218_ALC_CALIB_DELAY_MAX, align 4
  %134 = call i32 @usleep_range(i32 %132, i32 %133)
  br label %136

135:                                              ; preds = %121
  store i32 1, i32* %15, align 4
  br label %136

136:                                              ; preds = %135, %129
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* @DA7218_ALC_CALIB_MAX_TRIES, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = load i32, i32* %15, align 4
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  br label %145

145:                                              ; preds = %141, %137
  %146 = phi i1 [ false, %137 ], [ %144, %141 ]
  br i1 %146, label %121, label %147

147:                                              ; preds = %145
  %148 = load i32, i32* %15, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* @DA7218_CALIB_OVERFLOW_MASK, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %172

155:                                              ; preds = %150, %147
  %156 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %157 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %15, align 4
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %163 = call i32 @dev_warn(i32 %158, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %162)
  %164 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %165 = load i32, i32* @DA7218_CALIB_CTRL, align 4
  %166 = load i32, i32* @DA7218_CALIB_OFFSET_EN_MASK, align 4
  %167 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %164, i32 %165, i32 %166, i32 0)
  %168 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %169 = load i32, i32* @DA7218_ALC_CTRL1, align 4
  %170 = load i32, i32* @DA7218_ALC_SYNC_MODE_MASK, align 4
  %171 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %168, i32 %169, i32 %170, i32 0)
  br label %185

172:                                              ; preds = %150
  %173 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %174 = load i32, i32* @DA7218_CALIB_CTRL, align 4
  %175 = load i32, i32* @DA7218_CALIB_OFFSET_EN_MASK, align 4
  %176 = load i32, i32* @DA7218_CALIB_OFFSET_EN_MASK, align 4
  %177 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %173, i32 %174, i32 %175, i32 %176)
  %178 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %179 = load i32, i32* @DA7218_ALC_CTRL1, align 4
  %180 = load i32, i32* @DA7218_ALC_SYNC_MODE_MASK, align 4
  %181 = load i32, i32* @DA7218_ALC_SYNC_MODE_CH1, align 4
  %182 = load i32, i32* @DA7218_ALC_SYNC_MODE_CH2, align 4
  %183 = or i32 %181, %182
  %184 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %178, i32 %179, i32 %180, i32 %183)
  br label %185

185:                                              ; preds = %172, %155
  %186 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %187 = load i32, i32* @DA7218_IN_1_HPF_FILTER_CTRL, align 4
  %188 = load i32, i32* %11, align 4
  %189 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %186, i32 %187, i32 %188)
  %190 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %191 = load i32, i32* @DA7218_IN_2_HPF_FILTER_CTRL, align 4
  %192 = load i32, i32* %12, align 4
  %193 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %190, i32 %191, i32 %192)
  %194 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %195 = load i32, i32* @DA7218_IN_1L_FILTER_CTRL, align 4
  %196 = load i32, i32* %7, align 4
  %197 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %194, i32 %195, i32 %196)
  %198 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %199 = load i32, i32* @DA7218_IN_1R_FILTER_CTRL, align 4
  %200 = load i32, i32* %8, align 4
  %201 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %198, i32 %199, i32 %200)
  %202 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %203 = load i32, i32* @DA7218_IN_2L_FILTER_CTRL, align 4
  %204 = load i32, i32* %9, align 4
  %205 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %202, i32 %203, i32 %204)
  %206 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %207 = load i32, i32* @DA7218_IN_2R_FILTER_CTRL, align 4
  %208 = load i32, i32* %10, align 4
  %209 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %206, i32 %207, i32 %208)
  %210 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %211 = load i32, i32* @DA7218_MIXIN_1_CTRL, align 4
  %212 = load i32, i32* %5, align 4
  %213 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %210, i32 %211, i32 %212)
  %214 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %215 = load i32, i32* @DA7218_MIXIN_2_CTRL, align 4
  %216 = load i32, i32* %6, align 4
  %217 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %214, i32 %215, i32 %216)
  %218 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %219 = load i32, i32* @DA7218_MIC_1_CTRL, align 4
  %220 = load i32, i32* %3, align 4
  %221 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %218, i32 %219, i32 %220)
  %222 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %223 = load i32, i32* @DA7218_MIC_2_CTRL, align 4
  %224 = load i32, i32* %4, align 4
  %225 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %222, i32 %223, i32 %224)
  ret void
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i8*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
