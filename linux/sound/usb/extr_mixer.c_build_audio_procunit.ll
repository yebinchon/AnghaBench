; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_build_audio_procunit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_build_audio_procunit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procunit_value_info = type { i32, i8*, i32, i8*, i32, i32, i32 }
%struct.procunit_info = type { i32, i8*, %struct.procunit_value_info*, %struct.procunit_value_info*, i32*, i32 }
%struct.mixer_build = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.uac_processing_unit_descriptor = type { i32, i32, i32* }
%struct.usb_mixer_elem_info = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.snd_kcontrol = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.usbmix_name_map = type { i32 }

@build_audio_procunit.default_value_info = internal global [2 x %struct.procunit_value_info] [%struct.procunit_value_info { i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 129, i8* null, i32 0, i32 0, i32 0 }, %struct.procunit_value_info zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"Switch\00", align 1
@build_audio_procunit.default_info = internal global %struct.procunit_info { i32 0, i8* null, %struct.procunit_value_info* getelementptr inbounds ([2 x %struct.procunit_value_info], [2 x %struct.procunit_value_info]* @build_audio_procunit.default_value_info, i32 0, i32 0), %struct.procunit_value_info* null, i32* null, i32 0 }, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Extension Unit\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Processing Unit\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UAC_UD_MODE_SELECT = common dso_local global i32 0, align 4
@UAC3_UD_MODE_SELECT = common dso_local global i32 0, align 4
@mixer_procunit_ctl = common dso_local global i32 0, align 4
@snd_usb_mixer_elem_free = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"[%d] PU [%s] ch = %d, val = %d/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mixer_build*, i32, i8*, %struct.procunit_info*, i32)* @build_audio_procunit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_audio_procunit(%struct.mixer_build* %0, i32 %1, i8* %2, %struct.procunit_info* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mixer_build*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.procunit_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.uac_processing_unit_descriptor*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.usb_mixer_elem_info*, align 8
  %15 = alloca %struct.snd_kcontrol*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.procunit_info*, align 8
  %22 = alloca %struct.procunit_value_info*, align 8
  %23 = alloca %struct.usbmix_name_map*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  store %struct.mixer_build* %0, %struct.mixer_build** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.procunit_info* %3, %struct.procunit_info** %10, align 8
  store i32 %4, i32* %11, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = bitcast i8* %28 to %struct.uac_processing_unit_descriptor*
  store %struct.uac_processing_unit_descriptor* %29, %struct.uac_processing_unit_descriptor** %12, align 8
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)
  store i8* %33, i8** %24, align 8
  %34 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %12, align 8
  %35 = getelementptr inbounds %struct.uac_processing_unit_descriptor, %struct.uac_processing_unit_descriptor* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %13, align 4
  store i32 0, i32* %16, align 4
  br label %37

37:                                               ; preds = %56, %5
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load %struct.mixer_build*, %struct.mixer_build** %7, align 8
  %43 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %12, align 8
  %44 = getelementptr inbounds %struct.uac_processing_unit_descriptor, %struct.uac_processing_unit_descriptor* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @parse_audio_unit(%struct.mixer_build* %42, i32 %49)
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* %17, align 4
  store i32 %54, i32* %6, align 4
  br label %407

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %16, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %16, align 4
  br label %37

59:                                               ; preds = %37
  %60 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %12, align 8
  %61 = getelementptr inbounds %struct.uac_processing_unit_descriptor, %struct.uac_processing_unit_descriptor* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le16_to_cpu(i32 %62)
  store i32 %63, i32* %19, align 4
  %64 = load %struct.procunit_info*, %struct.procunit_info** %10, align 8
  store %struct.procunit_info* %64, %struct.procunit_info** %21, align 8
  br label %65

65:                                               ; preds = %83, %59
  %66 = load %struct.procunit_info*, %struct.procunit_info** %21, align 8
  %67 = icmp ne %struct.procunit_info* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.procunit_info*, %struct.procunit_info** %21, align 8
  %70 = getelementptr inbounds %struct.procunit_info, %struct.procunit_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br label %73

73:                                               ; preds = %68, %65
  %74 = phi i1 [ false, %65 ], [ %72, %68 ]
  br i1 %74, label %75, label %86

