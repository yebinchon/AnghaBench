; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_format.c_parse_audio_format_i_type.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_format.c_parse_audio_format_i_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i64 }
%struct.audioformat = type { i32, i32, i32, i32, i32 }
%struct.uac_format_type_i_discrete_descriptor = type { i32, i32 }
%struct.uac_format_type_i_ext_descriptor = type { i32, i32 }
%struct.uac3_as_header_descriptor = type { i32, i32 }

@UAC2_FORMAT_TYPE_I_RAW_DATA = common dso_local global i64 0, align 8
@SNDRV_PCM_FMTBIT_SPECIAL = common dso_local global i64 0, align 8
@UAC3_FORMAT_TYPE_I_RAW_DATA = common dso_local global i64 0, align 8
@UAC_FORMAT_TYPE_I_UNDEFINED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"%u:%d : format type 0 is detected, processed as PCM\0A\00", align 1
@UAC_FORMAT_TYPE_I_PCM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"%u:%d : sample bitwidth %d in over sample bytes %d\0A\00", align 1
@SNDRV_PCM_FMTBIT_S8 = common dso_local global i64 0, align 8
@SNDRV_PCM_FMTBIT_S16_BE = common dso_local global i64 0, align 8
@SNDRV_PCM_FMTBIT_S16_LE = common dso_local global i64 0, align 8
@SNDRV_PCM_FMTBIT_S24_3BE = common dso_local global i64 0, align 8
@SNDRV_PCM_FMTBIT_S24_3LE = common dso_local global i64 0, align 8
@SNDRV_PCM_FMTBIT_S32_LE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"%u:%d : unsupported sample bitwidth %d in %d bytes\0A\00", align 1
@UAC_FORMAT_TYPE_I_PCM8 = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_U8 = common dso_local global i64 0, align 8
@UAC_FORMAT_TYPE_I_IEEE_FLOAT = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_FLOAT_LE = common dso_local global i64 0, align 8
@UAC_FORMAT_TYPE_I_ALAW = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_A_LAW = common dso_local global i64 0, align 8
@UAC_FORMAT_TYPE_I_MULAW = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_MU_LAW = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"%u:%d : unsupported format bits %#llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_usb_audio*, %struct.audioformat*, i64, i8*)* @parse_audio_format_i_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_audio_format_i_type(%struct.snd_usb_audio* %0, %struct.audioformat* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.snd_usb_audio*, align 8
  %6 = alloca %struct.audioformat*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.uac_format_type_i_discrete_descriptor*, align 8
  %13 = alloca %struct.uac_format_type_i_ext_descriptor*, align 8
  %14 = alloca %struct.uac3_as_header_descriptor*, align 8
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %5, align 8
  store %struct.audioformat* %1, %struct.audioformat** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  store i64 0, i64* %11, align 8
  %15 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %16 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %19 [
    i32 130, label %18
    i32 129, label %30
    i32 128, label %52
  ]

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %4, %18
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to %struct.uac_format_type_i_discrete_descriptor*
  store %struct.uac_format_type_i_discrete_descriptor* %21, %struct.uac_format_type_i_discrete_descriptor** %12, align 8
  %22 = load %struct.uac_format_type_i_discrete_descriptor*, %struct.uac_format_type_i_discrete_descriptor** %12, align 8
  %23 = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, %struct.uac_format_type_i_discrete_descriptor* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.uac_format_type_i_discrete_descriptor*, %struct.uac_format_type_i_discrete_descriptor** %12, align 8
  %26 = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, %struct.uac_format_type_i_discrete_descriptor* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i64, i64* %7, align 8
  %29 = shl i64 1, %28
  store i64 %29, i64* %7, align 8
  br label %72

30:                                               ; preds = %4
  %31 = load i8*, i8** %8, align 8
  %32 = bitcast i8* %31 to %struct.uac_format_type_i_ext_descriptor*
  store %struct.uac_format_type_i_ext_descriptor* %32, %struct.uac_format_type_i_ext_descriptor** %13, align 8
  %33 = load %struct.uac_format_type_i_ext_descriptor*, %struct.uac_format_type_i_ext_descriptor** %13, align 8
  %34 = getelementptr inbounds %struct.uac_format_type_i_ext_descriptor, %struct.uac_format_type_i_ext_descriptor* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load %struct.uac_format_type_i_ext_descriptor*, %struct.uac_format_type_i_ext_descriptor** %13, align 8
  %37 = getelementptr inbounds %struct.uac_format_type_i_ext_descriptor, %struct.uac_format_type_i_ext_descriptor* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @UAC2_FORMAT_TYPE_I_RAW_DATA, align 8
  %41 = and i64 %39, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %30
  %44 = load i64, i64* @SNDRV_PCM_FMTBIT_SPECIAL, align 8
  %45 = load i64, i64* %11, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %11, align 8
  %47 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %48 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %30
  %50 = load i64, i64* %7, align 8
  %51 = shl i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %72

