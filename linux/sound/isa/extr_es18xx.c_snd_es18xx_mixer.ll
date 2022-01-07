; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32, %struct.snd_es18xx* }
%struct.snd_es18xx = type { i32, i32, %struct.snd_kcontrol*, %struct.snd_kcontrol*, %struct.snd_kcontrol*, %struct.snd_kcontrol*, %struct.TYPE_2__* }
%struct.snd_kcontrol = type { i8* }
%struct.TYPE_2__ = type { i32 }

@snd_es18xx_base_controls = common dso_local global i32* null, align 8
@ES18XX_HWV = common dso_local global i32 0, align 4
@snd_es18xx_hwv_free = common dso_local global i8* null, align 8
@ES18XX_PCM2 = common dso_local global i32 0, align 4
@snd_es18xx_pcm2_controls = common dso_local global i32* null, align 8
@snd_es18xx_pcm1_controls = common dso_local global i32* null, align 8
@ES18XX_RECMIX = common dso_local global i32 0, align 4
@snd_es18xx_recmix_controls = common dso_local global i32* null, align 8
@snd_es18xx_micpre1_control = common dso_local global i32 0, align 4
@snd_es18xx_micpre2_control = common dso_local global i32 0, align 4
@ES18XX_SPATIALIZER = common dso_local global i32 0, align 4
@snd_es18xx_spatializer_controls = common dso_local global i32* null, align 8
@snd_es18xx_hw_volume_controls = common dso_local global i32* null, align 8
@snd_es18xx_opt_speaker = common dso_local global i32 0, align 4
@snd_es18xx_opt_1869 = common dso_local global i32* null, align 8
@snd_es18xx_opt_1878 = common dso_local global i32 0, align 4
@snd_es18xx_opt_1879 = common dso_local global i32* null, align 8
@ES18XX_GPO_2BIT = common dso_local global i32 0, align 4
@snd_es18xx_opt_gpo_2bit = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*)* @snd_es18xx_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es18xx_mixer(%struct.snd_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_card*, align 8
  %4 = alloca %struct.snd_es18xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_kcontrol*, align 8
  %8 = alloca %struct.snd_kcontrol*, align 8
  store %struct.snd_card* %0, %struct.snd_card** %3, align 8
  %9 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %10 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %9, i32 0, i32 1
  %11 = load %struct.snd_es18xx*, %struct.snd_es18xx** %10, align 8
  store %struct.snd_es18xx* %11, %struct.snd_es18xx** %4, align 8
  %12 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %13 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %16 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %15, i32 0, i32 6
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strcpy(i32 %14, i32 %19)
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %64, %1
  %22 = load i32, i32* %6, align 4
  %23 = load i32*, i32** @snd_es18xx_base_controls, align 8
  %24 = call i32 @ARRAY_SIZE(i32* %23)
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %26, label %67

26:                                               ; preds = %21
  %27 = load i32*, i32** @snd_es18xx_base_controls, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %32 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* %30, %struct.snd_es18xx* %31)
  store %struct.snd_kcontrol* %32, %struct.snd_kcontrol** %7, align 8
  %33 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %34 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ES18XX_HWV, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %26
  %40 = load i32, i32* %6, align 4
  switch i32 %40, label %55 [
    i32 0, label %41
    i32 1, label %48
  ]

41:                                               ; preds = %39
  %42 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %43 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %44 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %43, i32 0, i32 5
  store %struct.snd_kcontrol* %42, %struct.snd_kcontrol** %44, align 8
  %45 = load i8*, i8** @snd_es18xx_hwv_free, align 8
  %46 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %47 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  br label %55

48:                                               ; preds = %39
  %49 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %50 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %51 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %50, i32 0, i32 4
  store %struct.snd_kcontrol* %49, %struct.snd_kcontrol** %51, align 8
  %52 = load i8*, i8** @snd_es18xx_hwv_free, align 8
  %53 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %54 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %39, %48, %41
  br label %56

56:                                               ; preds = %55, %26
  %57 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %58 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %59 = call i32 @snd_ctl_add(%struct.snd_card* %57, %struct.snd_kcontrol* %58)
  store i32 %59, i32* %5, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %369

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %21

