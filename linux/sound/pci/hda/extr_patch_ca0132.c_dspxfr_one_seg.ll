; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dspxfr_one_seg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dspxfr_one_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.dsp_image_seg = type { i32*, i32, i32 }
%struct.dma_engine = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"hci_write\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Invalid Params\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Invalid chip_addx Params\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"dma_engine buffer NULL\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"frmsz zero\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"chpadr=0x%08x frmsz=%u nchan=%u rate_mul=%u div=%u bufsz=%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"dspxfr_one_seg:failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"dspxfr (seg loop)cnt=%u rs=%u remainder=%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"dspxfr:DMA did not start\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DMA_STATE_RUN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [20 x i8] c"+++++ DMA complete\0A\00", align 1
@DMA_STATE_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, %struct.dsp_image_seg*, i32, %struct.dma_engine*, i32, i32, i32)* @dspxfr_one_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dspxfr_one_seg(%struct.hda_codec* %0, %struct.dsp_image_seg* %1, i32 %2, %struct.dma_engine* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.hda_codec*, align 8
  %10 = alloca %struct.dsp_image_seg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dma_engine*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i16, align 2
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.dsp_image_seg*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %9, align 8
  store %struct.dsp_image_seg* %1, %struct.dsp_image_seg** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.dma_engine* %3, %struct.dma_engine** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store %struct.dsp_image_seg* null, %struct.dsp_image_seg** %32, align 8
  %35 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %10, align 8
  %36 = icmp eq %struct.dsp_image_seg* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %7
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %393

40:                                               ; preds = %7
  %41 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %10, align 8
  %42 = call i64 @is_hci_prog_list_seg(%struct.dsp_image_seg* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %10, align 8
  store %struct.dsp_image_seg* %45, %struct.dsp_image_seg** %32, align 8
  %46 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %10, align 8
  %47 = call %struct.dsp_image_seg* @get_next_seg_ptr(%struct.dsp_image_seg* %46)
  store %struct.dsp_image_seg* %47, %struct.dsp_image_seg** %10, align 8
  br label %48

48:                                               ; preds = %44, %40
  %49 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %32, align 8
  %50 = icmp ne %struct.dsp_image_seg* %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %10, align 8
  %53 = icmp ne %struct.dsp_image_seg* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %10, align 8
  %56 = call i64 @is_last(%struct.dsp_image_seg* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54, %51
  %59 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %60 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %62 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %32, align 8
  %63 = call i32 @dspxfr_hci_write(%struct.hda_codec* %61, %struct.dsp_image_seg* %62)
  store i32 %63, i32* %8, align 4
  br label %393

64:                                               ; preds = %54, %48
  %65 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %10, align 8
  %66 = icmp eq %struct.dsp_image_seg* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = load %struct.dma_engine*, %struct.dma_engine** %12, align 8
  %69 = icmp eq %struct.dma_engine* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %14, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70, %67, %64
  %74 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %75 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %8, align 4
  br label %393

78:                                               ; preds = %70
  %79 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %10, align 8
  %80 = getelementptr inbounds %struct.dsp_image_seg, %struct.dsp_image_seg* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %18, align 8
  %82 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %10, align 8
  %83 = getelementptr inbounds %struct.dsp_image_seg, %struct.dsp_image_seg* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %19, align 4
  %85 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %10, align 8
  %86 = getelementptr inbounds %struct.dsp_image_seg, %struct.dsp_image_seg* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %20, align 4
  %88 = load i32, i32* %20, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %78
  %91 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %32, align 8
  %92 = icmp ne %struct.dsp_image_seg* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %95 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %32, align 8
  %96 = call i32 @dspxfr_hci_write(%struct.hda_codec* %94, %struct.dsp_image_seg* %95)
  br label %98

97:                                               ; preds = %90
  br label %98

98:                                               ; preds = %97, %93
  %99 = phi i32 [ %96, %93 ], [ 0, %97 ]
  store i32 %99, i32* %8, align 4
  br label %393

100:                                              ; preds = %78
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i32, i32* %19, align 4
  %105 = and i32 %104, -262144
  %106 = load i32, i32* %11, align 4
  %107 = shl i32 %106, 2
  %108 = add i32 %105, %107
  store i32 %108, i32* %19, align 4
  br label %109

109:                                              ; preds = %103, %100
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* %20, align 4
  %112 = call i64 @UC_RANGE(i32 %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %129, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* %20, align 4
  %117 = call i32 @X_RANGE_ALL(i32 %115, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %129, label %119

119:                                              ; preds = %114
  %120 = load i32, i32* %19, align 4
  %121 = load i32, i32* %20, align 4
  %122 = call i32 @Y_RANGE_ALL(i32 %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %126 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %125, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %8, align 4
  br label %393

129:                                              ; preds = %119, %114, %109
  %130 = load %struct.dma_engine*, %struct.dma_engine** %12, align 8
  %131 = call i64 @dma_get_buffer_size(%struct.dma_engine* %130)
  %132 = trunc i64 %131 to i32
  %133 = zext i32 %132 to i64
  %134 = udiv i64 %133, 4
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %21, align 4
  %136 = load %struct.dma_engine*, %struct.dma_engine** %12, align 8
  %137 = call i8* @dma_get_buffer_addr(%struct.dma_engine* %136)
  store i8* %137, i8** %22, align 8
  %138 = load i8*, i8** %22, align 8
  %139 = icmp eq i8* %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %129
  %141 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %142 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %141, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %8, align 4
  br label %393

145:                                              ; preds = %129
  %146 = load %struct.dma_engine*, %struct.dma_engine** %12, align 8
  %147 = call i32 @dma_get_converter_format(%struct.dma_engine* %146, i16* %23)
  %148 = load i16, i16* %23, align 2
  %149 = call i32 @get_hdafmt_rate(i16 zeroext %148)
  %150 = ashr i32 %149, 0
  %151 = and i32 %150, 3
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %24, align 4
  %153 = load i16, i16* %23, align 2
  %154 = call i32 @get_hdafmt_rate(i16 zeroext %153)
  %155 = ashr i32 %154, 3
  %156 = and i32 %155, 3
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %25, align 4
  %158 = load i16, i16* %23, align 2
  %159 = call i32 @get_hdafmt_chs(i16 zeroext %158)
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %26, align 4
  %161 = load i32, i32* %24, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %145
  br label %170

164:                                              ; preds = %145
  %165 = load i32, i32* %26, align 4
  %166 = load i32, i32* %25, align 4
  %167 = mul i32 %165, %166
  %168 = load i32, i32* %24, align 4
  %169 = udiv i32 %167, %168
  br label %170

170:                                              ; preds = %164, %163
  %171 = phi i32 [ 0, %163 ], [ %169, %164 ]
  store i32 %171, i32* %27, align 4
  %172 = load i32, i32* %27, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %176 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %175, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %177 = load i32, i32* @EINVAL, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %8, align 4
  br label %393

179:                                              ; preds = %170
  %180 = load i32, i32* %21, align 4
  %181 = load i32, i32* %19, align 4
  %182 = call i64 @UC_RANGE(i32 %181, i32 1)
  %183 = icmp ne i64 %182, 0
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i32 65536, i32 32768
  %186 = call i32 @min(i32 %180, i32 %185)
  store i32 %186, i32* %21, align 4
  %187 = load i32, i32* %21, align 4
  %188 = load i32, i32* %27, align 4
  %189 = urem i32 %187, %188
  %190 = load i32, i32* %21, align 4
  %191 = sub i32 %190, %189
  store i32 %191, i32* %21, align 4
  %192 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %193 = load i32, i32* %19, align 4
  %194 = load i32, i32* %27, align 4
  %195 = load i32, i32* %26, align 4
  %196 = load i32, i32* %25, align 4
  %197 = load i32, i32* %24, align 4
  %198 = load i32, i32* %21, align 4
  %199 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %192, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i32 %193, i32 %194, i32 %195, i32 %196, i32 %197, i32 %198)
  %200 = load i32, i32* %21, align 4
  %201 = load i32, i32* %27, align 4
  %202 = icmp ult i32 %200, %201
  br i1 %202, label %203, label %208

203:                                              ; preds = %179
  %204 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %205 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %204, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %206 = load i32, i32* @EINVAL, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %8, align 4
  br label %393

208:                                              ; preds = %179
  %209 = load i32, i32* %20, align 4
  %210 = load i32, i32* %27, align 4
  %211 = urem i32 %209, %210
  store i32 %211, i32* %28, align 4
  %212 = load i32*, i32** %18, align 8
  store i32* %212, i32** %29, align 8
  %213 = load i32, i32* %19, align 4
  store i32 %213, i32* %30, align 4
  %214 = load i32, i32* %28, align 4
  %215 = load i32*, i32** %18, align 8
  %216 = zext i32 %214 to i64
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  store i32* %217, i32** %18, align 8
  %218 = load i32, i32* %28, align 4
  %219 = zext i32 %218 to i64
  %220 = mul i64 %219, 4
  %221 = load i32, i32* %19, align 4
  %222 = zext i32 %221 to i64
  %223 = add i64 %222, %220
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %19, align 4
  %225 = load i32, i32* %28, align 4
  %226 = load i32, i32* %20, align 4
  %227 = sub i32 %226, %225
  store i32 %227, i32* %20, align 4
  br label %228

228:                                              ; preds = %367, %208
  %229 = load i32, i32* %20, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %382

231:                                              ; preds = %228
  %232 = load i32, i32* %21, align 4
  %233 = load i32, i32* %20, align 4
  %234 = call i32 @min(i32 %232, i32 %233)
  store i32 %234, i32* %31, align 4
  %235 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %236 = load i32, i32* %20, align 4
  %237 = load i32, i32* %31, align 4
  %238 = load i32, i32* %28, align 4
  %239 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %235, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %236, i32 %237, i32 %238)
  %240 = load %struct.dma_engine*, %struct.dma_engine** %12, align 8
  %241 = load i32*, i32** %18, align 8
  %242 = load i32, i32* %31, align 4
  %243 = zext i32 %242 to i64
  %244 = mul i64 %243, 4
  %245 = trunc i64 %244 to i32
  %246 = call i32 @dma_xfer(%struct.dma_engine* %240, i32* %241, i32 %245)
  %247 = load i32, i32* %17, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %270, label %249

249:                                              ; preds = %231
  %250 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %251 = load i32, i32* %13, align 4
  %252 = load i32, i32* %15, align 4
  %253 = call i32 @dsp_dma_stop(%struct.hda_codec* %250, i32 %251, i32 %252)
  store i32 %253, i32* %16, align 4
  %254 = load i32, i32* %16, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %249
  %257 = load i32, i32* %16, align 4
  store i32 %257, i32* %8, align 4
  br label %393

258:                                              ; preds = %249
  %259 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %260 = load i32, i32* %19, align 4
  %261 = load i32, i32* %13, align 4
  %262 = load i32, i32* %14, align 4
  %263 = load i32, i32* %15, align 4
  %264 = call i32 @dsp_dma_setup_common(%struct.hda_codec* %259, i32 %260, i32 %261, i32 %262, i32 %263)
  store i32 %264, i32* %16, align 4
  %265 = load i32, i32* %16, align 4
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %258
  %268 = load i32, i32* %16, align 4
  store i32 %268, i32* %8, align 4
  br label %393

269:                                              ; preds = %258
  store i32 1, i32* %17, align 4
  br label %270

270:                                              ; preds = %269, %231
  %271 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %272 = load i32, i32* %19, align 4
  %273 = load i32, i32* %31, align 4
  %274 = load i32, i32* %13, align 4
  %275 = call i32 @dsp_dma_setup(%struct.hda_codec* %271, i32 %272, i32 %273, i32 %274)
  store i32 %275, i32* %16, align 4
  %276 = load i32, i32* %16, align 4
  %277 = icmp slt i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %270
  %279 = load i32, i32* %16, align 4
  store i32 %279, i32* %8, align 4
  br label %393

280:                                              ; preds = %270
  %281 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %282 = load i32, i32* %13, align 4
  %283 = load i32, i32* %15, align 4
  %284 = call i32 @dsp_dma_start(%struct.hda_codec* %281, i32 %282, i32 %283)
  store i32 %284, i32* %16, align 4
  %285 = load i32, i32* %16, align 4
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %280
  %288 = load i32, i32* %16, align 4
  store i32 %288, i32* %8, align 4
  br label %393

289:                                              ; preds = %280
  %290 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %291 = load i32, i32* %13, align 4
  %292 = call i32 @dsp_is_dma_active(%struct.hda_codec* %290, i32 %291)
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %299, label %294

294:                                              ; preds = %289
  %295 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %296 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %295, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %297 = load i32, i32* @EIO, align 4
  %298 = sub nsw i32 0, %297
  store i32 %298, i32* %8, align 4
  br label %393

299:                                              ; preds = %289
  %300 = load %struct.dma_engine*, %struct.dma_engine** %12, align 8
  %301 = load i32, i32* @DMA_STATE_RUN, align 4
  %302 = call i32 @dma_set_state(%struct.dma_engine* %300, i32 %301)
  store i32 %302, i32* %16, align 4
  %303 = load i32, i32* %16, align 4
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %299
  %306 = load i32, i32* %16, align 4
  store i32 %306, i32* %8, align 4
  br label %393

307:                                              ; preds = %299
  %308 = load i32, i32* %28, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %321

310:                                              ; preds = %307
  %311 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %312 = load i32, i32* %30, align 4
  %313 = load i32*, i32** %29, align 8
  %314 = load i32, i32* %28, align 4
  %315 = call i32 @chipio_write_multiple(%struct.hda_codec* %311, i32 %312, i32* %313, i32 %314)
  store i32 %315, i32* %16, align 4
  %316 = load i32, i32* %16, align 4
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %310
  %319 = load i32, i32* %16, align 4
  store i32 %319, i32* %8, align 4
  br label %393

320:                                              ; preds = %310
  store i32 0, i32* %28, align 4
  br label %321

321:                                              ; preds = %320, %307
  %322 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %32, align 8
  %323 = icmp ne %struct.dsp_image_seg* %322, null
  br i1 %323, label %324, label %333

324:                                              ; preds = %321
  %325 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %326 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %32, align 8
  %327 = call i32 @dspxfr_hci_write(%struct.hda_codec* %325, %struct.dsp_image_seg* %326)
  store i32 %327, i32* %16, align 4
  %328 = load i32, i32* %16, align 4
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %324
  %331 = load i32, i32* %16, align 4
  store i32 %331, i32* %8, align 4
  br label %393

332:                                              ; preds = %324
  store %struct.dsp_image_seg* null, %struct.dsp_image_seg** %32, align 8
  br label %333

333:                                              ; preds = %332, %321
  %334 = load i64, i64* @jiffies, align 8
  %335 = call i64 @msecs_to_jiffies(i32 2000)
  %336 = add i64 %334, %335
  store i64 %336, i64* %33, align 8
  br label %337

337:                                              ; preds = %346, %333
  %338 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %339 = load i32, i32* %13, align 4
  %340 = call i32 @dsp_is_dma_active(%struct.hda_codec* %338, i32 %339)
  store i32 %340, i32* %34, align 4
  %341 = load i32, i32* %34, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %344, label %343

343:                                              ; preds = %337
  br label %351

344:                                              ; preds = %337
  %345 = call i32 @msleep(i32 20)
  br label %346

346:                                              ; preds = %344
  %347 = load i64, i64* @jiffies, align 8
  %348 = load i64, i64* %33, align 8
  %349 = call i64 @time_before(i64 %347, i64 %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %337, label %351

351:                                              ; preds = %346, %343
  %352 = load i32, i32* %34, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %355

354:                                              ; preds = %351
  br label %382

355:                                              ; preds = %351
  %356 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %357 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %356, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %358 = load %struct.dma_engine*, %struct.dma_engine** %12, align 8
  %359 = load i32, i32* @DMA_STATE_STOP, align 4
  %360 = call i32 @dma_set_state(%struct.dma_engine* %358, i32 %359)
  %361 = load %struct.dma_engine*, %struct.dma_engine** %12, align 8
  %362 = call i32 @dma_reset(%struct.dma_engine* %361)
  store i32 %362, i32* %16, align 4
  %363 = load i32, i32* %16, align 4
  %364 = icmp slt i32 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %355
  %366 = load i32, i32* %16, align 4
  store i32 %366, i32* %8, align 4
  br label %393

367:                                              ; preds = %355
  %368 = load i32, i32* %31, align 4
  %369 = load i32*, i32** %18, align 8
  %370 = zext i32 %368 to i64
  %371 = getelementptr inbounds i32, i32* %369, i64 %370
  store i32* %371, i32** %18, align 8
  %372 = load i32, i32* %31, align 4
  %373 = zext i32 %372 to i64
  %374 = mul i64 %373, 4
  %375 = load i32, i32* %19, align 4
  %376 = zext i32 %375 to i64
  %377 = add i64 %376, %374
  %378 = trunc i64 %377 to i32
  store i32 %378, i32* %19, align 4
  %379 = load i32, i32* %31, align 4
  %380 = load i32, i32* %20, align 4
  %381 = sub i32 %380, %379
  store i32 %381, i32* %20, align 4
  br label %228

382:                                              ; preds = %354, %228
  %383 = load i32, i32* %28, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %391

385:                                              ; preds = %382
  %386 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %387 = load i32, i32* %30, align 4
  %388 = load i32*, i32** %29, align 8
  %389 = load i32, i32* %28, align 4
  %390 = call i32 @chipio_write_multiple(%struct.hda_codec* %386, i32 %387, i32* %388, i32 %389)
  store i32 %390, i32* %16, align 4
  br label %391

391:                                              ; preds = %385, %382
  %392 = load i32, i32* %16, align 4
  store i32 %392, i32* %8, align 4
  br label %393

393:                                              ; preds = %391, %365, %330, %318, %305, %294, %287, %278, %267, %256, %203, %174, %140, %124, %98, %73, %58, %37
  %394 = load i32, i32* %8, align 4
  ret i32 %394
}

declare dso_local i64 @is_hci_prog_list_seg(%struct.dsp_image_seg*) #1

declare dso_local %struct.dsp_image_seg* @get_next_seg_ptr(%struct.dsp_image_seg*) #1

declare dso_local i64 @is_last(%struct.dsp_image_seg*) #1

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, ...) #1

declare dso_local i32 @dspxfr_hci_write(%struct.hda_codec*, %struct.dsp_image_seg*) #1

declare dso_local i64 @UC_RANGE(i32, i32) #1

declare dso_local i32 @X_RANGE_ALL(i32, i32) #1

declare dso_local i32 @Y_RANGE_ALL(i32, i32) #1

declare dso_local i64 @dma_get_buffer_size(%struct.dma_engine*) #1

declare dso_local i8* @dma_get_buffer_addr(%struct.dma_engine*) #1

declare dso_local i32 @dma_get_converter_format(%struct.dma_engine*, i16*) #1

declare dso_local i32 @get_hdafmt_rate(i16 zeroext) #1

declare dso_local i32 @get_hdafmt_chs(i16 zeroext) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dma_xfer(%struct.dma_engine*, i32*, i32) #1

declare dso_local i32 @dsp_dma_stop(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @dsp_dma_setup_common(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @dsp_dma_setup(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @dsp_dma_start(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @dsp_is_dma_active(%struct.hda_codec*, i32) #1

declare dso_local i32 @dma_set_state(%struct.dma_engine*, i32) #1

declare dso_local i32 @chipio_write_multiple(%struct.hda_codec*, i32, i32*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @dma_reset(%struct.dma_engine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
