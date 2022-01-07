; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_multi_out_analog_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_multi_out_analog_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_multi_out = type { i64*, i64, i64, i64*, i32, i64*, i32, i64, i64 }
%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hda_spdif_out = type { i32 }

@HDA_DIG_EXCLUSIVE = common dso_local global i64 0, align 8
@IEC958_AES0_NONAUDIO = common dso_local global i32 0, align 4
@HDA_DIG_ANALOG_DUP = common dso_local global i64 0, align 8
@HDA_FRONT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_multi_out_analog_prepare(%struct.hda_codec* %0, %struct.hda_multi_out* %1, i32 %2, i32 %3, %struct.snd_pcm_substream* %4) #0 {
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.hda_multi_out*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_pcm_substream*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hda_spdif_out*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store %struct.hda_multi_out* %1, %struct.hda_multi_out** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.snd_pcm_substream* %4, %struct.snd_pcm_substream** %10, align 8
  %16 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %17 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  store i64* %18, i64** %11, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %25 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %28 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %29 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  %31 = call %struct.hda_spdif_out* @snd_hda_spdif_out_of_nid(%struct.hda_codec* %27, i64 %30)
  store %struct.hda_spdif_out* %31, %struct.hda_spdif_out** %13, align 8
  %32 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %33 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %32, i32 0, i32 7
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %88

36:                                               ; preds = %5
  %37 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %38 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %37, i32 0, i32 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %88

41:                                               ; preds = %36
  %42 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %43 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @HDA_DIG_EXCLUSIVE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %88

47:                                               ; preds = %41
  %48 = load i32, i32* %12, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %79

50:                                               ; preds = %47
  %51 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %13, align 8
  %52 = icmp ne %struct.hda_spdif_out* %51, null
  br i1 %52, label %53, label %79