67:                                               ; preds = %21
  %68 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %69 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @ES18XX_PCM2, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %67
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %93, %74
  %76 = load i32, i32* %6, align 4
  %77 = load i32*, i32** @snd_es18xx_pcm2_controls, align 8
  %78 = call i32 @ARRAY_SIZE(i32* %77)
  %79 = icmp ult i32 %76, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %75
  %81 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %82 = load i32*, i32** @snd_es18xx_pcm2_controls, align 8
  %83 = load i32, i32* %6, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %87 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* %85, %struct.snd_es18xx* %86)
  %88 = call i32 @snd_ctl_add(%struct.snd_card* %81, %struct.snd_kcontrol* %87)
  store i32 %88, i32* %5, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = load i32, i32* %5, align 4
  store i32 %91, i32* %2, align 4
  br label %369

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %6, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %75

96:                                               ; preds = %75
  br label %120

97:                                               ; preds = %67
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %116, %97
  %99 = load i32, i32* %6, align 4
  %100 = load i32*, i32** @snd_es18xx_pcm1_controls, align 8
  %101 = call i32 @ARRAY_SIZE(i32* %100)
  %102 = icmp ult i32 %99, %101
  br i1 %102, label %103, label %119

103:                                              ; preds = %98
  %104 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %105 = load i32*, i32** @snd_es18xx_pcm1_controls, align 8
  %106 = load i32, i32* %6, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %110 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* %108, %struct.snd_es18xx* %109)
  %111 = call i32 @snd_ctl_add(%struct.snd_card* %104, %struct.snd_kcontrol* %110)
  store i32 %111, i32* %5, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %103
  %114 = load i32, i32* %5, align 4
  store i32 %114, i32* %2, align 4
  br label %369

115:                                              ; preds = %103
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %6, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %98

119:                                              ; preds = %98
  br label %120

120:                                              ; preds = %119, %96
  %121 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %122 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @ES18XX_RECMIX, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %150

127:                                              ; preds = %120
  store i32 0, i32* %6, align 4
  br label %128

128:                                              ; preds = %146, %127
  %129 = load i32, i32* %6, align 4
  %130 = load i32*, i32** @snd_es18xx_recmix_controls, align 8
  %131 = call i32 @ARRAY_SIZE(i32* %130)
  %132 = icmp ult i32 %129, %131
  br i1 %132, label %133, label %149

133:                                              ; preds = %128
  %134 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %135 = load i32*, i32** @snd_es18xx_recmix_controls, align 8
  %136 = load i32, i32* %6, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %140 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* %138, %struct.snd_es18xx* %139)
  %141 = call i32 @snd_ctl_add(%struct.snd_card* %134, %struct.snd_kcontrol* %140)
  store i32 %141, i32* %5, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %133
  %144 = load i32, i32* %5, align 4
  store i32 %144, i32* %2, align 4
  br label %369

145:                                              ; preds = %133
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %6, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %6, align 4
  br label %128

149:                                              ; preds = %128
  br label %150

150:                                              ; preds = %149, %120
  %151 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %152 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  switch i32 %153, label %154 [
    i32 6249, label %163
    i32 6265, label %163
  ]

154:                                              ; preds = %150
  %155 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %156 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %157 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @snd_es18xx_micpre1_control, %struct.snd_es18xx* %156)
  %158 = call i32 @snd_ctl_add(%struct.snd_card* %155, %struct.snd_kcontrol* %157)
  store i32 %158, i32* %5, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = load i32, i32* %5, align 4
  store i32 %161, i32* %2, align 4
  br label %369

162:                                              ; preds = %154
  br label %172

163:                                              ; preds = %150, %150
  %164 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %165 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %166 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @snd_es18xx_micpre2_control, %struct.snd_es18xx* %165)
  %167 = call i32 @snd_ctl_add(%struct.snd_card* %164, %struct.snd_kcontrol* %166)
  store i32 %167, i32* %5, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %163
  %170 = load i32, i32* %5, align 4
  store i32 %170, i32* %2, align 4
  br label %369

171:                                              ; preds = %163
  br label %172

172:                                              ; preds = %171, %162
  %173 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %174 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @ES18XX_SPATIALIZER, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %202

179:                                              ; preds = %172
  store i32 0, i32* %6, align 4
  br label %180

180:                                              ; preds = %198, %179
  %181 = load i32, i32* %6, align 4
  %182 = load i32*, i32** @snd_es18xx_spatializer_controls, align 8
  %183 = call i32 @ARRAY_SIZE(i32* %182)
  %184 = icmp ult i32 %181, %183
  br i1 %184, label %185, label %201

