; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l35.c_cs35l35_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l35.c_cs35l35_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cs35l35_private = type { i32, i32, i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, %struct.classh_cfg }
%struct.classh_cfg = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Invalid CLK:Rate %d:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CS35L35_CLK_CTL2 = common dso_local global i32 0, align 4
@CS35L35_CLK_CTL2_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to set port config %d\0A\00", align 1
@CS35L35_SP_RATE_MASK = common dso_local global i32 0, align 4
@CS35L35_CLASS_H_FET_DRIVE_CTL = common dso_local global i32 0, align 4
@CS35L35_CH_WKFET_DEL_MASK = common dso_local global i32 0, align 4
@CS35L35_CH_WKFET_DEL_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to set fet config %d\0A\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@CS35L35_SDIN_DEPTH_8 = common dso_local global i32 0, align 4
@CS35L35_SDIN_DEPTH_16 = common dso_local global i32 0, align 4
@CS35L35_SDIN_DEPTH_24 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Unsupported Width %d\0A\00", align 1
@CS35L35_AUDIN_DEPTH_CTL = common dso_local global i32 0, align 4
@CS35L35_AUDIN_DEPTH_MASK = common dso_local global i32 0, align 4
@CS35L35_AUDIN_DEPTH_SHIFT = common dso_local global i32 0, align 4
@CS35L35_ADVIN_DEPTH_MASK = common dso_local global i32 0, align 4
@CS35L35_ADVIN_DEPTH_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Unsupported sclk/fs ratio %d:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"ratio not supported\0A\00", align 1
@CS35L35_CLK_CTL3 = common dso_local global i32 0, align 4
@CS35L35_SP_SCLKS_MASK = common dso_local global i32 0, align 4
@CS35L35_SP_SCLKS_SHIFT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Failed to set fsclk %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @cs35l35_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l35_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.cs35l35_private*, align 8
  %10 = alloca %struct.classh_cfg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %18, align 8
  store %struct.snd_soc_component* %19, %struct.snd_soc_component** %8, align 8
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %21 = call %struct.cs35l35_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %20)
  store %struct.cs35l35_private* %21, %struct.cs35l35_private** %9, align 8
  %22 = load %struct.cs35l35_private*, %struct.cs35l35_private** %9, align 8
  %23 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store %struct.classh_cfg* %24, %struct.classh_cfg** %10, align 8
  %25 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %26 = call i32 @params_rate(%struct.snd_pcm_hw_params* %25)
  store i32 %26, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %27 = load %struct.cs35l35_private*, %struct.cs35l35_private** %9, align 8
  %28 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @cs35l35_get_clk_config(i32 %29, i32 %30)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %3
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %36 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cs35l35_private*, %struct.cs35l35_private** %9, align 8
  %39 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 (i32, i8*, ...) @dev_err(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %225

45:                                               ; preds = %3
  %46 = load %struct.cs35l35_private*, %struct.cs35l35_private** %9, align 8
  %47 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CS35L35_CLK_CTL2, align 4
  %50 = load i32, i32* @CS35L35_CLK_CTL2_MASK, align 4
  %51 = load i32, i32* %16, align 4
  %52 = call i32 @regmap_update_bits(i32 %48, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %45
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %57 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 (i32, i8*, ...) @dev_err(i32 %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %4, align 4
  br label %225

62:                                               ; preds = %45
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* @CS35L35_SP_RATE_MASK, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* %15, align 4
  %66 = load %struct.classh_cfg*, %struct.classh_cfg** %10, align 8
  %67 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %95

70:                                               ; preds = %62
  %71 = load i32, i32* %15, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %15, align 4
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %76, label %95

76:                                               ; preds = %73, %70
  %77 = load %struct.cs35l35_private*, %struct.cs35l35_private** %9, align 8
  %78 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @CS35L35_CLASS_H_FET_DRIVE_CTL, align 4
  %81 = load i32, i32* @CS35L35_CH_WKFET_DEL_MASK, align 4
  %82 = load i32, i32* @CS35L35_CH_WKFET_DEL_SHIFT, align 4
  %83 = shl i32 0, %82
  %84 = call i32 @regmap_update_bits(i32 %79, i32 %80, i32 %81, i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %76
  %88 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %89 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %12, align 4
  %92 = call i32 (i32, i8*, ...) @dev_err(i32 %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %4, align 4
  br label %225

94:                                               ; preds = %76
  br label %95

95:                                               ; preds = %94, %73, %62
  %96 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %97 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %145

101:                                              ; preds = %95
  %102 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %103 = call i32 @params_width(%struct.snd_pcm_hw_params* %102)
  switch i32 %103, label %110 [
    i32 8, label %104
    i32 16, label %106
    i32 24, label %108
  ]

104:                                              ; preds = %101
  %105 = load i32, i32* @CS35L35_SDIN_DEPTH_8, align 4
  store i32 %105, i32* %14, align 4
  br label %119

106:                                              ; preds = %101
  %107 = load i32, i32* @CS35L35_SDIN_DEPTH_16, align 4
  store i32 %107, i32* %14, align 4
  br label %119

108:                                              ; preds = %101
  %109 = load i32, i32* @CS35L35_SDIN_DEPTH_24, align 4
  store i32 %109, i32* %14, align 4
  br label %119

110:                                              ; preds = %101
  %111 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %112 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %115 = call i32 @params_width(%struct.snd_pcm_hw_params* %114)
  %116 = call i32 (i32, i8*, ...) @dev_err(i32 %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %225

119:                                              ; preds = %108, %106, %104
  %120 = load %struct.cs35l35_private*, %struct.cs35l35_private** %9, align 8
  %121 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @CS35L35_AUDIN_DEPTH_CTL, align 4
  %124 = load i32, i32* @CS35L35_AUDIN_DEPTH_MASK, align 4
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* @CS35L35_AUDIN_DEPTH_SHIFT, align 4
  %127 = shl i32 %125, %126
  %128 = call i32 @regmap_update_bits(i32 %122, i32 %123, i32 %124, i32 %127)
  %129 = load %struct.cs35l35_private*, %struct.cs35l35_private** %9, align 8
  %130 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %119
  %135 = load %struct.cs35l35_private*, %struct.cs35l35_private** %9, align 8
  %136 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @CS35L35_AUDIN_DEPTH_CTL, align 4
  %139 = load i32, i32* @CS35L35_ADVIN_DEPTH_MASK, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* @CS35L35_ADVIN_DEPTH_SHIFT, align 4
  %142 = shl i32 %140, %141
  %143 = call i32 @regmap_update_bits(i32 %137, i32 %138, i32 %139, i32 %142)
  br label %144

144:                                              ; preds = %134, %119
  br label %145

145:                                              ; preds = %144, %95
  %146 = load %struct.cs35l35_private*, %struct.cs35l35_private** %9, align 8
  %147 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %223

150:                                              ; preds = %145
  %151 = load %struct.cs35l35_private*, %struct.cs35l35_private** %9, align 8
  %152 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = sdiv i32 %153, %154
  %156 = srem i32 %155, 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %150
  %159 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %160 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.cs35l35_private*, %struct.cs35l35_private** %9, align 8
  %163 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %11, align 4
  %166 = call i32 (i32, i8*, ...) @dev_err(i32 %161, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %164, i32 %165)
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %4, align 4
  br label %225

169:                                              ; preds = %150
  %170 = load %struct.cs35l35_private*, %struct.cs35l35_private** %9, align 8
  %171 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %11, align 4
  %174 = sdiv i32 %172, %173
  %175 = sdiv i32 %174, 4
  %176 = sub nsw i32 %175, 1
  store i32 %176, i32* %13, align 4
  %177 = load %struct.cs35l35_private*, %struct.cs35l35_private** %9, align 8
  %178 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %192

181:                                              ; preds = %169
  %182 = load i32, i32* %13, align 4
  switch i32 %182, label %184 [
    i32 130, label %183
    i32 129, label %183
    i32 128, label %183
  ]

183:                                              ; preds = %181, %181, %181
  br label %191

184:                                              ; preds = %181
  %185 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %186 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (i32, i8*, ...) @dev_err(i32 %187, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %189 = load i32, i32* @EINVAL, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %4, align 4
  br label %225

191:                                              ; preds = %183
  br label %203

192:                                              ; preds = %169
  %193 = load i32, i32* %13, align 4
  switch i32 %193, label %195 [
    i32 130, label %194
    i32 128, label %194
  ]

194:                                              ; preds = %192, %192
  br label %202

195:                                              ; preds = %192
  %196 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %197 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 (i32, i8*, ...) @dev_err(i32 %198, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %200 = load i32, i32* @EINVAL, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %4, align 4
  br label %225

202:                                              ; preds = %194
  br label %203

203:                                              ; preds = %202, %191
  %204 = load %struct.cs35l35_private*, %struct.cs35l35_private** %9, align 8
  %205 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @CS35L35_CLK_CTL3, align 4
  %208 = load i32, i32* @CS35L35_SP_SCLKS_MASK, align 4
  %209 = load i32, i32* %13, align 4
  %210 = load i32, i32* @CS35L35_SP_SCLKS_SHIFT, align 4
  %211 = shl i32 %209, %210
  %212 = call i32 @regmap_update_bits(i32 %206, i32 %207, i32 %208, i32 %211)
  store i32 %212, i32* %12, align 4
  %213 = load i32, i32* %12, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %203
  %216 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %217 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %12, align 4
  %220 = call i32 (i32, i8*, ...) @dev_err(i32 %218, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %219)
  %221 = load i32, i32* %12, align 4
  store i32 %221, i32* %4, align 4
  br label %225

222:                                              ; preds = %203
  br label %223

223:                                              ; preds = %222, %145
  %224 = load i32, i32* %12, align 4
  store i32 %224, i32* %4, align 4
  br label %225

225:                                              ; preds = %223, %215, %195, %184, %158, %110, %87, %55, %34
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local %struct.cs35l35_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @cs35l35_get_clk_config(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
