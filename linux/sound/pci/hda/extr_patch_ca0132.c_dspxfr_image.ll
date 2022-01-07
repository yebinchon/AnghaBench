; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dspxfr_image.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dspxfr_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32 }
%struct.dsp_image_seg = type { i32 }
%struct.dma_engine = type { i16, i32, %struct.dma_engine*, i64, %struct.hda_codec* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DSP_DMA_WRITE_BUFLEN_OVLY = common dso_local global i32 0, align 4
@DSP_DMA_WRITE_BUFLEN_INIT = common dso_local global i32 0, align 4
@INVALID_DMA_CHANNEL = common dso_local global i32 0, align 4
@WIDGET_CHIP_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"set converter format fail\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"alloc dmachan fail\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"alloc ports fail\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"set stream chan fail\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"FLS check fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, %struct.dsp_image_seg*, i32, i32, i16, i32)* @dspxfr_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dspxfr_image(%struct.hda_codec* %0, %struct.dsp_image_seg* %1, i32 %2, i32 %3, i16 zeroext %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hda_codec*, align 8
  %9 = alloca %struct.dsp_image_seg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca %struct.ca0132_spec*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca %struct.dma_engine*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %8, align 8
  store %struct.dsp_image_seg* %1, %struct.dsp_image_seg** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i16 %4, i16* %12, align 2
  store i32 %5, i32* %13, align 4
  %22 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %23 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %22, i32 0, i32 0
  %24 = load %struct.ca0132_spec*, %struct.ca0132_spec** %23, align 8
  store %struct.ca0132_spec* %24, %struct.ca0132_spec** %14, align 8
  store i16 0, i16* %16, align 2
  store i8 0, i8* %18, align 1
  %25 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %9, align 8
  %26 = icmp eq %struct.dsp_image_seg* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %240

30:                                               ; preds = %6
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kzalloc(i32 32, i32 %31)
  %33 = bitcast i8* %32 to %struct.dma_engine*
  store %struct.dma_engine* %33, %struct.dma_engine** %19, align 8
  %34 = load %struct.dma_engine*, %struct.dma_engine** %19, align 8
  %35 = icmp ne %struct.dma_engine* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %240

39:                                               ; preds = %30
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @kzalloc(i32 32, i32 %40)
  %42 = bitcast i8* %41 to %struct.dma_engine*
  %43 = load %struct.dma_engine*, %struct.dma_engine** %19, align 8
  %44 = getelementptr inbounds %struct.dma_engine, %struct.dma_engine* %43, i32 0, i32 2
  store %struct.dma_engine* %42, %struct.dma_engine** %44, align 8
  %45 = load %struct.dma_engine*, %struct.dma_engine** %19, align 8
  %46 = getelementptr inbounds %struct.dma_engine, %struct.dma_engine* %45, i32 0, i32 2
  %47 = load %struct.dma_engine*, %struct.dma_engine** %46, align 8
  %48 = icmp ne %struct.dma_engine* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %39
  %50 = load %struct.dma_engine*, %struct.dma_engine** %19, align 8
  %51 = call i32 @kfree(%struct.dma_engine* %50)
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %240

54:                                               ; preds = %39
  %55 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %56 = load %struct.dma_engine*, %struct.dma_engine** %19, align 8
  %57 = getelementptr inbounds %struct.dma_engine, %struct.dma_engine* %56, i32 0, i32 4
  store %struct.hda_codec* %55, %struct.hda_codec** %57, align 8
  %58 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i16, i16* %12, align 2
  %61 = call i32 @dma_convert_to_hda_format(%struct.hda_codec* %58, i32 %59, i16 zeroext %60, i16* %16)
  %62 = load i16, i16* %16, align 2
  %63 = load %struct.dma_engine*, %struct.dma_engine** %19, align 8
  %64 = getelementptr inbounds %struct.dma_engine, %struct.dma_engine* %63, i32 0, i32 0
  store i16 %62, i16* %64, align 8
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = load i32, i32* @DSP_DMA_WRITE_BUFLEN_OVLY, align 4
  br label %71

69:                                               ; preds = %54
  %70 = load i32, i32* @DSP_DMA_WRITE_BUFLEN_INIT, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = mul nsw i32 %72, 2
  %74 = load %struct.dma_engine*, %struct.dma_engine** %19, align 8
  %75 = getelementptr inbounds %struct.dma_engine, %struct.dma_engine* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i32, i32* @INVALID_DMA_CHANNEL, align 4
  br label %81

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80, %78
  %82 = phi i32 [ %79, %78 ], [ 0, %80 ]
  store i32 %82, i32* %20, align 4
  %83 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %84 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %85 = load i16, i16* %16, align 2
  %86 = call i32 @codec_set_converter_format(%struct.hda_codec* %83, i32 %84, i16 zeroext %85, i32* %17)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %91 = call i32 @codec_dbg(%struct.hda_codec* %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %208

92:                                               ; preds = %81
  %93 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %94 = load %struct.dma_engine*, %struct.dma_engine** %19, align 8
  %95 = getelementptr inbounds %struct.dma_engine, %struct.dma_engine* %94, i32 0, i32 0
  %96 = load i16, i16* %95, align 8
  %97 = load %struct.dma_engine*, %struct.dma_engine** %19, align 8
  %98 = getelementptr inbounds %struct.dma_engine, %struct.dma_engine* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.dma_engine*, %struct.dma_engine** %19, align 8
  %101 = getelementptr inbounds %struct.dma_engine, %struct.dma_engine* %100, i32 0, i32 2
  %102 = load %struct.dma_engine*, %struct.dma_engine** %101, align 8
  %103 = call i32 @snd_hda_codec_load_dsp_prepare(%struct.hda_codec* %93, i16 zeroext %96, i32 %99, %struct.dma_engine* %102)
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %92
  br label %208

107:                                              ; preds = %92
  %108 = load i32, i32* %15, align 4
  %109 = load %struct.ca0132_spec*, %struct.ca0132_spec** %14, align 8
  %110 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %107
  %114 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %115 = call i32 @dspio_alloc_dma_chan(%struct.hda_codec* %114, i32* %20)
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %120 = call i32 @codec_dbg(%struct.hda_codec* %119, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %121 = load i32, i32* @INVALID_DMA_CHANNEL, align 4
  store i32 %121, i32* %20, align 4
  br label %208

122:                                              ; preds = %113
  br label %123

123:                                              ; preds = %122, %107
  store i32 0, i32* %21, align 4
  %124 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %125 = load i16, i16* %16, align 2
  %126 = call i32 @dsp_allocate_ports_format(%struct.hda_codec* %124, i16 zeroext %125, i32* %21)
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* %15, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %131 = call i32 @codec_dbg(%struct.hda_codec* %130, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %208

132:                                              ; preds = %123
  %133 = load %struct.dma_engine*, %struct.dma_engine** %19, align 8
  %134 = call zeroext i8 @dma_get_stream_id(%struct.dma_engine* %133)
  store i8 %134, i8* %18, align 1
  %135 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %136 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %137 = load i8, i8* %18, align 1
  %138 = call i32 @codec_set_converter_stream_channel(%struct.hda_codec* %135, i32 %136, i8 zeroext %137, i32 0, i32* %17)
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* %15, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %132
  %142 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %143 = call i32 @codec_dbg(%struct.hda_codec* %142, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %208

144:                                              ; preds = %132
  br label %145

145:                                              ; preds = %193, %144
  %146 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %9, align 8
  %147 = icmp ne %struct.dsp_image_seg* %146, null
  br i1 %147, label %148, label %153

148:                                              ; preds = %145
  %149 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %9, align 8
  %150 = call i32 @is_last(%struct.dsp_image_seg* %149)
  %151 = icmp ne i32 %150, 0
  %152 = xor i1 %151, true
  br label %153

153:                                              ; preds = %148, %145
  %154 = phi i1 [ false, %145 ], [ %152, %148 ]
  br i1 %154, label %155, label %194

155:                                              ; preds = %153
  %156 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %9, align 8
  %157 = call i32 @is_valid(%struct.dsp_image_seg* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %155
  %160 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %161 = call i32 @codec_dbg(%struct.hda_codec* %160, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %15, align 4
  br label %208

164:                                              ; preds = %155
  %165 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %166 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %9, align 8
  %167 = load i32, i32* %10, align 4
  %168 = load %struct.dma_engine*, %struct.dma_engine** %19, align 8
  %169 = load i32, i32* %20, align 4
  %170 = load i32, i32* %21, align 4
  %171 = load i32, i32* %13, align 4
  %172 = call i32 @dspxfr_one_seg(%struct.hda_codec* %165, %struct.dsp_image_seg* %166, i32 %167, %struct.dma_engine* %168, i32 %169, i32 %170, i32 %171)
  store i32 %172, i32* %15, align 4
  %173 = load i32, i32* %15, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %164
  br label %194

176:                                              ; preds = %164
  %177 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %9, align 8
  %178 = call i64 @is_hci_prog_list_seg(%struct.dsp_image_seg* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %9, align 8
  %182 = call %struct.dsp_image_seg* @get_next_seg_ptr(%struct.dsp_image_seg* %181)
  store %struct.dsp_image_seg* %182, %struct.dsp_image_seg** %9, align 8
  br label %183

183:                                              ; preds = %180, %176
  %184 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %9, align 8
  %185 = icmp ne %struct.dsp_image_seg* %184, null
  br i1 %185, label %186, label %193

186:                                              ; preds = %183
  %187 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %9, align 8
  %188 = call i32 @is_last(%struct.dsp_image_seg* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %186
  %191 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %9, align 8
  %192 = call %struct.dsp_image_seg* @get_next_seg_ptr(%struct.dsp_image_seg* %191)
  store %struct.dsp_image_seg* %192, %struct.dsp_image_seg** %9, align 8
  br label %193

193:                                              ; preds = %190, %186, %183
  br label %145

194:                                              ; preds = %175, %153
  %195 = load i32, i32* %21, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %199 = call i32 @dsp_free_ports(%struct.hda_codec* %198)
  store i32 %199, i32* %15, align 4
  br label %200

200:                                              ; preds = %197, %194
  %201 = load i32, i32* %15, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  br label %208

204:                                              ; preds = %200
  %205 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %206 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %207 = call i32 @codec_set_converter_stream_channel(%struct.hda_codec* %205, i32 %206, i8 zeroext 0, i32 0, i32* %17)
  store i32 %207, i32* %15, align 4
  br label %208

208:                                              ; preds = %204, %203, %159, %141, %129, %118, %106, %89
  %209 = load i32, i32* %13, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %208
  %212 = load i32, i32* %20, align 4
  %213 = load i32, i32* @INVALID_DMA_CHANNEL, align 4
  %214 = icmp ne i32 %212, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %211
  %216 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %217 = load i32, i32* %20, align 4
  %218 = call i32 @dspio_free_dma_chan(%struct.hda_codec* %216, i32 %217)
  br label %219

219:                                              ; preds = %215, %211, %208
  %220 = load %struct.dma_engine*, %struct.dma_engine** %19, align 8
  %221 = getelementptr inbounds %struct.dma_engine, %struct.dma_engine* %220, i32 0, i32 2
  %222 = load %struct.dma_engine*, %struct.dma_engine** %221, align 8
  %223 = getelementptr inbounds %struct.dma_engine, %struct.dma_engine* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %219
  %227 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %228 = load %struct.dma_engine*, %struct.dma_engine** %19, align 8
  %229 = getelementptr inbounds %struct.dma_engine, %struct.dma_engine* %228, i32 0, i32 2
  %230 = load %struct.dma_engine*, %struct.dma_engine** %229, align 8
  %231 = call i32 @snd_hda_codec_load_dsp_cleanup(%struct.hda_codec* %227, %struct.dma_engine* %230)
  br label %232

232:                                              ; preds = %226, %219
  %233 = load %struct.dma_engine*, %struct.dma_engine** %19, align 8
  %234 = getelementptr inbounds %struct.dma_engine, %struct.dma_engine* %233, i32 0, i32 2
  %235 = load %struct.dma_engine*, %struct.dma_engine** %234, align 8
  %236 = call i32 @kfree(%struct.dma_engine* %235)
  %237 = load %struct.dma_engine*, %struct.dma_engine** %19, align 8
  %238 = call i32 @kfree(%struct.dma_engine* %237)
  %239 = load i32, i32* %15, align 4
  store i32 %239, i32* %7, align 4
  br label %240

240:                                              ; preds = %232, %49, %36, %27
  %241 = load i32, i32* %7, align 4
  ret i32 %241
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.dma_engine*) #1

declare dso_local i32 @dma_convert_to_hda_format(%struct.hda_codec*, i32, i16 zeroext, i16*) #1

declare dso_local i32 @codec_set_converter_format(%struct.hda_codec*, i32, i16 zeroext, i32*) #1

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*) #1

declare dso_local i32 @snd_hda_codec_load_dsp_prepare(%struct.hda_codec*, i16 zeroext, i32, %struct.dma_engine*) #1

declare dso_local i32 @dspio_alloc_dma_chan(%struct.hda_codec*, i32*) #1

declare dso_local i32 @dsp_allocate_ports_format(%struct.hda_codec*, i16 zeroext, i32*) #1

declare dso_local zeroext i8 @dma_get_stream_id(%struct.dma_engine*) #1

declare dso_local i32 @codec_set_converter_stream_channel(%struct.hda_codec*, i32, i8 zeroext, i32, i32*) #1

declare dso_local i32 @is_last(%struct.dsp_image_seg*) #1

declare dso_local i32 @is_valid(%struct.dsp_image_seg*) #1

declare dso_local i32 @dspxfr_one_seg(%struct.hda_codec*, %struct.dsp_image_seg*, i32, %struct.dma_engine*, i32, i32, i32) #1

declare dso_local i64 @is_hci_prog_list_seg(%struct.dsp_image_seg*) #1

declare dso_local %struct.dsp_image_seg* @get_next_seg_ptr(%struct.dsp_image_seg*) #1

declare dso_local i32 @dsp_free_ports(%struct.hda_codec*) #1

declare dso_local i32 @dspio_free_dma_chan(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_codec_load_dsp_cleanup(%struct.hda_codec*, %struct.dma_engine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
