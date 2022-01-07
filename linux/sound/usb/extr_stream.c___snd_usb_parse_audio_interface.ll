; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_stream.c___snd_usb_parse_audio_interface.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_stream.c___snd_usb_parse_audio_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i64, %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { i32 }
%struct.usb_interface_descriptor = type { i32, i64, i64, i32, i32 }
%struct.audioformat = type { i32, i32, i32, i64, i32, i32, i32 }
%struct.snd_usb_power_domain = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@USB_CLASS_AUDIO = common dso_local global i64 0, align 8
@USB_SUBCLASS_AUDIOSTREAMING = common dso_local global i64 0, align 8
@USB_SUBCLASS_VENDOR_SPEC = common dso_local global i64 0, align 8
@USB_CLASS_VENDOR_SPEC = common dso_local global i64 0, align 8
@USB_ENDPOINT_XFERTYPE_MASK = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_ISOC = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"%u:%d: unknown interface protocol %#02x, assuming v1\0A\00", align 1
@SNDRV_PCM_FMTBIT_S16_LE = common dso_local global i32 0, align 4
@UAC_FORMAT_TYPE_I = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"%u:%d: add audio endpoint %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_audio*, i32, i32*, i32)* @__snd_usb_parse_audio_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__snd_usb_parse_audio_interface(%struct.snd_usb_audio* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_usb_audio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca %struct.usb_interface*, align 8
  %12 = alloca %struct.usb_host_interface*, align 8
  %13 = alloca %struct.usb_interface_descriptor*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.audioformat*, align 8
  %19 = alloca %struct.snd_usb_power_domain*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.audioformat* null, %struct.audioformat** %18, align 8
  store %struct.snd_usb_power_domain* null, %struct.snd_usb_power_domain** %19, align 8
  %23 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %24 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %23, i32 0, i32 1
  %25 = load %struct.usb_device*, %struct.usb_device** %24, align 8
  store %struct.usb_device* %25, %struct.usb_device** %10, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %26, i32 %27)
  store %struct.usb_interface* %28, %struct.usb_interface** %11, align 8
  %29 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %30 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %20, align 4
  %32 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %33 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @USB_ID(i32 1274, i32 16897)
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %4
  store i32 4, i32* %20, align 4
  br label %38

38:                                               ; preds = %37, %4
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %292, %38
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %20, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %295

43:                                               ; preds = %39
  %44 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %45 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %44, i32 0, i32 1
  %46 = load %struct.usb_host_interface*, %struct.usb_host_interface** %45, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %46, i64 %48
  store %struct.usb_host_interface* %49, %struct.usb_host_interface** %12, align 8
  %50 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %51 = call %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface* %50)
  store %struct.usb_interface_descriptor* %51, %struct.usb_interface_descriptor** %13, align 8
  %52 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %13, align 8
  %53 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %21, align 4
  %55 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %13, align 8
  %56 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @USB_CLASS_AUDIO, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %72, label %60

60:                                               ; preds = %43
  %61 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %13, align 8
  %62 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @USB_SUBCLASS_AUDIOSTREAMING, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %60
  %67 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %13, align 8
  %68 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @USB_SUBCLASS_VENDOR_SPEC, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66, %43
  %73 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %13, align 8
  %74 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @USB_CLASS_VENDOR_SPEC, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %90, label %78

78:                                               ; preds = %72, %66, %60
  %79 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %13, align 8
  %80 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %81, 1
  br i1 %82, label %90, label %83

83:                                               ; preds = %78
  %84 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %85 = call %struct.TYPE_2__* @get_endpoint(%struct.usb_host_interface* %84, i32 0)
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le16_to_cpu(i32 %87)
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83, %78, %72
  br label %292

91:                                               ; preds = %83
  %92 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %93 = call %struct.TYPE_2__* @get_endpoint(%struct.usb_host_interface* %92, i32 0)
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @USB_ENDPOINT_XFERTYPE_MASK, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* @USB_ENDPOINT_XFER_ISOC, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %292

101:                                              ; preds = %91
  %102 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %103 = call %struct.TYPE_2__* @get_endpoint(%struct.usb_host_interface* %102, i32 0)
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @USB_DIR_IN, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  br label %113