185:                                              ; preds = %180
  %186 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %187 = load i32*, i32** @snd_es18xx_spatializer_controls, align 8
  %188 = load i32, i32* %6, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %192 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* %190, %struct.snd_es18xx* %191)
  %193 = call i32 @snd_ctl_add(%struct.snd_card* %186, %struct.snd_kcontrol* %192)
  store i32 %193, i32* %5, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %185
  %196 = load i32, i32* %5, align 4
  store i32 %196, i32* %2, align 4
  br label %369

197:                                              ; preds = %185
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %6, align 4
  %200 = add i32 %199, 1
  store i32 %200, i32* %6, align 4
  br label %180

201:                                              ; preds = %180
  br label %202

202:                                              ; preds = %201, %172
  %203 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %204 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @ES18XX_HWV, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %247

209:                                              ; preds = %202
  store i32 0, i32* %6, align 4
  br label %210

210:                                              ; preds = %243, %209
  %211 = load i32, i32* %6, align 4
  %212 = load i32*, i32** @snd_es18xx_hw_volume_controls, align 8
  %213 = call i32 @ARRAY_SIZE(i32* %212)
  %214 = icmp ult i32 %211, %213
  br i1 %214, label %215, label %246

215:                                              ; preds = %210
  %216 = load i32*, i32** @snd_es18xx_hw_volume_controls, align 8
  %217 = load i32, i32* %6, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %221 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* %219, %struct.snd_es18xx* %220)
  store %struct.snd_kcontrol* %221, %struct.snd_kcontrol** %8, align 8
  %222 = load i32, i32* %6, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %215
  %225 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %226 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %227 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %226, i32 0, i32 3
  store %struct.snd_kcontrol* %225, %struct.snd_kcontrol** %227, align 8
  br label %232

228:                                              ; preds = %215
  %229 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %230 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %231 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %230, i32 0, i32 2
  store %struct.snd_kcontrol* %229, %struct.snd_kcontrol** %231, align 8
  br label %232

232:                                              ; preds = %228, %224
  %233 = load i8*, i8** @snd_es18xx_hwv_free, align 8
  %234 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %235 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %234, i32 0, i32 0
  store i8* %233, i8** %235, align 8
  %236 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %237 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %238 = call i32 @snd_ctl_add(%struct.snd_card* %236, %struct.snd_kcontrol* %237)
  store i32 %238, i32* %5, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %232
  %241 = load i32, i32* %5, align 4
  store i32 %241, i32* %2, align 4
  br label %369

242:                                              ; preds = %232
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %6, align 4
  %245 = add i32 %244, 1
  store i32 %245, i32* %6, align 4
  br label %210

246:                                              ; preds = %210
  br label %247

247:                                              ; preds = %246, %202
  %248 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %249 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 6248
  br i1 %251, label %252, label %262

252:                                              ; preds = %247
  %253 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %254 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %255 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @snd_es18xx_opt_speaker, %struct.snd_es18xx* %254)
  %256 = call i32 @snd_ctl_add(%struct.snd_card* %253, %struct.snd_kcontrol* %255)
  store i32 %256, i32* %5, align 4
  %257 = load i32, i32* %5, align 4
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %252
  %260 = load i32, i32* %5, align 4
  store i32 %260, i32* %2, align 4
  br label %369

261:                                              ; preds = %252
  br label %262

262:                                              ; preds = %261, %247
  %263 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %264 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = icmp eq i32 %265, 6249
  br i1 %266, label %267, label %291

267:                                              ; preds = %262
  store i32 0, i32* %6, align 4
  br label %268

268:                                              ; preds = %287, %267
  %269 = load i32, i32* %6, align 4
  %270 = load i32*, i32** @snd_es18xx_opt_1869, align 8
  %271 = call i32 @ARRAY_SIZE(i32* %270)
  %272 = icmp ult i32 %269, %271
  br i1 %272, label %273, label %290

273:                                              ; preds = %268
  %274 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %275 = load i32*, i32** @snd_es18xx_opt_1869, align 8
  %276 = load i32, i32* %6, align 4
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %280 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* %278, %struct.snd_es18xx* %279)
  %281 = call i32 @snd_ctl_add(%struct.snd_card* %274, %struct.snd_kcontrol* %280)
  store i32 %281, i32* %5, align 4
  %282 = load i32, i32* %5, align 4
  %283 = icmp slt i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %273
  %285 = load i32, i32* %5, align 4
  store i32 %285, i32* %2, align 4
  br label %369

