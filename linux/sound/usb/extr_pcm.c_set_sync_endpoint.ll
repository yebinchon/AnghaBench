; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_set_sync_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_set_sync_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_substream = type { i64, i32*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.audioformat = type { i32, i32, i32 }
%struct.usb_device = type { i32 }
%struct.usb_host_interface = type { i32 }
%struct.usb_interface_descriptor = type { i32 }
%struct.TYPE_6__ = type { i32, i64, i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@USB_ENDPOINT_SYNCTYPE = common dso_local global i32 0, align 4
@USB_ENDPOINT_SYNC_ASYNC = common dso_local global i32 0, align 4
@USB_ENDPOINT_SYNC_ADAPTIVE = common dso_local global i32 0, align 4
@USB_ENDPOINT_SYNC_SYNC = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFERTYPE_MASK = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_ISOC = common dso_local global i32 0, align 4
@USB_DT_ENDPOINT_AUDIO_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [78 x i8] c"%d:%d : invalid sync pipe. bmAttributes %02x, bLength %d, bSynchAddress %02x\0A\00", align 1
@USB_ENDPOINT_SYNC_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"%d:%d : invalid sync pipe. is_playback %d, ep %02x, bSynchAddress %02x\0A\00", align 1
@USB_ENDPOINT_USAGE_MASK = common dso_local global i32 0, align 4
@USB_ENDPOINT_USAGE_IMPLICIT_FB = common dso_local global i32 0, align 4
@SND_USB_ENDPOINT_TYPE_DATA = common dso_local global i32 0, align 4
@SND_USB_ENDPOINT_TYPE_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_substream*, %struct.audioformat*, %struct.usb_device*, %struct.usb_host_interface*, %struct.usb_interface_descriptor*)* @set_sync_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sync_endpoint(%struct.snd_usb_substream* %0, %struct.audioformat* %1, %struct.usb_device* %2, %struct.usb_host_interface* %3, %struct.usb_interface_descriptor* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_usb_substream*, align 8
  %8 = alloca %struct.audioformat*, align 8
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca %struct.usb_host_interface*, align 8
  %11 = alloca %struct.usb_interface_descriptor*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_usb_substream* %0, %struct.snd_usb_substream** %7, align 8
  store %struct.audioformat* %1, %struct.audioformat** %8, align 8
  store %struct.usb_device* %2, %struct.usb_device** %9, align 8
  store %struct.usb_host_interface* %3, %struct.usb_host_interface** %10, align 8
  store %struct.usb_interface_descriptor* %4, %struct.usb_interface_descriptor** %11, align 8
  %17 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %18 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %12, align 4
  %23 = load %struct.audioformat*, %struct.audioformat** %8, align 8
  %24 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @USB_ENDPOINT_SYNCTYPE, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %5
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* @USB_ENDPOINT_SYNC_ASYNC, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %30, %5
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* @USB_ENDPOINT_SYNC_ADAPTIVE, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37, %30
  %42 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %43 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  %44 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %45 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %41, %37, %34
  %49 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %50 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %51 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %11, align 8
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @set_sync_ep_implicit_fb_quirk(%struct.snd_usb_substream* %49, %struct.usb_device* %50, %struct.usb_interface_descriptor* %51, i32 %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %16, align 4
  store i32 %57, i32* %6, align 4
  br label %267

58:                                               ; preds = %48
  %59 = load i32, i32* %16, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %267

62:                                               ; preds = %58
  %63 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %11, align 8
  %64 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %65, 2
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %267

68:                                               ; preds = %62
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @USB_ENDPOINT_SYNC_SYNC, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %86, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @USB_ENDPOINT_SYNC_ADAPTIVE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %86, label %79

79:                                               ; preds = %75, %68
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* @USB_ENDPOINT_SYNC_ADAPTIVE, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82, %75, %71
  store i32 0, i32* %6, align 4
  br label %267

87:                                               ; preds = %82, %79
  %88 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %89 = call %struct.TYPE_6__* @get_endpoint(%struct.usb_host_interface* %88, i32 1)
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @USB_ENDPOINT_XFERTYPE_MASK, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* @USB_ENDPOINT_XFER_ISOC, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %109, label %96

96:                                               ; preds = %87
  %97 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %98 = call %struct.TYPE_6__* @get_endpoint(%struct.usb_host_interface* %97, i32 1)
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @USB_DT_ENDPOINT_AUDIO_SIZE, align 8
  %102 = icmp sge i64 %100, %101
  br i1 %102, label %103, label %142

103:                                              ; preds = %96
  %104 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %105 = call %struct.TYPE_6__* @get_endpoint(%struct.usb_host_interface* %104, i32 1)
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %142

109:                                              ; preds = %103, %87
  %110 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %111 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %110, i32 0, i32 0
  %112 = load %struct.audioformat*, %struct.audioformat** %8, align 8
  %113 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.audioformat*, %struct.audioformat** %8, align 8
  %116 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %119 = call %struct.TYPE_6__* @get_endpoint(%struct.usb_host_interface* %118, i32 1)
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %123 = call %struct.TYPE_6__* @get_endpoint(%struct.usb_host_interface* %122, i32 1)
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %128 = call %struct.TYPE_6__* @get_endpoint(%struct.usb_host_interface* %127, i32 1)
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @dev_err(i32* %111, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %114, i32 %117, i32 %121, i32 %126, i32 %130)
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %109
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* @USB_ENDPOINT_SYNC_NONE, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  store i32 0, i32* %6, align 4
  br label %267

139:                                              ; preds = %134, %109
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %6, align 4
  br label %267

142:                                              ; preds = %103, %96
  %143 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %144 = call %struct.TYPE_6__* @get_endpoint(%struct.usb_host_interface* %143, i32 1)
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %13, align 4
  %147 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %148 = call %struct.TYPE_6__* @get_endpoint(%struct.usb_host_interface* %147, i32 0)
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @USB_DT_ENDPOINT_AUDIO_SIZE, align 8
  %152 = icmp sge i64 %150, %151
  br i1 %152, label %153, label %210

153:                                              ; preds = %142
  %154 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %155 = call %struct.TYPE_6__* @get_endpoint(%struct.usb_host_interface* %154, i32 0)
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %210

159:                                              ; preds = %153
  %160 = load i32, i32* %12, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %159
  %163 = load i32, i32* %13, align 4
  %164 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %165 = call %struct.TYPE_6__* @get_endpoint(%struct.usb_host_interface* %164, i32 0)
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @USB_DIR_IN, align 4
  %169 = or i32 %167, %168
  %170 = icmp ne i32 %163, %169
  br i1 %170, label %184, label %171

171:                                              ; preds = %162, %159
  %172 = load i32, i32* %12, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %210, label %174

174:                                              ; preds = %171
  %175 = load i32, i32* %13, align 4
  %176 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %177 = call %struct.TYPE_6__* @get_endpoint(%struct.usb_host_interface* %176, i32 0)
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @USB_DIR_IN, align 4
  %181 = xor i32 %180, -1
  %182 = and i32 %179, %181
  %183 = icmp ne i32 %175, %182
  br i1 %183, label %184, label %210

184:                                              ; preds = %174, %162
  %185 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %186 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %185, i32 0, i32 0
  %187 = load %struct.audioformat*, %struct.audioformat** %8, align 8
  %188 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.audioformat*, %struct.audioformat** %8, align 8
  %191 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* %13, align 4
  %195 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %196 = call %struct.TYPE_6__* @get_endpoint(%struct.usb_host_interface* %195, i32 0)
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @dev_err(i32* %186, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %189, i32 %192, i32 %193, i32 %194, i32 %198)
  %200 = load i32, i32* %12, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %184
  %203 = load i32, i32* %14, align 4
  %204 = load i32, i32* @USB_ENDPOINT_SYNC_NONE, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %202
  store i32 0, i32* %6, align 4
  br label %267

207:                                              ; preds = %202, %184
  %208 = load i32, i32* @EINVAL, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %6, align 4
  br label %267

210:                                              ; preds = %174, %171, %153, %142
  %211 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %212 = call %struct.TYPE_6__* @get_endpoint(%struct.usb_host_interface* %211, i32 1)
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @USB_ENDPOINT_USAGE_MASK, align 4
  %216 = and i32 %214, %215
  %217 = load i32, i32* @USB_ENDPOINT_USAGE_IMPLICIT_FB, align 4
  %218 = icmp eq i32 %216, %217
  %219 = zext i1 %218 to i32
  store i32 %219, i32* %15, align 4
  %220 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %221 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %220, i32 0, i32 3
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %226 = load i32, i32* %13, align 4
  %227 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %228 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  %231 = xor i1 %230, true
  %232 = zext i1 %231 to i32
  %233 = load i32, i32* %15, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %210
  %236 = load i32, i32* @SND_USB_ENDPOINT_TYPE_DATA, align 4
  br label %239

237:                                              ; preds = %210
  %238 = load i32, i32* @SND_USB_ENDPOINT_TYPE_SYNC, align 4
  br label %239

239:                                              ; preds = %237, %235
  %240 = phi i32 [ %236, %235 ], [ %238, %237 ]
  %241 = call i32* @snd_usb_add_endpoint(i32 %224, %struct.usb_host_interface* %225, i32 %226, i32 %232, i32 %240)
  %242 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %243 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %242, i32 0, i32 1
  store i32* %241, i32** %243, align 8
  %244 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %245 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = icmp ne i32* %246, null
  br i1 %247, label %259, label %248

248:                                              ; preds = %239
  %249 = load i32, i32* %12, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %248
  %252 = load i32, i32* %14, align 4
  %253 = load i32, i32* @USB_ENDPOINT_SYNC_NONE, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %251
  store i32 0, i32* %6, align 4
  br label %267

256:                                              ; preds = %251, %248
  %257 = load i32, i32* @EINVAL, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %6, align 4
  br label %267

259:                                              ; preds = %239
  %260 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %261 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %264 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %263, i32 0, i32 2
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 0
  store i32* %262, i32** %266, align 8
  store i32 0, i32* %6, align 4
  br label %267

267:                                              ; preds = %259, %256, %255, %207, %206, %139, %138, %86, %67, %61, %56
  %268 = load i32, i32* %6, align 4
  ret i32 %268
}

declare dso_local i32 @set_sync_ep_implicit_fb_quirk(%struct.snd_usb_substream*, %struct.usb_device*, %struct.usb_interface_descriptor*, i32) #1

declare dso_local %struct.TYPE_6__* @get_endpoint(%struct.usb_host_interface*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32* @snd_usb_add_endpoint(i32, %struct.usb_host_interface*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