53:                                               ; preds = %50
  %54 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %55 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %56 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %55, i32 0, i32 7
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @snd_hda_is_supported_format(%struct.hda_codec* %54, i64 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %53
  %62 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %13, align 8
  %63 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IEC958_AES0_NONAUDIO, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %61
  %69 = load i64, i64* @HDA_DIG_ANALOG_DUP, align 8
  %70 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %71 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %73 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %74 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %73, i32 0, i32 7
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @setup_dig_out_stream(%struct.hda_codec* %72, i64 %75, i32 %76, i32 %77)
  br label %87

79:                                               ; preds = %61, %53, %50, %47
  %80 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %81 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %83 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %84 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %83, i32 0, i32 7
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @cleanup_dig_out_stream(%struct.hda_codec* %82, i64 %85)
  br label %87

87:                                               ; preds = %79, %68
  br label %88

88:                                               ; preds = %87, %41, %36, %5
  %89 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %90 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %93 = load i64*, i64** %11, align 8
  %94 = load i64, i64* @HDA_FRONT, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @snd_hda_codec_setup_stream(%struct.hda_codec* %92, i64 %96, i32 %97, i32 0, i32 %98)
  %100 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %101 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %126, label %104

104:                                              ; preds = %88
  %105 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %106 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %104
  %110 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %111 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64*, i64** %11, align 8
  %114 = load i64, i64* @HDA_FRONT, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %112, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %109
  %119 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %120 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %121 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @snd_hda_codec_setup_stream(%struct.hda_codec* %119, i64 %122, i32 %123, i32 0, i32 %124)
  br label %126

126:                                              ; preds = %118, %109, %104, %88
  store i32 0, i32* %14, align 4
  br label %127

127:                                              ; preds = %161, %126
  %128 = load i32, i32* %14, align 4
  %129 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %130 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %129, i32 0, i32 3
  %131 = load i64*, i64** %130, align 8
  %132 = call i32 @ARRAY_SIZE(i64* %131)
  %133 = icmp slt i32 %128, %132
  br i1 %133, label %134, label %164

134:                                              ; preds = %127
  %135 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %136 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %160, label %139

139:                                              ; preds = %134
  %140 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %141 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %140, i32 0, i32 3
  %142 = load i64*, i64** %141, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %139
  %149 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %150 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %151 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %150, i32 0, i32 3
  %152 = load i64*, i64** %151, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @snd_hda_codec_setup_stream(%struct.hda_codec* %149, i64 %156, i32 %157, i32 0, i32 %158)
  br label %160

160:                                              ; preds = %148, %139, %134
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %14, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %14, align 4
  br label %127

164:                                              ; preds = %127
  store i32 1, i32* %14, align 4
  br label %165

165:                                              ; preds = %206, %164
  %166 = load i32, i32* %14, align 4
  %167 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %168 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = icmp slt i32 %166, %169
  br i1 %170, label %171, label %209

171:                                              ; preds = %165
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %14, align 4
  %174 = add nsw i32 %173, 1
  %175 = mul nsw i32 %174, 2
  %176 = icmp sge i32 %172, %175
  br i1 %176, label %177, label %189

177:                                              ; preds = %171
  %178 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %179 = load i64*, i64** %11, align 8
  %180 = load i32, i32* %14, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i64, i64* %179, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %14, align 4
  %186 = mul nsw i32 %185, 2
  %187 = load i32, i32* %9, align 4
  %188 = call i32 @snd_hda_codec_setup_stream(%struct.hda_codec* %178, i64 %183, i32 %184, i32 %186, i32 %187)
  br label %205

189:                                              ; preds = %171
  %190 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %191 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %204, label %194

194:                                              ; preds = %189
  %195 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %196 = load i64*, i64** %11, align 8
  %197 = load i32, i32* %14, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %196, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* %9, align 4
  %203 = call i32 @snd_hda_codec_setup_stream(%struct.hda_codec* %195, i64 %200, i32 %201, i32 0, i32 %202)
  br label %204

204:                                              ; preds = %194, %189
  br label %205

205:                                              ; preds = %204, %177
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %14, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %14, align 4
  br label %165

209:                                              ; preds = %165
  store i32 0, i32* %14, align 4
  br label %210

210:                                              ; preds = %256, %209
  %211 = load i32, i32* %14, align 4
  %212 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %213 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %212, i32 0, i32 5
  %214 = load i64*, i64** %213, align 8
  %215 = call i32 @ARRAY_SIZE(i64* %214)
  %216 = icmp slt i32 %211, %215
  br i1 %216, label %217, label %259

217:                                              ; preds = %210
  store i32 0, i32* %15, align 4
  %218 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %219 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %218, i32 0, i32 5
  %220 = load i64*, i64** %219, align 8
  %221 = load i32, i32* %14, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i64, i64* %220, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %217
  br label %259

227:                                              ; preds = %217
  %228 = load i32, i32* %12, align 4
  %229 = load i32, i32* %14, align 4
  %230 = add nsw i32 %229, 1
  %231 = mul nsw i32 %230, 2
  %232 = icmp sge i32 %228, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %227
  %234 = load i32, i32* %14, align 4
  %235 = mul nsw i32 %234, 2
  store i32 %235, i32* %15, align 4
  br label %243

236:                                              ; preds = %227
  %237 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %238 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %237, i32 0, i32 6
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %236
  br label %259

242:                                              ; preds = %236
  br label %243

243:                                              ; preds = %242, %233
  %244 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %245 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %246 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %245, i32 0, i32 5
  %247 = load i64*, i64** %246, align 8
  %248 = load i32, i32* %14, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i64, i64* %247, i64 %249
  %251 = load i64, i64* %250, align 8
  %252 = load i32, i32* %8, align 4
  %253 = load i32, i32* %15, align 4
  %254 = load i32, i32* %9, align 4
  %255 = call i32 @snd_hda_codec_setup_stream(%struct.hda_codec* %244, i64 %251, i32 %252, i32 %253, i32 %254)
  br label %256

256:                                              ; preds = %243
  %257 = load i32, i32* %14, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %14, align 4
  br label %210

259:                                              ; preds = %241, %226, %210
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.hda_spdif_out* @snd_hda_spdif_out_of_nid(%struct.hda_codec*, i64) #1

declare dso_local i64 @snd_hda_is_supported_format(%struct.hda_codec*, i64, i32) #1

declare dso_local i32 @setup_dig_out_stream(%struct.hda_codec*, i64, i32, i32) #1

declare dso_local i32 @cleanup_dig_out_stream(%struct.hda_codec*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_hda_codec_setup_stream(%struct.hda_codec*, i64, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