75:                                               ; preds = %73
  %76 = load %struct.procunit_info*, %struct.procunit_info** %21, align 8
  %77 = getelementptr inbounds %struct.procunit_info, %struct.procunit_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %19, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %86

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.procunit_info*, %struct.procunit_info** %21, align 8
  %85 = getelementptr inbounds %struct.procunit_info, %struct.procunit_info* %84, i32 1
  store %struct.procunit_info* %85, %struct.procunit_info** %21, align 8
  br label %65

86:                                               ; preds = %81, %73
  %87 = load %struct.procunit_info*, %struct.procunit_info** %21, align 8
  %88 = icmp ne %struct.procunit_info* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.procunit_info*, %struct.procunit_info** %21, align 8
  %91 = getelementptr inbounds %struct.procunit_info, %struct.procunit_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89, %86
  store %struct.procunit_info* @build_audio_procunit.default_info, %struct.procunit_info** %21, align 8
  br label %95

95:                                               ; preds = %94, %89
  %96 = load %struct.procunit_info*, %struct.procunit_info** %21, align 8
  %97 = getelementptr inbounds %struct.procunit_info, %struct.procunit_info* %96, i32 0, i32 2
  %98 = load %struct.procunit_value_info*, %struct.procunit_value_info** %97, align 8
  store %struct.procunit_value_info* %98, %struct.procunit_value_info** %22, align 8
  br label %99

99:                                               ; preds = %403, %95
  %100 = load %struct.procunit_value_info*, %struct.procunit_value_info** %22, align 8
  %101 = getelementptr inbounds %struct.procunit_value_info, %struct.procunit_value_info* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %406

104:                                              ; preds = %99
  %105 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %12, align 8
  %106 = load %struct.mixer_build*, %struct.mixer_build** %7, align 8
  %107 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %106, i32 0, i32 1
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32* @uac_processing_unit_bmControls(%struct.uac_processing_unit_descriptor* %105, i32 %110)
  store i32* %111, i32** %25, align 8
  %112 = load %struct.mixer_build*, %struct.mixer_build** %7, align 8
  %113 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %112, i32 0, i32 1
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 132
  br i1 %117, label %118, label %137

118:                                              ; preds = %104
  %119 = load i32*, i32** %25, align 8
  %120 = load %struct.procunit_value_info*, %struct.procunit_value_info** %22, align 8
  %121 = getelementptr inbounds %struct.procunit_value_info, %struct.procunit_value_info* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = sdiv i32 %122, 8
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %119, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.procunit_value_info*, %struct.procunit_value_info** %22, align 8
  %128 = getelementptr inbounds %struct.procunit_value_info, %struct.procunit_value_info* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = srem i32 %129, 8
  %131 = sub nsw i32 %130, 1
  %132 = shl i32 1, %131
  %133 = and i32 %126, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %118
  br label %403

136:                                              ; preds = %118
  br label %153