286:                                              ; preds = %273
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %6, align 4
  %289 = add i32 %288, 1
  store i32 %289, i32* %6, align 4
  br label %268

290:                                              ; preds = %268
  br label %337

291:                                              ; preds = %262
  %292 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %293 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = icmp eq i32 %294, 6264
  br i1 %295, label %296, label %306

296:                                              ; preds = %291
  %297 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %298 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %299 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @snd_es18xx_opt_1878, %struct.snd_es18xx* %298)
  %300 = call i32 @snd_ctl_add(%struct.snd_card* %297, %struct.snd_kcontrol* %299)
  store i32 %300, i32* %5, align 4
  %301 = load i32, i32* %5, align 4
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %296
  %304 = load i32, i32* %5, align 4
  store i32 %304, i32* %2, align 4
  br label %369

305:                                              ; preds = %296
  br label %336

306:                                              ; preds = %291
  %307 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %308 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = icmp eq i32 %309, 6265
  br i1 %310, label %311, label %335

311:                                              ; preds = %306
  store i32 0, i32* %6, align 4
  br label %312

312:                                              ; preds = %331, %311
  %313 = load i32, i32* %6, align 4
  %314 = load i32*, i32** @snd_es18xx_opt_1879, align 8
  %315 = call i32 @ARRAY_SIZE(i32* %314)
  %316 = icmp ult i32 %313, %315
  br i1 %316, label %317, label %334

317:                                              ; preds = %312
  %318 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %319 = load i32*, i32** @snd_es18xx_opt_1879, align 8
  %320 = load i32, i32* %6, align 4
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  %323 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %324 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* %322, %struct.snd_es18xx* %323)
  %325 = call i32 @snd_ctl_add(%struct.snd_card* %318, %struct.snd_kcontrol* %324)
  store i32 %325, i32* %5, align 4
  %326 = load i32, i32* %5, align 4
  %327 = icmp slt i32 %326, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %317
  %329 = load i32, i32* %5, align 4
  store i32 %329, i32* %2, align 4
  br label %369

330:                                              ; preds = %317
  br label %331

331:                                              ; preds = %330
  %332 = load i32, i32* %6, align 4
  %333 = add i32 %332, 1
  store i32 %333, i32* %6, align 4
  br label %312

334:                                              ; preds = %312
  br label %335

335:                                              ; preds = %334, %306
  br label %336

336:                                              ; preds = %335, %305
  br label %337

337:                                              ; preds = %336, %290
  %338 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %339 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* @ES18XX_GPO_2BIT, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %368

344:                                              ; preds = %337
  store i32 0, i32* %6, align 4
  br label %345

345:                                              ; preds = %364, %344
  %346 = load i32, i32* %6, align 4
  %347 = load i32*, i32** @snd_es18xx_opt_gpo_2bit, align 8
  %348 = call i32 @ARRAY_SIZE(i32* %347)
  %349 = icmp ult i32 %346, %348
  br i1 %349, label %350, label %367

350:                                              ; preds = %345
  %351 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %352 = load i32*, i32** @snd_es18xx_opt_gpo_2bit, align 8
  %353 = load i32, i32* %6, align 4
  %354 = zext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  %356 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %357 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* %355, %struct.snd_es18xx* %356)
  %358 = call i32 @snd_ctl_add(%struct.snd_card* %351, %struct.snd_kcontrol* %357)
  store i32 %358, i32* %5, align 4
  %359 = load i32, i32* %5, align 4
  %360 = icmp slt i32 %359, 0
  br i1 %360, label %361, label %363

361:                                              ; preds = %350
  %362 = load i32, i32* %5, align 4
  store i32 %362, i32* %2, align 4
  br label %369

363:                                              ; preds = %350
  br label %364

364:                                              ; preds = %363
  %365 = load i32, i32* %6, align 4
  %366 = add i32 %365, 1
  store i32 %366, i32* %6, align 4
  br label %345

367:                                              ; preds = %345
  br label %368

368:                                              ; preds = %367, %337
  store i32 0, i32* %2, align 4
  br label %369

369:                                              ; preds = %368, %361, %328, %303, %284, %259, %240, %195, %169, %160, %143, %113, %90, %61
  %370 = load i32, i32* %2, align 4
  ret i32 %370
}

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, %struct.snd_es18xx*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