52:                                               ; preds = %4
  %53 = load i8*, i8** %8, align 8
  %54 = bitcast i8* %53 to %struct.uac3_as_header_descriptor*
  store %struct.uac3_as_header_descriptor* %54, %struct.uac3_as_header_descriptor** %14, align 8
  %55 = load %struct.uac3_as_header_descriptor*, %struct.uac3_as_header_descriptor** %14, align 8
  %56 = getelementptr inbounds %struct.uac3_as_header_descriptor, %struct.uac3_as_header_descriptor* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %9, align 4
  %58 = load %struct.uac3_as_header_descriptor*, %struct.uac3_as_header_descriptor** %14, align 8
  %59 = getelementptr inbounds %struct.uac3_as_header_descriptor, %struct.uac3_as_header_descriptor* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %10, align 4
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @UAC3_FORMAT_TYPE_I_RAW_DATA, align 8
  %63 = and i64 %61, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %52
  %66 = load i64, i64* @SNDRV_PCM_FMTBIT_SPECIAL, align 8
  %67 = load i64, i64* %11, align 8
  %68 = or i64 %67, %66
  store i64 %68, i64* %11, align 8
  br label %69

69:                                               ; preds = %65, %52
  %70 = load i64, i64* %7, align 8
  %71 = shl i64 %70, 1
  store i64 %71, i64* %7, align 8
  br label %72

72:                                               ; preds = %69, %49, %19
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %75 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load i64, i64* %11, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %99

78:                                               ; preds = %72
  %79 = load i64, i64* %7, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %78
  %82 = load i64, i64* %7, align 8
  %83 = load i32, i32* @UAC_FORMAT_TYPE_I_UNDEFINED, align 4
  %84 = shl i32 1, %83
  %85 = sext i32 %84 to i64
  %86 = icmp eq i64 %82, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %81, %78
  %88 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %89 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %90 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %93 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (%struct.snd_usb_audio*, i8*, i32, i32, ...) @usb_audio_info(%struct.snd_usb_audio* %88, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %94)
  %96 = load i32, i32* @UAC_FORMAT_TYPE_I_PCM, align 4
  %97 = shl i32 1, %96
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %7, align 8
  br label %99

99:                                               ; preds = %87, %81, %72
  %100 = load i64, i64* %7, align 8
  %101 = load i32, i32* @UAC_FORMAT_TYPE_I_PCM, align 4
  %102 = shl i32 1, %101
  %103 = sext i32 %102 to i64
  %104 = and i64 %100, %103
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %192

106:                                              ; preds = %99
  %107 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %108 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @USB_ID(i32 1410, i32 22)
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %118, label %112

112:                                              ; preds = %106
  %113 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %114 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @USB_ID(i32 1410, i32 12)
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %112, %106
  %119 = load i32, i32* %9, align 4
  %120 = icmp eq i32 %119, 24
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load i32, i32* %10, align 4
  %123 = icmp eq i32 %122, 2
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 3, i32* %10, align 4
  br label %142

