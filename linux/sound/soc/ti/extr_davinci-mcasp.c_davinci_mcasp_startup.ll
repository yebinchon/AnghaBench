; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_davinci_mcasp_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_davinci_mcasp_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, i32 }
%struct.snd_soc_dai = type { i32 }
%struct.davinci_mcasp = type { i32, i64, i32, i32*, i32, i64, i64, i64, i64, i64, i32*, i64*, %struct.snd_pcm_substream**, %struct.davinci_mcasp_ruledata* }
%struct.davinci_mcasp_ruledata = type { i32, %struct.davinci_mcasp* }

@EBUSY = common dso_local global i32 0, align 4
@DAVINCI_MCASP_DIT_MODE = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@TX_MODE = common dso_local global i32 0, align 4
@RX_MODE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@davinci_mcasp_hw_rule_format_width = common dso_local global i32 0, align 4
@davinci_mcasp_hw_rule_slot_width = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@davinci_mcasp_hw_rule_rate = common dso_local global i32 0, align 4
@davinci_mcasp_hw_rule_format = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4
@davinci_mcasp_hw_rule_min_periodsize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @davinci_mcasp_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_mcasp_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.davinci_mcasp*, align 8
  %7 = alloca %struct.davinci_mcasp_ruledata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %14 = call %struct.davinci_mcasp* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %13)
  store %struct.davinci_mcasp* %14, %struct.davinci_mcasp** %6, align 8
  %15 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %16 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %15, i32 0, i32 13
  %17 = load %struct.davinci_mcasp_ruledata*, %struct.davinci_mcasp_ruledata** %16, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.davinci_mcasp_ruledata, %struct.davinci_mcasp_ruledata* %17, i64 %20
  store %struct.davinci_mcasp_ruledata* %21, %struct.davinci_mcasp_ruledata** %7, align 8
  store i32 0, i32* %8, align 4
  %22 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %23 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %12, align 4
  %25 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %26 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %25, i32 0, i32 12
  %27 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %26, align 8
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %27, i64 %30
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %31, align 8
  %33 = icmp ne %struct.snd_pcm_substream* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %248

37:                                               ; preds = %2
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %39 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %40 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %39, i32 0, i32 12
  %41 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %40, align 8
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %41, i64 %44
  store %struct.snd_pcm_substream* %38, %struct.snd_pcm_substream** %45, align 8
  %46 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %47 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %46, i32 0, i32 11
  %48 = load i64*, i64** %47, align 8
  %49 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i64, i64* %48, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %37
  %56 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %57 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %56, i32 0, i32 11
  %58 = load i64*, i64** %57, align 8
  %59 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i64, i64* %58, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @hweight32(i64 %63)
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %55, %37
  %66 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %67 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DAVINCI_MCASP_DIT_MODE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %248

72:                                               ; preds = %65
  %73 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %74 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* @TX_MODE, align 4
  store i32 %79, i32* %10, align 4
  br label %82

80:                                               ; preds = %72
  %81 = load i32, i32* @RX_MODE, align 4
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %80, %78
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %103, %82
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %86 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %83
  %90 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %91 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %89
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %99, %89
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %83

106:                                              ; preds = %83
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.davinci_mcasp_ruledata*, %struct.davinci_mcasp_ruledata** %7, align 8
  %109 = getelementptr inbounds %struct.davinci_mcasp_ruledata, %struct.davinci_mcasp_ruledata* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %111 = load %struct.davinci_mcasp_ruledata*, %struct.davinci_mcasp_ruledata** %7, align 8
  %112 = getelementptr inbounds %struct.davinci_mcasp_ruledata, %struct.davinci_mcasp_ruledata* %111, i32 0, i32 1
  store %struct.davinci_mcasp* %110, %struct.davinci_mcasp** %112, align 8
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %8, align 4
  %115 = mul nsw i32 %114, %113
  store i32 %115, i32* %8, align 4
  %116 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %117 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %106
  %121 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %122 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %120
  %127 = load %struct.davinci_mcasp_ruledata*, %struct.davinci_mcasp_ruledata** %7, align 8
  %128 = getelementptr inbounds %struct.davinci_mcasp_ruledata, %struct.davinci_mcasp_ruledata* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %133 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %131, %126, %120, %106
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i32, i32* %12, align 4
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %139, %135
  %142 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %143 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @snd_pcm_hw_constraint_minmax(i32 %144, i32 %145, i32 0, i32 %146)
  %148 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %149 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %152 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %153 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %152, i32 0, i32 10
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %156 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = call i32 @snd_pcm_hw_constraint_list(i32 %150, i32 0, i32 %151, i32* %158)
  %160 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %161 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %160, i32 0, i32 9
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %178

