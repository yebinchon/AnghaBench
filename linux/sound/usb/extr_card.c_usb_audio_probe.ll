; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_card.c_usb_audio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_card.c_usb_audio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i64, i32, i32, i32, i64, %struct.usb_host_interface*, %struct.usb_interface*, i32, %struct.usb_device* }
%struct.usb_host_interface = type { i32 }
%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.usb_device_id = type { i64 }
%struct.snd_usb_audio_quirk = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@register_mutex = common dso_local global i32 0, align 4
@SNDRV_CARDS = common dso_local global i32 0, align 4
@usb_chip = common dso_local global %struct.snd_usb_audio** null, align 8
@.str = private unnamed_addr constant [68 x i8] c"USB device is in the shutdown state, cannot create a card instance\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@vid = common dso_local global i32* null, align 8
@pid = common dso_local global i32* null, align 8
@enable = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"device (%04x:%04x) is disabled\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"no available usb audio device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@QUIRK_NO_INTERFACE = common dso_local global i32 0, align 4
@usb_audio_driver = common dso_local global i32 0, align 4
@ignore_ctl_error = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @usb_audio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_audio_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.snd_usb_audio_quirk*, align 8
  %8 = alloca %struct.snd_usb_audio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_host_interface*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %15 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %14)
  store %struct.usb_device* %15, %struct.usb_device** %6, align 8
  %16 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %17 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.snd_usb_audio_quirk*
  store %struct.snd_usb_audio_quirk* %19, %struct.snd_usb_audio_quirk** %7, align 8
  %20 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %21 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %20, i32 0, i32 0
  %22 = load %struct.usb_host_interface*, %struct.usb_host_interface** %21, align 8
  %23 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %22, i64 0
  store %struct.usb_host_interface* %23, %struct.usb_host_interface** %11, align 8
  %24 = load %struct.usb_host_interface*, %struct.usb_host_interface** %11, align 8
  %25 = call %struct.TYPE_4__* @get_iface_desc(%struct.usb_host_interface* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %29 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  %33 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %34 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le16_to_cpu(i32 %36)
  %38 = call i32 @USB_ID(i32 %32, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %40 = call i64 @get_alias_id(%struct.usb_device* %39, i32* %13)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %2
  %43 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call %struct.snd_usb_audio_quirk* @get_alias_quirk(%struct.usb_device* %43, i32 %44)
  store %struct.snd_usb_audio_quirk* %45, %struct.snd_usb_audio_quirk** %7, align 8
  br label %46

46:                                               ; preds = %42, %2
  %47 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %7, align 8
  %48 = icmp ne %struct.snd_usb_audio_quirk* %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %7, align 8
  %51 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %7, align 8
  %57 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @ENXIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %342

63:                                               ; preds = %54, %49, %46
  %64 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %65 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %66 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %7, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @snd_usb_apply_boot_quirk(%struct.usb_device* %64, %struct.usb_interface* %65, %struct.snd_usb_audio_quirk* %66, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %3, align 4
  br label %342

73:                                               ; preds = %63
  store %struct.snd_usb_audio* null, %struct.snd_usb_audio** %8, align 8
  %74 = call i32 @mutex_lock(i32* @register_mutex)
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %121, %73
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @SNDRV_CARDS, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %124

79:                                               ; preds = %75
  %80 = load %struct.snd_usb_audio**, %struct.snd_usb_audio*** @usb_chip, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.snd_usb_audio*, %struct.snd_usb_audio** %80, i64 %82
  %84 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %83, align 8
  %85 = icmp ne %struct.snd_usb_audio* %84, null
  br i1 %85, label %86, label %120

86:                                               ; preds = %79
  %87 = load %struct.snd_usb_audio**, %struct.snd_usb_audio*** @usb_chip, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.snd_usb_audio*, %struct.snd_usb_audio** %87, i64 %89
  %91 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %90, align 8
  %92 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %91, i32 0, i32 8
  %93 = load %struct.usb_device*, %struct.usb_device** %92, align 8
  %94 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %95 = icmp eq %struct.usb_device* %93, %94
  br i1 %95, label %96, label %120

96:                                               ; preds = %86
  %97 = load %struct.snd_usb_audio**, %struct.snd_usb_audio*** @usb_chip, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.snd_usb_audio*, %struct.snd_usb_audio** %97, i64 %99
  %101 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %100, align 8
  %102 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %101, i32 0, i32 7
  %103 = call i64 @atomic_read(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %96
  %106 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %107 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %106, i32 0, i32 0
  %108 = call i32 @dev_err(i32* %107, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %109 = load i32, i32* @EIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %10, align 4
  br label %322

111:                                              ; preds = %96
  %112 = load %struct.snd_usb_audio**, %struct.snd_usb_audio*** @usb_chip, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.snd_usb_audio*, %struct.snd_usb_audio** %112, i64 %114
  %116 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %115, align 8
  store %struct.snd_usb_audio* %116, %struct.snd_usb_audio** %8, align 8
  %117 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %118 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %117, i32 0, i32 3
  %119 = call i32 @atomic_inc(i32* %118)
  br label %124

120:                                              ; preds = %86, %79
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %75

124:                                              ; preds = %111, %75
  %125 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %126 = icmp ne %struct.snd_usb_audio* %125, null
  br i1 %126, label %232, label %127

127:                                              ; preds = %124
  store i32 0, i32* %9, align 4
  br label %128

128:                                              ; preds = %219, %127
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @SNDRV_CARDS, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %222

132:                                              ; preds = %128
  %133 = load %struct.snd_usb_audio**, %struct.snd_usb_audio*** @usb_chip, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.snd_usb_audio*, %struct.snd_usb_audio** %133, i64 %135
  %137 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %136, align 8
  %138 = icmp ne %struct.snd_usb_audio* %137, null
  br i1 %138, label %218, label %139

139:                                              ; preds = %132
  %140 = load i32*, i32** @vid, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %155, label %146

146:                                              ; preds = %139
  %147 = load i32*, i32** @vid, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %13, align 4
  %153 = call i32 @USB_ID_VENDOR(i32 %152)
  %154 = icmp eq i32 %151, %153
  br i1 %154, label %155, label %218

155:                                              ; preds = %146, %139
  %156 = load i32*, i32** @pid, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %171, label %162

162:                                              ; preds = %155
  %163 = load i32*, i32** @pid, align 8
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %13, align 4
  %169 = call i32 @USB_ID_PRODUCT(i32 %168)
  %170 = icmp eq i32 %167, %169
  br i1 %170, label %171, label %218

171:                                              ; preds = %162, %155
  %172 = load i64*, i64** @enable, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %172, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %192

178:                                              ; preds = %171
  %179 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %180 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %181 = load i32, i32* %9, align 4
  %182 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %7, align 8
  %183 = load i32, i32* %13, align 4
  %184 = call i32 @snd_usb_audio_create(%struct.usb_interface* %179, %struct.usb_device* %180, i32 %181, %struct.snd_usb_audio_quirk* %182, i32 %183, %struct.snd_usb_audio** %8)
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %10, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %178
  br label %322

188:                                              ; preds = %178
  %189 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %190 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %191 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %190, i32 0, i32 6
  store %struct.usb_interface* %189, %struct.usb_interface** %191, align 8
  br label %222

192:                                              ; preds = %171
  %193 = load i32*, i32** @vid, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, -1
  br i1 %198, label %206, label %199

199:                                              ; preds = %192
  %200 = load i32*, i32** @pid, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, -1
  br i1 %205, label %206, label %216

206:                                              ; preds = %199, %192
  %207 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %208 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %207, i32 0, i32 0
  %209 = load i32, i32* %13, align 4
  %210 = call i32 @USB_ID_VENDOR(i32 %209)
  %211 = load i32, i32* %13, align 4
  %212 = call i32 @USB_ID_PRODUCT(i32 %211)
  %213 = call i32 @dev_info(i32* %208, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %210, i32 %212)
  %214 = load i32, i32* @ENOENT, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %10, align 4
  br label %322

216:                                              ; preds = %199
  br label %217

217:                                              ; preds = %216
  br label %218

218:                                              ; preds = %217, %162, %146, %132
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %9, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %9, align 4
  br label %128

222:                                              ; preds = %188, %128
  %223 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %224 = icmp ne %struct.snd_usb_audio* %223, null
  br i1 %224, label %231, label %225

225:                                              ; preds = %222
  %226 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %227 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %226, i32 0, i32 0
  %228 = call i32 @dev_err(i32* %227, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %229 = load i32, i32* @ENODEV, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %10, align 4
  br label %322

231:                                              ; preds = %222
  br label %232

232:                                              ; preds = %231, %124
  %233 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %234 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %233, i32 0, i32 0
  %235 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %236 = call i32 @dev_set_drvdata(i32* %234, %struct.snd_usb_audio* %235)
  %237 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %238 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %237, i32 0, i32 5
  %239 = load %struct.usb_host_interface*, %struct.usb_host_interface** %238, align 8
  %240 = icmp ne %struct.usb_host_interface* %239, null
  br i1 %240, label %245, label %241

241:                                              ; preds = %232
  %242 = load %struct.usb_host_interface*, %struct.usb_host_interface** %11, align 8
  %243 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %244 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %243, i32 0, i32 5
  store %struct.usb_host_interface* %242, %struct.usb_host_interface** %244, align 8
  br label %245

245:                                              ; preds = %241, %232
  %246 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %247 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %246, i32 0, i32 4
  store i64 0, i64* %247, align 8
  store i32 1, i32* %10, align 4
  %248 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %7, align 8
  %249 = icmp ne %struct.snd_usb_audio_quirk* %248, null
  br i1 %249, label %250, label %265

250:                                              ; preds = %245
  %251 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %7, align 8
  %252 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @QUIRK_NO_INTERFACE, align 4
  %255 = icmp ne i32 %253, %254
  br i1 %255, label %256, label %265

256:                                              ; preds = %250
  %257 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %258 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %259 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %7, align 8
  %260 = call i32 @snd_usb_create_quirk(%struct.snd_usb_audio* %257, %struct.usb_interface* %258, i32* @usb_audio_driver, %struct.snd_usb_audio_quirk* %259)
  store i32 %260, i32* %10, align 4
  %261 = load i32, i32* %10, align 4
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %256
  br label %322

264:                                              ; preds = %256
  br label %265

265:                                              ; preds = %264, %250, %245
  %266 = load i32, i32* %10, align 4
  %267 = icmp sgt i32 %266, 0
  br i1 %267, label %268, label %284

268:                                              ; preds = %265
  %269 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %270 = load i32, i32* %12, align 4
  %271 = call i32 @snd_usb_create_streams(%struct.snd_usb_audio* %269, i32 %270)
  store i32 %271, i32* %10, align 4
  %272 = load i32, i32* %10, align 4
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %268
  br label %322

275:                                              ; preds = %268
  %276 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %277 = load i32, i32* %12, align 4
  %278 = load i32, i32* @ignore_ctl_error, align 4
  %279 = call i32 @snd_usb_create_mixer(%struct.snd_usb_audio* %276, i32 %277, i32 %278)
  store i32 %279, i32* %10, align 4
  %280 = load i32, i32* %10, align 4
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %275
  br label %322

283:                                              ; preds = %275
  br label %284

284:                                              ; preds = %283, %265
  %285 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %286 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @snd_card_register(i32 %287)
  store i32 %288, i32* %10, align 4
  %289 = load i32, i32* %10, align 4
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %284
  br label %322

292:                                              ; preds = %284
  %293 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %7, align 8
  %294 = icmp ne %struct.snd_usb_audio_quirk* %293, null
  br i1 %294, label %295, label %304

295:                                              ; preds = %292
  %296 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %7, align 8
  %297 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %295
  %301 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %302 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %303 = call i32 @snd_media_device_create(%struct.snd_usb_audio* %301, %struct.usb_interface* %302)
  br label %304

304:                                              ; preds = %300, %295, %292
  %305 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %306 = load %struct.snd_usb_audio**, %struct.snd_usb_audio*** @usb_chip, align 8
  %307 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %308 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = getelementptr inbounds %struct.snd_usb_audio*, %struct.snd_usb_audio** %306, i64 %309
  store %struct.snd_usb_audio* %305, %struct.snd_usb_audio** %310, align 8
  %311 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %312 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %312, align 4
  %315 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %316 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %317 = call i32 @usb_set_intfdata(%struct.usb_interface* %315, %struct.snd_usb_audio* %316)
  %318 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %319 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %318, i32 0, i32 3
  %320 = call i32 @atomic_dec(i32* %319)
  %321 = call i32 @mutex_unlock(i32* @register_mutex)
  store i32 0, i32* %3, align 4
  br label %342

322:                                              ; preds = %291, %282, %274, %263, %225, %206, %187, %105
  %323 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %324 = icmp ne %struct.snd_usb_audio* %323, null
  br i1 %324, label %325, label %339

325:                                              ; preds = %322
  %326 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %327 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %326, i32 0, i32 3
  %328 = call i32 @atomic_dec(i32* %327)
  %329 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %330 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %338, label %333

333:                                              ; preds = %325
  %334 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %335 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 8
  %337 = call i32 @snd_card_free(i32 %336)
  br label %338

338:                                              ; preds = %333, %325
  br label %339

339:                                              ; preds = %338, %322
  %340 = call i32 @mutex_unlock(i32* @register_mutex)
  %341 = load i32, i32* %10, align 4
  store i32 %341, i32* %3, align 4
  br label %342

342:                                              ; preds = %339, %304, %71, %60
  %343 = load i32, i32* %3, align 4
  ret i32 %343
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.TYPE_4__* @get_iface_desc(%struct.usb_host_interface*) #1

declare dso_local i32 @USB_ID(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @get_alias_id(%struct.usb_device*, i32*) #1

declare dso_local %struct.snd_usb_audio_quirk* @get_alias_quirk(%struct.usb_device*, i32) #1

declare dso_local i32 @snd_usb_apply_boot_quirk(%struct.usb_device*, %struct.usb_interface*, %struct.snd_usb_audio_quirk*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @USB_ID_VENDOR(i32) #1

declare dso_local i32 @USB_ID_PRODUCT(i32) #1

declare dso_local i32 @snd_usb_audio_create(%struct.usb_interface*, %struct.usb_device*, i32, %struct.snd_usb_audio_quirk*, i32, %struct.snd_usb_audio**) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.snd_usb_audio*) #1

declare dso_local i32 @snd_usb_create_quirk(%struct.snd_usb_audio*, %struct.usb_interface*, i32*, %struct.snd_usb_audio_quirk*) #1

declare dso_local i32 @snd_usb_create_streams(%struct.snd_usb_audio*, i32) #1

declare dso_local i32 @snd_usb_create_mixer(%struct.snd_usb_audio*, i32, i32) #1

declare dso_local i32 @snd_card_register(i32) #1

declare dso_local i32 @snd_media_device_create(%struct.snd_usb_audio*, %struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.snd_usb_audio*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_card_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
