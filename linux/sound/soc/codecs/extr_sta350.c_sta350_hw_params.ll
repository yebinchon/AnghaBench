; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sta350.c_sta350_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sta350.c_sta350_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.sta350_priv = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"sta350->mclk is unset. Unable to determine ratio\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"rate: %u, ratio: %u\0A\00", align 1
@interpolation_ratios = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Unsupported samplerate: %u\0A\00", align 1
@mcs_ratio_table = common dso_local global i32** null, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"Unresolvable ratio: %u\0A\00", align 1
@STA350_CONFA_IR_SHIFT = common dso_local global i32 0, align 4
@STA350_CONFA_MCS_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"24bit\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"24bit or 32bit\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"20bit\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"18bit\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"16bit\0A\00", align 1
@STA350_CONFA = common dso_local global i32 0, align 4
@STA350_CONFA_MCS_MASK = common dso_local global i32 0, align 4
@STA350_CONFA_IR_MASK = common dso_local global i32 0, align 4
@STA350_CONFB = common dso_local global i32 0, align 4
@STA350_CONFB_SAI_MASK = common dso_local global i32 0, align 4
@STA350_CONFB_SAIFB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @sta350_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta350_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.sta350_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %18, i32 0, i32 0
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %19, align 8
  store %struct.snd_soc_component* %20, %struct.snd_soc_component** %8, align 8
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %22 = call %struct.sta350_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %21)
  store %struct.sta350_priv* %22, %struct.sta350_priv** %9, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %12, align 4
  %27 = load %struct.sta350_priv*, %struct.sta350_priv** %9, align 8
  %28 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %3
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %33 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, ...) @dev_err(i32 %34, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %238

38:                                               ; preds = %3
  %39 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %40 = call i32 @params_rate(%struct.snd_pcm_hw_params* %39)
  store i32 %40, i32* %15, align 4
  %41 = load %struct.sta350_priv*, %struct.sta350_priv** %9, align 8
  %42 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %15, align 4
  %45 = udiv i32 %43, %44
  store i32 %45, i32* %16, align 4
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %47 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %16, align 4
  %51 = call i32 (i32, i8*, ...) @dev_dbg(i32 %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50)
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %74, %38
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @interpolation_ratios, align 8
  %55 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %54)
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %52
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @interpolation_ratios, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %57
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** @interpolation_ratios, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %12, align 4
  br label %77

73:                                               ; preds = %57
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %52

