; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_eld.c_snd_hdmi_get_eld_ati.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_eld.c_snd_hdmi_get_eld_ati.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@ATI_VERB_GET_SPEAKER_ALLOCATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"HDMI ATI/AMD: no speaker allocation for ELD\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ELD_FIXED_BYTES = common dso_local global i32 0, align 4
@ELD_MAX_MNL = common dso_local global i32 0, align 4
@ELD_MAX_SAD = common dso_local global i32 0, align 4
@ELD_VER_CEA_861D = common dso_local global i32 0, align 4
@ATI_SPKALLOC_SPKALLOC = common dso_local global i32 0, align 4
@ATI_SPKALLOC_TYPE_DISPLAYPORT = common dso_local global i32 0, align 4
@ATI_VERB_SET_SINK_INFO_INDEX = common dso_local global i32 0, align 4
@ATI_INFO_IDX_PORT_ID_LOW = common dso_local global i32 0, align 4
@ATI_VERB_GET_SINK_INFO_DATA = common dso_local global i32 0, align 4
@ATI_INFO_IDX_PORT_ID_HIGH = common dso_local global i32 0, align 4
@ATI_INFO_IDX_MANUFACTURER_ID = common dso_local global i32 0, align 4
@ATI_INFO_IDX_PRODUCT_ID = common dso_local global i32 0, align 4
@ATI_INFO_IDX_SINK_DESC_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"HDMI ATI/AMD: Truncating HDMI sink description with length %d\0A\00", align 1
@ATI_INFO_IDX_SINK_DESC_FIRST = common dso_local global i32 0, align 4
@AUDIO_CODING_TYPE_LPCM = common dso_local global i32 0, align 4
@AUDIO_CODING_TYPE_WMAPRO = common dso_local global i32 0, align 4
@AUDIO_CODING_TYPE_SACD = common dso_local global i32 0, align 4
@AUDIO_CODING_TYPE_DST = common dso_local global i32 0, align 4
@ATI_VERB_SET_AUDIO_DESCRIPTOR = common dso_local global i32 0, align 4
@ATI_VERB_GET_AUDIO_DESCRIPTOR = common dso_local global i32 0, align 4
@ATI_AUDIODESC_RATES = common dso_local global i32 0, align 4
@ATI_AUDIODESC_LPCM_STEREO_RATES = common dso_local global i32 0, align 4
@ATI_AUDIODESC_CHANNELS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"HDMI ATI/AMD: no audio descriptors for ELD\0A\00", align 1
@ATI_VERB_GET_AUDIO_VIDEO_DELAY = common dso_local global i32 0, align 4
@ATI_DELAY_VIDEO_LATENCY = common dso_local global i32 0, align 4
@ATI_DELAY_AUDIO_LATENCY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdmi_get_eld_ati(%struct.hda_codec* %0, i32 %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %21 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @ATI_VERB_GET_SPEAKER_ALLOCATION, align 4
  %24 = call i8* @snd_hda_codec_read(%struct.hda_codec* %21, i32 %22, i32 0, i32 %23, i32 0)
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %5
  %29 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %30 = call i32 (%struct.hda_codec*, i8*, ...) @codec_info(%struct.hda_codec* %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %368

33:                                               ; preds = %5
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* @ELD_FIXED_BYTES, align 4
  %36 = load i32, i32* @ELD_MAX_MNL, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* @ELD_MAX_SAD, align 4
  %39 = mul nsw i32 %38, 3
  %40 = add nsw i32 %37, %39
  %41 = call i32 @memset(i8* %34, i32 0, i32 %40)
  %42 = load i32, i32* @ELD_VER_CEA_861D, align 4
  %43 = shl i32 %42, 3
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  store i8 %44, i8* %46, align 1
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @ATI_SPKALLOC_SPKALLOC, align 4
  %49 = and i32 %47, %48
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 7
  store i8 %50, i8* %52, align 1
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @ATI_SPKALLOC_TYPE_DISPLAYPORT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %33
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 5
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = or i32 %61, 4
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %59, align 1
  br label %64

64:                                               ; preds = %57, %33
  %65 = load i32, i32* @ELD_FIXED_BYTES, align 4
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %177

68:                                               ; preds = %64
  %69 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @ATI_VERB_SET_SINK_INFO_INDEX, align 4
  %72 = load i32, i32* @ATI_INFO_IDX_PORT_ID_LOW, align 4
  %73 = call i32 @snd_hda_codec_write(%struct.hda_codec* %69, i32 %70, i32 0, i32 %71, i32 %72)
  %74 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @ATI_VERB_GET_SINK_INFO_DATA, align 4
  %77 = call i8* @snd_hda_codec_read(%struct.hda_codec* %74, i32 %75, i32 0, i32 %76, i32 0)
  %78 = ptrtoint i8* %77 to i32
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %18, align 4
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 8
  %82 = call i32 @put_unaligned_le32(i32 %79, i8* %81)
  %83 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @ATI_VERB_SET_SINK_INFO_INDEX, align 4
  %86 = load i32, i32* @ATI_INFO_IDX_PORT_ID_HIGH, align 4
  %87 = call i32 @snd_hda_codec_write(%struct.hda_codec* %83, i32 %84, i32 0, i32 %85, i32 %86)
  %88 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @ATI_VERB_GET_SINK_INFO_DATA, align 4
  %91 = call i8* @snd_hda_codec_read(%struct.hda_codec* %88, i32 %89, i32 0, i32 %90, i32 0)
  %92 = ptrtoint i8* %91 to i32
  store i32 %92, i32* %18, align 4
  %93 = load i32, i32* %18, align 4
  %94 = load i8*, i8** %9, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 12
  %96 = call i32 @put_unaligned_le32(i32 %93, i8* %95)
  %97 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @ATI_VERB_SET_SINK_INFO_INDEX, align 4
  %100 = load i32, i32* @ATI_INFO_IDX_MANUFACTURER_ID, align 4
  %101 = call i32 @snd_hda_codec_write(%struct.hda_codec* %97, i32 %98, i32 0, i32 %99, i32 %100)
  %102 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @ATI_VERB_GET_SINK_INFO_DATA, align 4
  %105 = call i8* @snd_hda_codec_read(%struct.hda_codec* %102, i32 %103, i32 0, i32 %104, i32 0)
  %106 = ptrtoint i8* %105 to i32
  store i32 %106, i32* %18, align 4
  %107 = load i32, i32* %18, align 4
  %108 = load i8*, i8** %9, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 16
  %110 = call i32 @put_unaligned_le16(i32 %107, i8* %109)
  %111 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @ATI_VERB_SET_SINK_INFO_INDEX, align 4
  %114 = load i32, i32* @ATI_INFO_IDX_PRODUCT_ID, align 4
  %115 = call i32 @snd_hda_codec_write(%struct.hda_codec* %111, i32 %112, i32 0, i32 %113, i32 %114)
  %116 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @ATI_VERB_GET_SINK_INFO_DATA, align 4
  %119 = call i8* @snd_hda_codec_read(%struct.hda_codec* %116, i32 %117, i32 0, i32 %118, i32 0)
  %120 = ptrtoint i8* %119 to i32
  store i32 %120, i32* %18, align 4
  %121 = load i32, i32* %18, align 4
  %122 = load i8*, i8** %9, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 18
  %124 = call i32 @put_unaligned_le16(i32 %121, i8* %123)
  %125 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @ATI_VERB_SET_SINK_INFO_INDEX, align 4
  %128 = load i32, i32* @ATI_INFO_IDX_SINK_DESC_LEN, align 4
  %129 = call i32 @snd_hda_codec_write(%struct.hda_codec* %125, i32 %126, i32 0, i32 %127, i32 %128)
  %130 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @ATI_VERB_GET_SINK_INFO_DATA, align 4
  %133 = call i8* @snd_hda_codec_read(%struct.hda_codec* %130, i32 %131, i32 0, i32 %132, i32 0)
  %134 = ptrtoint i8* %133 to i32
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* @ELD_MAX_MNL, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %68
  %139 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %140 = load i32, i32* %15, align 4
  %141 = call i32 (%struct.hda_codec*, i8*, ...) @codec_info(%struct.hda_codec* %139, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* @ELD_MAX_MNL, align 4
  store i32 %142, i32* %15, align 4
  br label %143

143:                                              ; preds = %138, %68
  %144 = load i32, i32* %15, align 4
  %145 = load i8*, i8** %9, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 4
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = or i32 %148, %144
  %150 = trunc i32 %149 to i8
  store i8 %150, i8* %146, align 1
  store i32 0, i32* %17, align 4
  br label %151

151:                                              ; preds = %173, %143
  %152 = load i32, i32* %17, align 4
  %153 = load i32, i32* %15, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %176

155:                                              ; preds = %151
  %156 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* @ATI_VERB_SET_SINK_INFO_INDEX, align 4
  %159 = load i32, i32* @ATI_INFO_IDX_SINK_DESC_FIRST, align 4
  %160 = load i32, i32* %17, align 4
  %161 = add nsw i32 %159, %160
  %162 = call i32 @snd_hda_codec_write(%struct.hda_codec* %156, i32 %157, i32 0, i32 %158, i32 %161)
  %163 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* @ATI_VERB_GET_SINK_INFO_DATA, align 4
  %166 = call i8* @snd_hda_codec_read(%struct.hda_codec* %163, i32 %164, i32 0, i32 %165, i32 0)
  %167 = ptrtoint i8* %166 to i8
  %168 = load i8*, i8** %9, align 8
  %169 = load i32, i32* %16, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %16, align 4
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i8, i8* %168, i64 %171
  store i8 %167, i8* %172, align 1
  br label %173

173:                                              ; preds = %155
  %174 = load i32, i32* %17, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %17, align 4
  br label %151

176:                                              ; preds = %151
  br label %177

177:                                              ; preds = %176, %64
  %178 = load i32, i32* @AUDIO_CODING_TYPE_LPCM, align 4
  store i32 %178, i32* %17, align 4
  br label %179

179:                                              ; preds = %290, %177
  %180 = load i32, i32* %17, align 4
  %181 = load i32, i32* @AUDIO_CODING_TYPE_WMAPRO, align 4
  %182 = icmp sle i32 %180, %181
  br i1 %182, label %183, label %293

183:                                              ; preds = %179
  %184 = load i32, i32* %17, align 4
  %185 = load i32, i32* @AUDIO_CODING_TYPE_SACD, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %191, label %187

187:                                              ; preds = %183
  %188 = load i32, i32* %17, align 4
  %189 = load i32, i32* @AUDIO_CODING_TYPE_DST, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %187, %183
  br label %290

192:                                              ; preds = %187
  %193 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* @ATI_VERB_SET_AUDIO_DESCRIPTOR, align 4
  %196 = load i32, i32* %17, align 4
  %197 = shl i32 %196, 3
  %198 = call i32 @snd_hda_codec_write(%struct.hda_codec* %193, i32 %194, i32 0, i32 %195, i32 %197)
  %199 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %200 = load i32, i32* %8, align 4
  %201 = load i32, i32* @ATI_VERB_GET_AUDIO_DESCRIPTOR, align 4
  %202 = call i8* @snd_hda_codec_read(%struct.hda_codec* %199, i32 %200, i32 0, i32 %201, i32 0)
  %203 = ptrtoint i8* %202 to i32
  store i32 %203, i32* %13, align 4
  %204 = load i32, i32* %13, align 4
  %205 = icmp sle i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %192
  br label %290

207:                                              ; preds = %192
  %208 = load i32, i32* %13, align 4
  %209 = load i32, i32* @ATI_AUDIODESC_RATES, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %240

212:                                              ; preds = %207
  %213 = load i32, i32* %13, align 4
  %214 = and i32 %213, 255
  %215 = ashr i32 %214, 0
  %216 = trunc i32 %215 to i8
  %217 = load i8*, i8** %9, align 8
  %218 = load i32, i32* %16, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %16, align 4
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i8, i8* %217, i64 %220
  store i8 %216, i8* %221, align 1
  %222 = load i32, i32* %13, align 4
  %223 = and i32 %222, 65280
  %224 = ashr i32 %223, 8
  %225 = trunc i32 %224 to i8
  %226 = load i8*, i8** %9, align 8
  %227 = load i32, i32* %16, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %16, align 4
  %229 = sext i32 %227 to i64
  %230 = getelementptr inbounds i8, i8* %226, i64 %229
  store i8 %225, i8* %230, align 1
  %231 = load i32, i32* %13, align 4
  %232 = and i32 %231, 16711680
  %233 = ashr i32 %232, 16
  %234 = trunc i32 %233 to i8
  %235 = load i8*, i8** %9, align 8
  %236 = load i32, i32* %16, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %16, align 4
  %238 = sext i32 %236 to i64
  %239 = getelementptr inbounds i8, i8* %235, i64 %238
  store i8 %234, i8* %239, align 1
  br label %240

240:                                              ; preds = %212, %207
  %241 = load i32, i32* %17, align 4
  %242 = load i32, i32* @AUDIO_CODING_TYPE_LPCM, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %289

244:                                              ; preds = %240
  %245 = load i32, i32* %13, align 4
  %246 = load i32, i32* @ATI_AUDIODESC_LPCM_STEREO_RATES, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %289

249:                                              ; preds = %244
  %250 = load i32, i32* %13, align 4
  %251 = load i32, i32* @ATI_AUDIODESC_LPCM_STEREO_RATES, align 4
  %252 = and i32 %250, %251
  %253 = ashr i32 %252, 16
  %254 = load i32, i32* %13, align 4
  %255 = load i32, i32* @ATI_AUDIODESC_RATES, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %253, %256
  br i1 %257, label %258, label %289

258:                                              ; preds = %249
  %259 = load i32, i32* %13, align 4
  %260 = and i32 %259, 255
  %261 = load i32, i32* @ATI_AUDIODESC_CHANNELS, align 4
  %262 = xor i32 %261, -1
  %263 = and i32 %260, %262
  %264 = or i32 %263, 1
  %265 = trunc i32 %264 to i8
  %266 = load i8*, i8** %9, align 8
  %267 = load i32, i32* %16, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %16, align 4
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i8, i8* %266, i64 %269
  store i8 %265, i8* %270, align 1
  %271 = load i32, i32* %13, align 4
  %272 = and i32 %271, -16777216
  %273 = lshr i32 %272, 24
  %274 = trunc i32 %273 to i8
  %275 = load i8*, i8** %9, align 8
  %276 = load i32, i32* %16, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %16, align 4
  %278 = sext i32 %276 to i64
  %279 = getelementptr inbounds i8, i8* %275, i64 %278
  store i8 %274, i8* %279, align 1
  %280 = load i32, i32* %13, align 4
  %281 = and i32 %280, 16711680
  %282 = ashr i32 %281, 16
  %283 = trunc i32 %282 to i8
  %284 = load i8*, i8** %9, align 8
  %285 = load i32, i32* %16, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %16, align 4
  %287 = sext i32 %285 to i64
  %288 = getelementptr inbounds i8, i8* %284, i64 %287
  store i8 %283, i8* %288, align 1
  br label %289

289:                                              ; preds = %258, %249, %244, %240
  br label %290

290:                                              ; preds = %289, %206, %191
  %291 = load i32, i32* %17, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %17, align 4
  br label %179

293:                                              ; preds = %179
  %294 = load i32, i32* %16, align 4
  %295 = load i32, i32* @ELD_FIXED_BYTES, align 4
  %296 = load i32, i32* %15, align 4
  %297 = add nsw i32 %295, %296
  %298 = icmp eq i32 %294, %297
  br i1 %298, label %299, label %304

299:                                              ; preds = %293
  %300 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %301 = call i32 (%struct.hda_codec*, i8*, ...) @codec_info(%struct.hda_codec* %300, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %302 = load i32, i32* @EINVAL, align 4
  %303 = sub nsw i32 0, %302
  store i32 %303, i32* %6, align 4
  br label %368

304:                                              ; preds = %293
  %305 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %306 = load i32, i32* %8, align 4
  %307 = load i32, i32* @ATI_VERB_GET_AUDIO_VIDEO_DELAY, align 4
  %308 = call i8* @snd_hda_codec_read(%struct.hda_codec* %305, i32 %306, i32 0, i32 %307, i32 0)
  %309 = ptrtoint i8* %308 to i32
  store i32 %309, i32* %14, align 4
  %310 = load i32, i32* %14, align 4
  %311 = load i32, i32* @ATI_DELAY_VIDEO_LATENCY, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %344

314:                                              ; preds = %304
  %315 = load i32, i32* %14, align 4
  %316 = load i32, i32* @ATI_DELAY_AUDIO_LATENCY, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %344

319:                                              ; preds = %314
  %320 = load i32, i32* %14, align 4
  %321 = load i32, i32* @ATI_DELAY_VIDEO_LATENCY, align 4
  %322 = and i32 %320, %321
  store i32 %322, i32* %19, align 4
  %323 = load i32, i32* %14, align 4
  %324 = load i32, i32* @ATI_DELAY_AUDIO_LATENCY, align 4
  %325 = and i32 %323, %324
  %326 = ashr i32 %325, 8
  store i32 %326, i32* %20, align 4
  %327 = load i32, i32* %19, align 4
  %328 = icmp sle i32 %327, 251
  br i1 %328, label %329, label %343

329:                                              ; preds = %319
  %330 = load i32, i32* %20, align 4
  %331 = icmp sle i32 %330, 251
  br i1 %331, label %332, label %343

332:                                              ; preds = %329
  %333 = load i32, i32* %19, align 4
  %334 = load i32, i32* %20, align 4
  %335 = icmp sgt i32 %333, %334
  br i1 %335, label %336, label %343

336:                                              ; preds = %332
  %337 = load i32, i32* %19, align 4
  %338 = load i32, i32* %20, align 4
  %339 = sub nsw i32 %337, %338
  %340 = trunc i32 %339 to i8
  %341 = load i8*, i8** %9, align 8
  %342 = getelementptr inbounds i8, i8* %341, i64 6
  store i8 %340, i8* %342, align 1
  br label %343

343:                                              ; preds = %336, %332, %329, %319
  br label %344

344:                                              ; preds = %343, %314, %304
  %345 = load i32, i32* %16, align 4
  %346 = load i32, i32* @ELD_FIXED_BYTES, align 4
  %347 = sub nsw i32 %345, %346
  %348 = load i32, i32* %15, align 4
  %349 = sub nsw i32 %347, %348
  %350 = sdiv i32 %349, 3
  %351 = shl i32 %350, 4
  %352 = load i8*, i8** %9, align 8
  %353 = getelementptr inbounds i8, i8* %352, i64 5
  %354 = load i8, i8* %353, align 1
  %355 = zext i8 %354 to i32
  %356 = or i32 %355, %351
  %357 = trunc i32 %356 to i8
  store i8 %357, i8* %353, align 1
  %358 = load i32, i32* %16, align 4
  %359 = call i32 @round_up(i32 %358, i32 4)
  store i32 %359, i32* %16, align 4
  %360 = load i32, i32* %16, align 4
  %361 = sub nsw i32 %360, 4
  %362 = sdiv i32 %361, 4
  %363 = trunc i32 %362 to i8
  %364 = load i8*, i8** %9, align 8
  %365 = getelementptr inbounds i8, i8* %364, i64 2
  store i8 %363, i8* %365, align 1
  %366 = load i32, i32* %16, align 4
  %367 = load i32*, i32** %10, align 8
  store i32 %366, i32* %367, align 4
  store i32 0, i32* %6, align 4
  br label %368

368:                                              ; preds = %344, %299, %28
  %369 = load i32, i32* %6, align 4
  ret i32 %369
}

declare dso_local i8* @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @codec_info(%struct.hda_codec*, i8*, ...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i8*) #1

declare dso_local i32 @put_unaligned_le16(i32, i8*) #1

declare dso_local i32 @round_up(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