111:                                              ; preds = %101
  %112 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i32 [ %110, %109 ], [ %112, %111 ]
  store i32 %114, i32* %17, align 4
  %115 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %13, align 8
  %116 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %15, align 4
  %118 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %15, align 4
  %121 = call i64 @snd_usb_apply_interface_quirk(%struct.snd_usb_audio* %118, i32 %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  br label %292

124:                                              ; preds = %113
  %125 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %126 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @USB_ID_VENDOR(i64 %127)
  %129 = icmp eq i32 %128, 1410
  br i1 %129, label %130, label %140

130:                                              ; preds = %124
  %131 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %13, align 8
  %132 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @USB_CLASS_VENDOR_SPEC, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = load i32, i32* %21, align 4
  %138 = icmp sle i32 %137, 2
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  store i32 130, i32* %21, align 4
  br label %140

140:                                              ; preds = %139, %136, %130, %124
  %141 = load i32, i32* %21, align 4
  switch i32 %141, label %142 [
    i32 130, label %149
    i32 129, label %149
    i32 128, label %199
  ]

142:                                              ; preds = %140
  %143 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %144 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %143, i32 0, i32 0
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %21, align 4
  %148 = call i32 @dev_dbg(i32* %144, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %145, i32 %146, i32 %147)
  store i32 130, i32* %21, align 4
  br label %149

149:                                              ; preds = %140, %140, %142
  store i32 0, i32* %22, align 4
  %150 = load i32, i32* %15, align 4
  %151 = icmp eq i32 %150, 2
  br i1 %151, label %152, label %189

152:                                              ; preds = %149
  %153 = load i32, i32* %20, align 4
  %154 = icmp eq i32 %153, 3
  br i1 %154, label %155, label %189

155:                                              ; preds = %152
  %156 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %157 = icmp ne %struct.audioformat* %156, null
  br i1 %157, label %158, label %189

158:                                              ; preds = %155
  %159 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %160 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %189

163:                                              ; preds = %158
  %164 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %165 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %168, label %189

168:                                              ; preds = %163
  %169 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %170 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @SNDRV_PCM_FMTBIT_S16_LE, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %189

174:                                              ; preds = %168
  %175 = load i32, i32* %21, align 4
  %176 = icmp eq i32 %175, 130
  br i1 %176, label %177, label %189

177:                                              ; preds = %174
  %178 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %179 = call %struct.TYPE_2__* @get_endpoint(%struct.usb_host_interface* %178, i32 0)
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @le16_to_cpu(i32 %181)
  %183 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %184 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = mul nsw i32 %185, 2
  %187 = icmp eq i32 %182, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %177
  store i32 1, i32* %22, align 4
  br label %189

189:                                              ; preds = %188, %177, %174, %168, %163, %158, %155, %152, %149
  %190 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %191 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %192 = load i32, i32* %21, align 4
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* %15, align 4
  %196 = load i32, i32* %17, align 4
  %197 = load i32, i32* %22, align 4
  %198 = call %struct.audioformat* @snd_usb_get_audioformat_uac12(%struct.snd_usb_audio* %190, %struct.usb_host_interface* %191, i32 %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 %197)
  store %struct.audioformat* %198, %struct.audioformat** %18, align 8
  br label %207

199:                                              ; preds = %140
  %200 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %201 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* %14, align 4
  %204 = load i32, i32* %15, align 4
  %205 = load i32, i32* %17, align 4
  %206 = call %struct.audioformat* @snd_usb_get_audioformat_uac3(%struct.snd_usb_audio* %200, %struct.usb_host_interface* %201, %struct.snd_usb_power_domain** %19, i32 %202, i32 %203, i32 %204, i32 %205)
  store %struct.audioformat* %206, %struct.audioformat** %18, align 8
  br label %207

207:                                              ; preds = %199, %189
  %208 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %209 = icmp ne %struct.audioformat* %208, null
  br i1 %209, label %211, label %210

210:                                              ; preds = %207
  br label %292

211:                                              ; preds = %207
  %212 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %213 = call i64 @IS_ERR(%struct.audioformat* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %217 = call i32 @PTR_ERR(%struct.audioformat* %216)
  store i32 %217, i32* %5, align 4
  br label %296

218:                                              ; preds = %211
  br label %219

219:                                              ; preds = %218
  %220 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %221 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @UAC_FORMAT_TYPE_I, align 8
  %224 = icmp ne i64 %222, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %219
  %226 = load i32*, i32** %8, align 8
  store i32 1, i32* %226, align 4
  br label %227

227:                                              ; preds = %225, %219
  %228 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %229 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @UAC_FORMAT_TYPE_I, align 8
  %232 = icmp eq i64 %230, %231
  %233 = zext i1 %232 to i32
  %234 = load i32, i32* %9, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %241

236:                                              ; preds = %227
  %237 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %238 = call i32 @audioformat_free(%struct.audioformat* %237)
  %239 = load %struct.snd_usb_power_domain*, %struct.snd_usb_power_domain** %19, align 8
  %240 = call i32 @kfree(%struct.snd_usb_power_domain* %239)
  store %struct.audioformat* null, %struct.audioformat** %18, align 8
  store %struct.snd_usb_power_domain* null, %struct.snd_usb_power_domain** %19, align 8
  br label %292

241:                                              ; preds = %227
  %242 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %243 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %242, i32 0, i32 0
  %244 = load i32, i32* %7, align 4
  %245 = load i32, i32* %15, align 4
  %246 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %247 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @dev_dbg(i32* %243, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %244, i32 %245, i32 %248)
  %250 = load i32, i32* %21, align 4
  %251 = icmp eq i32 %250, 128
  br i1 %251, label %252, label %258

252:                                              ; preds = %241
  %253 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %254 = load i32, i32* %17, align 4
  %255 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %256 = load %struct.snd_usb_power_domain*, %struct.snd_usb_power_domain** %19, align 8
  %257 = call i32 @snd_usb_add_audio_stream_v3(%struct.snd_usb_audio* %253, i32 %254, %struct.audioformat* %255, %struct.snd_usb_power_domain* %256)
  store i32 %257, i32* %16, align 4
  br label %263

258:                                              ; preds = %241
  %259 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %260 = load i32, i32* %17, align 4
  %261 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %262 = call i32 @snd_usb_add_audio_stream(%struct.snd_usb_audio* %259, i32 %260, %struct.audioformat* %261)
  store i32 %262, i32* %16, align 4
  br label %263

263:                                              ; preds = %258, %252
  %264 = load i32, i32* %16, align 4
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %263
  %267 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %268 = call i32 @audioformat_free(%struct.audioformat* %267)
  %269 = load %struct.snd_usb_power_domain*, %struct.snd_usb_power_domain** %19, align 8
  %270 = call i32 @kfree(%struct.snd_usb_power_domain* %269)
  %271 = load i32, i32* %16, align 4
  store i32 %271, i32* %5, align 4
  br label %296

272:                                              ; preds = %263
  %273 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %274 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %273, i32 0, i32 1
  %275 = load %struct.usb_device*, %struct.usb_device** %274, align 8
  %276 = load i32, i32* %7, align 4
  %277 = load i32, i32* %15, align 4
  %278 = call i32 @usb_set_interface(%struct.usb_device* %275, i32 %276, i32 %277)
  %279 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %280 = load i32, i32* %7, align 4
  %281 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %282 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %283 = call i32 @snd_usb_init_pitch(%struct.snd_usb_audio* %279, i32 %280, %struct.usb_host_interface* %281, %struct.audioformat* %282)
  %284 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %285 = load i32, i32* %7, align 4
  %286 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %287 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %288 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %289 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %288, i32 0, i32 5
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @snd_usb_init_sample_rate(%struct.snd_usb_audio* %284, i32 %285, %struct.usb_host_interface* %286, %struct.audioformat* %287, i32 %290)
  br label %292

292:                                              ; preds = %272, %236, %210, %123, %100, %90
  %293 = load i32, i32* %14, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %14, align 4
  br label %39

295:                                              ; preds = %39
  store i32 0, i32* %5, align 4
  br label %296

296:                                              ; preds = %295, %266, %215
  %297 = load i32, i32* %5, align 4
  ret i32 %297
}

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device*, i32) #1