137:                                              ; preds = %104
  %138 = load i32*, i32** %25, align 8
  %139 = load %struct.procunit_value_info*, %struct.procunit_value_info** %22, align 8
  %140 = getelementptr inbounds %struct.procunit_value_info, %struct.procunit_value_info* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = sdiv i32 %141, 8
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %138, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.procunit_value_info*, %struct.procunit_value_info** %22, align 8
  %147 = getelementptr inbounds %struct.procunit_value_info, %struct.procunit_value_info* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @uac_v2v3_control_is_readable(i32 %145, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %137
  br label %403

152:                                              ; preds = %137
  br label %153

153:                                              ; preds = %152, %136
  %154 = load %struct.mixer_build*, %struct.mixer_build** %7, align 8
  %155 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = load %struct.procunit_value_info*, %struct.procunit_value_info** %22, align 8
  %159 = getelementptr inbounds %struct.procunit_value_info, %struct.procunit_value_info* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call %struct.usbmix_name_map* @find_map(i32 %156, i32 %157, i32 %160)
  store %struct.usbmix_name_map* %161, %struct.usbmix_name_map** %23, align 8
  %162 = load %struct.usbmix_name_map*, %struct.usbmix_name_map** %23, align 8
  %163 = call i64 @check_ignored_ctl(%struct.usbmix_name_map* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %153
  br label %403

166:                                              ; preds = %153
  %167 = load i32, i32* @GFP_KERNEL, align 4
  %168 = call %struct.usb_mixer_elem_info* @kzalloc(i32 36, i32 %167)
  store %struct.usb_mixer_elem_info* %168, %struct.usb_mixer_elem_info** %14, align 8
  %169 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %14, align 8
  %170 = icmp ne %struct.usb_mixer_elem_info* %169, null
  br i1 %170, label %174, label %171

171:                                              ; preds = %166
  %172 = load i32, i32* @ENOMEM, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %6, align 4
  br label %407

174:                                              ; preds = %166
  %175 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %14, align 8
  %176 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %175, i32 0, i32 7
  %177 = load %struct.mixer_build*, %struct.mixer_build** %7, align 8
  %178 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %177, i32 0, i32 1
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @snd_usb_mixer_elem_init_std(%struct.TYPE_6__* %176, %struct.TYPE_7__* %179, i32 %180)
  %182 = load %struct.procunit_value_info*, %struct.procunit_value_info** %22, align 8
  %183 = getelementptr inbounds %struct.procunit_value_info, %struct.procunit_value_info* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %14, align 8
  %186 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 4
  %187 = load %struct.procunit_value_info*, %struct.procunit_value_info** %22, align 8
  %188 = getelementptr inbounds %struct.procunit_value_info, %struct.procunit_value_info* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %14, align 8
  %191 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %190, i32 0, i32 8
  store i32 %189, i32* %191, align 4
  %192 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %14, align 8
  %193 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %192, i32 0, i32 1
  store i32 1, i32* %193, align 4
  %194 = load %struct.mixer_build*, %struct.mixer_build** %7, align 8
  %195 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %194, i32 0, i32 1
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp sgt i32 %198, 132
  br i1 %199, label %200, label %217

200:                                              ; preds = %174
  %201 = load i32*, i32** %25, align 8
  %202 = load %struct.procunit_value_info*, %struct.procunit_value_info** %22, align 8
  %203 = getelementptr inbounds %struct.procunit_value_info, %struct.procunit_value_info* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = sdiv i32 %204, 8
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %201, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.procunit_value_info*, %struct.procunit_value_info** %22, align 8
  %210 = getelementptr inbounds %struct.procunit_value_info, %struct.procunit_value_info* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @uac_v2v3_control_is_writeable(i32 %208, i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %200
  %215 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %14, align 8
  %216 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %215, i32 0, i32 2
  store i32 1, i32* %216, align 4
  br label %217

217:                                              ; preds = %214, %200, %174
  %218 = load i32, i32* %19, align 4
  switch i32 %218, label %279 [
    i32 133, label %219
    i32 128, label %270
  ]

219:                                              ; preds = %217
  store i32 0, i32* %26, align 4
  %220 = load %struct.mixer_build*, %struct.mixer_build** %7, align 8
  %221 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %220, i32 0, i32 1
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  switch i32 %224, label %226 [
    i32 132, label %225
    i32 131, label %225
    i32 130, label %234
  ]

225:                                              ; preds = %219, %219
  br label %226

226:                                              ; preds = %219, %225
  %227 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %14, align 8
  %228 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @UAC_UD_MODE_SELECT, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %226
  store i32 1, i32* %26, align 4
  br label %233

233:                                              ; preds = %232, %226
  br label %242

234:                                              ; preds = %219
  %235 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %14, align 8
  %236 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @UAC3_UD_MODE_SELECT, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %234
  store i32 1, i32* %26, align 4
  br label %241

241:                                              ; preds = %240, %234
  br label %242

242:                                              ; preds = %241, %233
  %243 = load i32, i32* %26, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %264

245:                                              ; preds = %242
  %246 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %12, align 8
  %247 = load %struct.mixer_build*, %struct.mixer_build** %7, align 8
  %248 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %247, i32 0, i32 1
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = call i32* @uac_processing_unit_specific(%struct.uac_processing_unit_descriptor* %246, i32 %251)
  store i32* %252, i32** %27, align 8
  %253 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %14, align 8
  %254 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %253, i32 0, i32 3
  store i32 1, i32* %254, align 4
  %255 = load i32*, i32** %27, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 0
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %14, align 8
  %259 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %258, i32 0, i32 4
  store i32 %257, i32* %259, align 4
  %260 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %14, align 8
  %261 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %260, i32 0, i32 5
  store i32 1, i32* %261, align 4
  %262 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %14, align 8
  %263 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %262, i32 0, i32 6
  store i32 1, i32* %263, align 4
  br label %285

264:                                              ; preds = %242
  %265 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %14, align 8
  %266 = load %struct.procunit_value_info*, %struct.procunit_value_info** %22, align 8
  %267 = getelementptr inbounds %struct.procunit_value_info, %struct.procunit_value_info* %266, i32 0, i32 4
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @get_min_max(%struct.usb_mixer_elem_info* %265, i32 %268)
  br label %285

270:                                              ; preds = %217
  %271 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %14, align 8
  %272 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %271, i32 0, i32 3
  store i32 0, i32* %272, align 4
  %273 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %14, align 8
  %274 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %273, i32 0, i32 4
  store i32 5, i32* %274, align 4
  %275 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %14, align 8
  %276 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %275, i32 0, i32 5
  store i32 1, i32* %276, align 4
  %277 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %14, align 8
  %278 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %277, i32 0, i32 6
  store i32 1, i32* %278, align 4
  br label %285

279:                                              ; preds = %217
  %280 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %14, align 8
  %281 = load %struct.procunit_value_info*, %struct.procunit_value_info** %22, align 8
  %282 = getelementptr inbounds %struct.procunit_value_info, %struct.procunit_value_info* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @get_min_max(%struct.usb_mixer_elem_info* %280, i32 %283)
  br label %285

285:                                              ; preds = %279, %270, %264, %245
  %286 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %14, align 8
  %287 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @mixer_procunit_ctl, %struct.usb_mixer_elem_info* %286)
  store %struct.snd_kcontrol* %287, %struct.snd_kcontrol** %15, align 8
  %288 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %15, align 8
  %289 = icmp ne %struct.snd_kcontrol* %288, null
  br i1 %289, label %295, label %290

290:                                              ; preds = %285
  %291 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %14, align 8
  %292 = call i32 @usb_mixer_elem_info_free(%struct.usb_mixer_elem_info* %291)
  %293 = load i32, i32* @ENOMEM, align 4
  %294 = sub nsw i32 0, %293
  store i32 %294, i32* %6, align 4
  br label %407

295:                                              ; preds = %285
  %296 = load i32, i32* @snd_usb_mixer_elem_free, align 4
  %297 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %15, align 8
  %298 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %297, i32 0, i32 1
  store i32 %296, i32* %298, align 4
  %299 = load %struct.usbmix_name_map*, %struct.usbmix_name_map** %23, align 8
  %300 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %15, align 8
  %301 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = call i64 @check_mapped_name(%struct.usbmix_name_map* %299, i32 %303, i32 4)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %295
  br label %365

307:                                              ; preds = %295
  %308 = load %struct.procunit_info*, %struct.procunit_info** %21, align 8
  %309 = getelementptr inbounds %struct.procunit_info, %struct.procunit_info* %308, i32 0, i32 1
  %310 = load i8*, i8** %309, align 8
  %311 = icmp ne i8* %310, null
  br i1 %311, label %312, label %321

312:                                              ; preds = %307
  %313 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %15, align 8
  %314 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.procunit_info*, %struct.procunit_info** %21, align 8
  %318 = getelementptr inbounds %struct.procunit_info, %struct.procunit_info* %317, i32 0, i32 1
  %319 = load i8*, i8** %318, align 8
  %320 = call i32 @strlcpy(i32 %316, i8* %319, i32 4)
  br label %364

321:                                              ; preds = %307
  %322 = load i32, i32* %11, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %332

324:                                              ; preds = %321
  %325 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %12, align 8
  %326 = load %struct.mixer_build*, %struct.mixer_build** %7, align 8
  %327 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %326, i32 0, i32 1
  %328 = load %struct.TYPE_7__*, %struct.TYPE_7__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @uac_extension_unit_iExtension(%struct.uac_processing_unit_descriptor* %325, i32 %330)
  store i32 %331, i32* %18, align 4
  br label %340

332:                                              ; preds = %321
  %333 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %12, align 8
  %334 = load %struct.mixer_build*, %struct.mixer_build** %7, align 8
  %335 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %334, i32 0, i32 1
  %336 = load %struct.TYPE_7__*, %struct.TYPE_7__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @uac_processing_unit_iProcessing(%struct.uac_processing_unit_descriptor* %333, i32 %338)
  store i32 %339, i32* %18, align 4
  br label %340

340:                                              ; preds = %332, %324
  store i32 0, i32* %20, align 4
  %341 = load i32, i32* %18, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %353

343:                                              ; preds = %340
  %344 = load %struct.mixer_build*, %struct.mixer_build** %7, align 8
  %345 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = load i32, i32* %18, align 4
  %348 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %15, align 8
  %349 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @snd_usb_copy_string_desc(i32 %346, i32 %347, i32 %351, i32 4)
  store i32 %352, i32* %20, align 4
  br label %353

353:                                              ; preds = %343, %340
  %354 = load i32, i32* %20, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %363, label %356

356:                                              ; preds = %353
  %357 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %15, align 8
  %358 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = load i8*, i8** %24, align 8
  %362 = call i32 @strlcpy(i32 %360, i8* %361, i32 4)
  br label %363

363:                                              ; preds = %356, %353
  br label %364

364:                                              ; preds = %363, %312
  br label %365

365:                                              ; preds = %364, %306
  %366 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %15, align 8
  %367 = call i32 @append_ctl_name(%struct.snd_kcontrol* %366, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %368 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %15, align 8
  %369 = load %struct.procunit_value_info*, %struct.procunit_value_info** %22, align 8
  %370 = getelementptr inbounds %struct.procunit_value_info, %struct.procunit_value_info* %369, i32 0, i32 3
  %371 = load i8*, i8** %370, align 8
  %372 = call i32 @append_ctl_name(%struct.snd_kcontrol* %368, i8* %371)
  %373 = load %struct.mixer_build*, %struct.mixer_build** %7, align 8
  %374 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %14, align 8
  %377 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %376, i32 0, i32 7
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %15, align 8
  %381 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %14, align 8
  %385 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %14, align 8
  %388 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %387, i32 0, i32 3
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %14, align 8
  %391 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %390, i32 0, i32 4
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @usb_audio_dbg(i32 %375, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %379, i32 %383, i32 %386, i32 %389, i32 %392)
  %394 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %14, align 8
  %395 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %394, i32 0, i32 7
  %396 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %15, align 8
  %397 = call i32 @snd_usb_mixer_add_control(%struct.TYPE_6__* %395, %struct.snd_kcontrol* %396)
  store i32 %397, i32* %17, align 4
  %398 = load i32, i32* %17, align 4
  %399 = icmp slt i32 %398, 0
  br i1 %399, label %400, label %402

400:                                              ; preds = %365
  %401 = load i32, i32* %17, align 4
  store i32 %401, i32* %6, align 4
  br label %407

402:                                              ; preds = %365
  br label %403

403:                                              ; preds = %402, %165, %151, %135
  %404 = load %struct.procunit_value_info*, %struct.procunit_value_info** %22, align 8
  %405 = getelementptr inbounds %struct.procunit_value_info, %struct.procunit_value_info* %404, i32 1
  store %struct.procunit_value_info* %405, %struct.procunit_value_info** %22, align 8
  br label %99

406:                                              ; preds = %99
  store i32 0, i32* %6, align 4
  br label %407

407:                                              ; preds = %406, %400, %290, %171, %53
  %408 = load i32, i32* %6, align 4
  ret i32 %408
}

declare dso_local i32 @parse_audio_unit(%struct.mixer_build*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32* @uac_processing_unit_bmControls(%struct.uac_processing_unit_descriptor*, i32) #1

declare dso_local i32 @uac_v2v3_control_is_readable(i32, i32) #1

declare dso_local %struct.usbmix_name_map* @find_map(i32, i32, i32) #1

declare dso_local i64 @check_ignored_ctl(%struct.usbmix_name_map*) #1

declare dso_local %struct.usb_mixer_elem_info* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_usb_mixer_elem_init_std(%struct.TYPE_6__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @uac_v2v3_control_is_writeable(i32, i32) #1

declare dso_local i32* @uac_processing_unit_specific(%struct.uac_processing_unit_descriptor*, i32) #1

declare dso_local i32 @get_min_max(%struct.usb_mixer_elem_info*, i32) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, %struct.usb_mixer_elem_info*) #1

declare dso_local i32 @usb_mixer_elem_info_free(%struct.usb_mixer_elem_info*) #1

declare dso_local i64 @check_mapped_name(%struct.usbmix_name_map*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @uac_extension_unit_iExtension(%struct.uac_processing_unit_descriptor*, i32) #1

declare dso_local i32 @uac_processing_unit_iProcessing(%struct.uac_processing_unit_descriptor*, i32) #1

declare dso_local i32 @snd_usb_copy_string_desc(i32, i32, i32, i32) #1

declare dso_local i32 @append_ctl_name(%struct.snd_kcontrol*, i8*) #1

declare dso_local i32 @usb_audio_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @snd_usb_mixer_add_control(%struct.TYPE_6__*, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