164:                                              ; preds = %141
  %165 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %166 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %169 = load i32, i32* @davinci_mcasp_hw_rule_format_width, align 4
  %170 = load %struct.davinci_mcasp_ruledata*, %struct.davinci_mcasp_ruledata** %7, align 8
  %171 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %172 = call i32 @snd_pcm_hw_rule_add(i32 %167, i32 0, i32 %168, i32 %169, %struct.davinci_mcasp_ruledata* %170, i32 %171, i32 -1)
  store i32 %172, i32* %11, align 4
  %173 = load i32, i32* %11, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %164
  %176 = load i32, i32* %11, align 4
  store i32 %176, i32* %3, align 4
  br label %248

177:                                              ; preds = %164
  br label %198

178:                                              ; preds = %141
  %179 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %180 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %179, i32 0, i32 8
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %197

183:                                              ; preds = %178
  %184 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %185 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %188 = load i32, i32* @davinci_mcasp_hw_rule_slot_width, align 4
  %189 = load %struct.davinci_mcasp_ruledata*, %struct.davinci_mcasp_ruledata** %7, align 8
  %190 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %191 = call i32 @snd_pcm_hw_rule_add(i32 %186, i32 0, i32 %187, i32 %188, %struct.davinci_mcasp_ruledata* %189, i32 %190, i32 -1)
  store i32 %191, i32* %11, align 4
  %192 = load i32, i32* %11, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %183
  %195 = load i32, i32* %11, align 4
  store i32 %195, i32* %3, align 4
  br label %248

196:                                              ; preds = %183
  br label %197

197:                                              ; preds = %196, %178
  br label %198

198:                                              ; preds = %197, %177
  %199 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %200 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %199, i32 0, i32 7
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %240

203:                                              ; preds = %198
  %204 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %205 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %204, i32 0, i32 5
  %206 = load i64, i64* %205, align 8
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %240

208:                                              ; preds = %203
  %209 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %210 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %209, i32 0, i32 6
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %240

213:                                              ; preds = %208
  %214 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %215 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %218 = load i32, i32* @davinci_mcasp_hw_rule_rate, align 4
  %219 = load %struct.davinci_mcasp_ruledata*, %struct.davinci_mcasp_ruledata** %7, align 8
  %220 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %221 = call i32 @snd_pcm_hw_rule_add(i32 %216, i32 0, i32 %217, i32 %218, %struct.davinci_mcasp_ruledata* %219, i32 %220, i32 -1)
  store i32 %221, i32* %11, align 4
  %222 = load i32, i32* %11, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %213
  %225 = load i32, i32* %11, align 4
  store i32 %225, i32* %3, align 4
  br label %248

226:                                              ; preds = %213
  %227 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %228 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %231 = load i32, i32* @davinci_mcasp_hw_rule_format, align 4
  %232 = load %struct.davinci_mcasp_ruledata*, %struct.davinci_mcasp_ruledata** %7, align 8
  %233 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %234 = call i32 @snd_pcm_hw_rule_add(i32 %229, i32 0, i32 %230, i32 %231, %struct.davinci_mcasp_ruledata* %232, i32 %233, i32 -1)
  store i32 %234, i32* %11, align 4
  %235 = load i32, i32* %11, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %226
  %238 = load i32, i32* %11, align 4
  store i32 %238, i32* %3, align 4
  br label %248

239:                                              ; preds = %226
  br label %240

240:                                              ; preds = %239, %208, %203, %198
  %241 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %242 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %245 = load i32, i32* @davinci_mcasp_hw_rule_min_periodsize, align 4
  %246 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %247 = call i32 @snd_pcm_hw_rule_add(i32 %243, i32 0, i32 %244, i32 %245, %struct.davinci_mcasp_ruledata* null, i32 %246, i32 -1)
  store i32 0, i32* %3, align 4
  br label %248

248:                                              ; preds = %240, %237, %224, %194, %175, %71, %34
  %249 = load i32, i32* %3, align 4
  ret i32 %249
}

declare dso_local %struct.davinci_mcasp* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @hweight32(i64) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(i32, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_list(i32, i32, i32, i32*) #1

declare dso_local i32 @snd_pcm_hw_rule_add(i32, i32, i32, i32, %struct.davinci_mcasp_ruledata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