125:                                              ; preds = %121, %118, %112
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %10, align 4
  %128 = mul nsw i32 %127, 8
  %129 = icmp sgt i32 %126, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %125
  %131 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %132 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %133 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %136 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %10, align 4
  %140 = call i32 (%struct.snd_usb_audio*, i8*, i32, i32, ...) @usb_audio_info(%struct.snd_usb_audio* %131, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %134, i32 %137, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %130, %125
  br label %142

142:                                              ; preds = %141, %124
  %143 = load i32, i32* %10, align 4
  switch i32 %143, label %180 [
    i32 1, label %144
    i32 2, label %148
    i32 3, label %162
    i32 4, label %176
  ]

144:                                              ; preds = %142
  %145 = load i64, i64* @SNDRV_PCM_FMTBIT_S8, align 8
  %146 = load i64, i64* %11, align 8
  %147 = or i64 %146, %145
  store i64 %147, i64* %11, align 8
  br label %191

148:                                              ; preds = %142
  %149 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %150 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %151 = call i32 @snd_usb_is_big_endian_format(%struct.snd_usb_audio* %149, %struct.audioformat* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load i64, i64* @SNDRV_PCM_FMTBIT_S16_BE, align 8
  %155 = load i64, i64* %11, align 8
  %156 = or i64 %155, %154
  store i64 %156, i64* %11, align 8
  br label %161

157:                                              ; preds = %148
  %158 = load i64, i64* @SNDRV_PCM_FMTBIT_S16_LE, align 8
  %159 = load i64, i64* %11, align 8
  %160 = or i64 %159, %158
  store i64 %160, i64* %11, align 8
  br label %161

161:                                              ; preds = %157, %153
  br label %191

162:                                              ; preds = %142
  %163 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %164 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %165 = call i32 @snd_usb_is_big_endian_format(%struct.snd_usb_audio* %163, %struct.audioformat* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = load i64, i64* @SNDRV_PCM_FMTBIT_S24_3BE, align 8
  %169 = load i64, i64* %11, align 8
  %170 = or i64 %169, %168
  store i64 %170, i64* %11, align 8
  br label %175

171:                                              ; preds = %162
  %172 = load i64, i64* @SNDRV_PCM_FMTBIT_S24_3LE, align 8
  %173 = load i64, i64* %11, align 8
  %174 = or i64 %173, %172
  store i64 %174, i64* %11, align 8
  br label %175

175:                                              ; preds = %171, %167
  br label %191

176:                                              ; preds = %142
  %177 = load i64, i64* @SNDRV_PCM_FMTBIT_S32_LE, align 8
  %178 = load i64, i64* %11, align 8
  %179 = or i64 %178, %177
  store i64 %179, i64* %11, align 8
  br label %191

180:                                              ; preds = %142
  %181 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %182 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %183 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %186 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* %10, align 4
  %190 = call i32 (%struct.snd_usb_audio*, i8*, i32, i32, ...) @usb_audio_info(%struct.snd_usb_audio* %181, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %184, i32 %187, i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %180, %176, %175, %161, %144
  br label %192

192:                                              ; preds = %191, %99
  %193 = load i64, i64* %7, align 8
  %194 = load i32, i32* @UAC_FORMAT_TYPE_I_PCM8, align 4
  %195 = shl i32 1, %194
  %196 = sext i32 %195 to i64
  %197 = and i64 %193, %196
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %214

199:                                              ; preds = %192
  %200 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %201 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = call i64 @USB_ID(i32 1274, i32 16897)
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %199
  %206 = load i64, i64* @SNDRV_PCM_FMTBIT_S8, align 8
  %207 = load i64, i64* %11, align 8
  %208 = or i64 %207, %206
  store i64 %208, i64* %11, align 8
  br label %213

209:                                              ; preds = %199
  %210 = load i64, i64* @SNDRV_PCM_FMTBIT_U8, align 8
  %211 = load i64, i64* %11, align 8
  %212 = or i64 %211, %210
  store i64 %212, i64* %11, align 8
  br label %213

213:                                              ; preds = %209, %205
  br label %214

214:                                              ; preds = %213, %192
  %215 = load i64, i64* %7, align 8
  %216 = load i32, i32* @UAC_FORMAT_TYPE_I_IEEE_FLOAT, align 4
  %217 = shl i32 1, %216
  %218 = sext i32 %217 to i64
  %219 = and i64 %215, %218
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %214
  %222 = load i64, i64* @SNDRV_PCM_FMTBIT_FLOAT_LE, align 8
  %223 = load i64, i64* %11, align 8
  %224 = or i64 %223, %222
  store i64 %224, i64* %11, align 8
  br label %225

225:                                              ; preds = %221, %214
  %226 = load i64, i64* %7, align 8
  %227 = load i32, i32* @UAC_FORMAT_TYPE_I_ALAW, align 4
  %228 = shl i32 1, %227
  %229 = sext i32 %228 to i64
  %230 = and i64 %226, %229
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %225
  %233 = load i64, i64* @SNDRV_PCM_FMTBIT_A_LAW, align 8
  %234 = load i64, i64* %11, align 8
  %235 = or i64 %234, %233
  store i64 %235, i64* %11, align 8
  br label %236

236:                                              ; preds = %232, %225
  %237 = load i64, i64* %7, align 8
  %238 = load i32, i32* @UAC_FORMAT_TYPE_I_MULAW, align 4
  %239 = shl i32 1, %238
  %240 = sext i32 %239 to i64
  %241 = and i64 %237, %240
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %236
  %244 = load i64, i64* @SNDRV_PCM_FMTBIT_MU_LAW, align 8
  %245 = load i64, i64* %11, align 8
  %246 = or i64 %245, %244
  store i64 %246, i64* %11, align 8
  br label %247

247:                                              ; preds = %243, %236
  %248 = load i64, i64* %7, align 8
  %249 = and i64 %248, -64
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %261

251:                                              ; preds = %247
  %252 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %253 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %254 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %257 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = load i64, i64* %7, align 8
  %260 = call i32 (%struct.snd_usb_audio*, i8*, i32, i32, ...) @usb_audio_info(%struct.snd_usb_audio* %252, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %255, i32 %258, i64 %259)
  br label %261

261:                                              ; preds = %251, %247
  %262 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %263 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %264 = load i32, i32* %10, align 4
  %265 = call i64 @snd_usb_interface_dsd_format_quirks(%struct.snd_usb_audio* %262, %struct.audioformat* %263, i32 %264)
  %266 = load i64, i64* %11, align 8
  %267 = or i64 %266, %265
  store i64 %267, i64* %11, align 8
  %268 = load i64, i64* %11, align 8
  ret i64 %268
}

declare dso_local i32 @usb_audio_info(%struct.snd_usb_audio*, i8*, i32, i32, ...) #1

declare dso_local i64 @USB_ID(i32, i32) #1

declare dso_local i32 @snd_usb_is_big_endian_format(%struct.snd_usb_audio*, %struct.audioformat*) #1

declare dso_local i64 @snd_usb_interface_dsd_format_quirks(%struct.snd_usb_audio*, %struct.audioformat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