declare dso_local i64 @USB_ID(i32, i32) #1

declare dso_local %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_2__* @get_endpoint(%struct.usb_host_interface*, i32) #1

declare dso_local i64 @snd_usb_apply_interface_quirk(%struct.snd_usb_audio*, i32, i32) #1

declare dso_local i32 @USB_ID_VENDOR(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local %struct.audioformat* @snd_usb_get_audioformat_uac12(%struct.snd_usb_audio*, %struct.usb_host_interface*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.audioformat* @snd_usb_get_audioformat_uac3(%struct.snd_usb_audio*, %struct.usb_host_interface*, %struct.snd_usb_power_domain**, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.audioformat*) #1

declare dso_local i32 @PTR_ERR(%struct.audioformat*) #1

declare dso_local i32 @audioformat_free(%struct.audioformat*) #1

declare dso_local i32 @kfree(%struct.snd_usb_power_domain*) #1

declare dso_local i32 @snd_usb_add_audio_stream_v3(%struct.snd_usb_audio*, i32, %struct.audioformat*, %struct.snd_usb_power_domain*) #1

declare dso_local i32 @snd_usb_add_audio_stream(%struct.snd_usb_audio*, i32, %struct.audioformat*) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @snd_usb_init_pitch(%struct.snd_usb_audio*, i32, %struct.usb_host_interface*, %struct.audioformat*) #1

declare dso_local i32 @snd_usb_init_sample_rate(%struct.snd_usb_audio*, i32, %struct.usb_host_interface*, %struct.audioformat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