77:                                               ; preds = %66, %52
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %82 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %15, align 4
  %85 = call i32 (i32, i8*, ...) @dev_err(i32 %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %238

88:                                               ; preds = %77
  store i32 0, i32* %10, align 4
  br label %89

89:                                               ; preds = %107, %88
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %90, 6
  br i1 %91, label %92, label %110

92:                                               ; preds = %89
  %93 = load i32**, i32*** @mcs_ratio_table, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %16, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %92
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %11, align 4
  br label %110

106:                                              ; preds = %92
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %89

110:                                              ; preds = %104, %89
  %111 = load i32, i32* %11, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %110
  %114 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %115 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %16, align 4
  %118 = call i32 (i32, i8*, ...) @dev_err(i32 %116, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %4, align 4
  br label %238

121:                                              ; preds = %110
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @STA350_CONFA_IR_SHIFT, align 4
  %124 = shl i32 %122, %123
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @STA350_CONFA_MCS_SHIFT, align 4
  %127 = shl i32 %125, %126
  %128 = or i32 %124, %127
  store i32 %128, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %129 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %130 = call i32 @params_width(%struct.snd_pcm_hw_params* %129)
  switch i32 %130, label %206 [
    i32 24, label %131
    i32 32, label %136
    i32 20, label %153
    i32 18, label %171
    i32 16, label %189
  ]

131:                                              ; preds = %121
  %132 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %133 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i32, i8*, ...) @dev_dbg(i32 %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %136

136:                                              ; preds = %121, %131
  %137 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %138 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i32, i8*, ...) @dev_dbg(i32 %139, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %141 = load %struct.sta350_priv*, %struct.sta350_priv** %9, align 8
  %142 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  switch i32 %143, label %152 [
    i32 130, label %144
    i32 129, label %146
    i32 128, label %149
  ]

144:                                              ; preds = %136
  %145 = load i32, i32* %14, align 4
  store i32 %145, i32* %14, align 4
  br label %152

146:                                              ; preds = %136
  %147 = load i32, i32* %14, align 4
  %148 = or i32 %147, 1
  store i32 %148, i32* %14, align 4
  br label %152

149:                                              ; preds = %136
  %150 = load i32, i32* %14, align 4
  %151 = or i32 %150, 2
  store i32 %151, i32* %14, align 4
  br label %152

152:                                              ; preds = %136, %149, %146, %144
  br label %209

153:                                              ; preds = %121
  %154 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %155 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32, i8*, ...) @dev_dbg(i32 %156, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %158 = load %struct.sta350_priv*, %struct.sta350_priv** %9, align 8
  %159 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  switch i32 %160, label %170 [
    i32 130, label %161
    i32 129, label %164
    i32 128, label %167
  ]

161:                                              ; preds = %153
  %162 = load i32, i32* %14, align 4
  %163 = or i32 %162, 4
  store i32 %163, i32* %14, align 4
  br label %170

164:                                              ; preds = %153
  %165 = load i32, i32* %14, align 4
  %166 = or i32 %165, 5
  store i32 %166, i32* %14, align 4
  br label %170

167:                                              ; preds = %153
  %168 = load i32, i32* %14, align 4
  %169 = or i32 %168, 6
  store i32 %169, i32* %14, align 4
  br label %170

170:                                              ; preds = %153, %167, %164, %161
  br label %209

171:                                              ; preds = %121
  %172 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %173 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (i32, i8*, ...) @dev_dbg(i32 %174, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %176 = load %struct.sta350_priv*, %struct.sta350_priv** %9, align 8
  %177 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  switch i32 %178, label %188 [
    i32 130, label %179
    i32 129, label %182
    i32 128, label %185
  ]

179:                                              ; preds = %171
  %180 = load i32, i32* %14, align 4
  %181 = or i32 %180, 8
  store i32 %181, i32* %14, align 4
  br label %188

182:                                              ; preds = %171
  %183 = load i32, i32* %14, align 4
  %184 = or i32 %183, 9
  store i32 %184, i32* %14, align 4
  br label %188

185:                                              ; preds = %171
  %186 = load i32, i32* %14, align 4
  %187 = or i32 %186, 10
  store i32 %187, i32* %14, align 4
  br label %188

188:                                              ; preds = %171, %185, %182, %179
  br label %209

189:                                              ; preds = %121
  %190 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %191 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (i32, i8*, ...) @dev_dbg(i32 %192, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %194 = load %struct.sta350_priv*, %struct.sta350_priv** %9, align 8
  %195 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  switch i32 %196, label %205 [
    i32 130, label %197
    i32 129, label %199
    i32 128, label %202
  ]

197:                                              ; preds = %189
  %198 = load i32, i32* %14, align 4
  store i32 %198, i32* %14, align 4
  br label %205

199:                                              ; preds = %189
  %200 = load i32, i32* %14, align 4
  %201 = or i32 %200, 13
  store i32 %201, i32* %14, align 4
  br label %205

202:                                              ; preds = %189
  %203 = load i32, i32* %14, align 4
  %204 = or i32 %203, 14
  store i32 %204, i32* %14, align 4
  br label %205

205:                                              ; preds = %189, %202, %199, %197
  br label %209

206:                                              ; preds = %121
  %207 = load i32, i32* @EINVAL, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %4, align 4
  br label %238

209:                                              ; preds = %205, %188, %170, %152
  %210 = load %struct.sta350_priv*, %struct.sta350_priv** %9, align 8
  %211 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @STA350_CONFA, align 4
  %214 = load i32, i32* @STA350_CONFA_MCS_MASK, align 4
  %215 = load i32, i32* @STA350_CONFA_IR_MASK, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* %13, align 4
  %218 = call i32 @regmap_update_bits(i32 %212, i32 %213, i32 %216, i32 %217)
  store i32 %218, i32* %17, align 4
  %219 = load i32, i32* %17, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %209
  %222 = load i32, i32* %17, align 4
  store i32 %222, i32* %4, align 4
  br label %238

223:                                              ; preds = %209
  %224 = load %struct.sta350_priv*, %struct.sta350_priv** %9, align 8
  %225 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @STA350_CONFB, align 4
  %228 = load i32, i32* @STA350_CONFB_SAI_MASK, align 4
  %229 = load i32, i32* @STA350_CONFB_SAIFB, align 4
  %230 = or i32 %228, %229
  %231 = load i32, i32* %14, align 4
  %232 = call i32 @regmap_update_bits(i32 %226, i32 %227, i32 %230, i32 %231)
  store i32 %232, i32* %17, align 4
  %233 = load i32, i32* %17, align 4
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %223
  %236 = load i32, i32* %17, align 4
  store i32 %236, i32* %4, align 4
  br label %238

237:                                              ; preds = %223
  store i32 0, i32* %4, align 4
  br label %238

238:                                              ; preds = %237, %235, %221, %206, %113, %80, %31
  %239 = load i32, i32* %4, align 4
  ret i32 %239
}

declare dso_local %struct.sta350_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
