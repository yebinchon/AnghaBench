; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_us16x08.c_snd_us16x08_controls_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_us16x08.c_snd_us16x08_controls_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, i32, i32, i32, i32* }
%struct.usb_mixer_interface = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.usb_mixer_elem_info = type { i32*, i32 }
%struct.snd_us16x08_comp_store = type { %struct.snd_us16x08_comp_store* }
%struct.snd_us16x08_meter_store = type { %struct.snd_us16x08_meter_store* }
%struct.snd_us16x08_eq_store = type { %struct.snd_us16x08_eq_store* }

@snd_us16x08_route_ctl = common dso_local global i32 0, align 4
@SND_US16X08_ID_ROUTE = common dso_local global i32 0, align 4
@USB_MIXER_U8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Line Out Route\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to create route control, err:%d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@master_controls = common dso_local global %struct.TYPE_10__* null, align 8
@channel_controls = common dso_local global %struct.TYPE_10__* null, align 8
@SND_US16X08_MAX_CHANNELS = common dso_local global i32 0, align 4
@eq_controls = common dso_local global %struct.TYPE_10__* null, align 8
@comp_controls = common dso_local global %struct.TYPE_10__* null, align 8
@snd_us16x08_meter_ctl = common dso_local global i32 0, align 4
@SND_US16X08_ID_METER = common dso_local global i32 0, align 4
@USB_MIXER_U16 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Level Meter\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_us16x08_controls_create(%struct.usb_mixer_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_mixer_interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_mixer_elem_info*, align 8
  %8 = alloca %struct.snd_us16x08_comp_store*, align 8
  %9 = alloca %struct.snd_us16x08_meter_store*, align 8
  %10 = alloca %struct.snd_us16x08_eq_store*, align 8
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %3, align 8
  %11 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %12 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %11, i32 0, i32 1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %332

18:                                               ; preds = %1
  %19 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %20 = load i32, i32* @SND_US16X08_ID_ROUTE, align 4
  %21 = load i32, i32* @USB_MIXER_U8, align 4
  %22 = call i32 @add_new_ctl(%struct.usb_mixer_interface* %19, i32* @snd_us16x08_route_ctl, i32 %20, i32 %21, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.snd_us16x08_meter_store* null, i32 0, %struct.usb_mixer_elem_info** %7)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %27 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @usb_audio_dbg(i32 %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %333

32:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %52, %32
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 8
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  br label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 2
  br label %44

44:                                               ; preds = %41, %39
  %45 = phi i32 [ %40, %39 ], [ %43, %41 ]
  %46 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %7, align 8
  %47 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  br label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %33

55:                                               ; preds = %33
  %56 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %7, align 8
  %57 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %56, i32 0, i32 1
  store i32 255, i32* %57, align 8
  %58 = call %struct.snd_us16x08_meter_store* (...) @snd_us16x08_create_comp_store()
  %59 = bitcast %struct.snd_us16x08_meter_store* %58 to %struct.snd_us16x08_comp_store*
  store %struct.snd_us16x08_comp_store* %59, %struct.snd_us16x08_comp_store** %8, align 8
  %60 = load %struct.snd_us16x08_comp_store*, %struct.snd_us16x08_comp_store** %8, align 8
  %61 = icmp ne %struct.snd_us16x08_comp_store* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %333

65:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %126, %65
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** @master_controls, align 8
  %69 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %68)
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %129

71:                                               ; preds = %66
  %72 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** @master_controls, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 5
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** @master_controls, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** @master_controls, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** @master_controls, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** @master_controls, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.snd_us16x08_comp_store*, %struct.snd_us16x08_comp_store** %8, align 8
  %104 = bitcast %struct.snd_us16x08_comp_store* %103 to %struct.snd_us16x08_meter_store*
  %105 = load i32, i32* %4, align 4
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @add_new_ctl(%struct.usb_mixer_interface* %72, i32* %78, i32 %84, i32 %90, i32 %96, i8* %102, %struct.snd_us16x08_meter_store* %104, i32 %107, %struct.usb_mixer_elem_info** %7)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %71
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %2, align 4
  br label %333

113:                                              ; preds = %71
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** @master_controls, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %7, align 8
  %121 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  store i32 %119, i32* %123, align 4
  %124 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %7, align 8
  %125 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %124, i32 0, i32 1
  store i32 1, i32* %125, align 8
  br label %126

126:                                              ; preds = %113
  %127 = load i32, i32* %4, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %4, align 4
  br label %66

129:                                              ; preds = %66
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %198, %129
  %131 = load i32, i32* %4, align 4
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** @channel_controls, align 8
  %133 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %132)
  %134 = icmp slt i32 %131, %133
  br i1 %134, label %135, label %201

135:                                              ; preds = %130
  %136 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** @channel_controls, align 8
  %138 = load i32, i32* %4, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 5
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** @channel_controls, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** @channel_controls, align 8
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** @channel_controls, align 8
  %156 = load i32, i32* %4, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** @channel_controls, align 8
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.snd_us16x08_comp_store*, %struct.snd_us16x08_comp_store** %8, align 8
  %168 = bitcast %struct.snd_us16x08_comp_store* %167 to %struct.snd_us16x08_meter_store*
  %169 = call i32 @add_new_ctl(%struct.usb_mixer_interface* %136, i32* %142, i32 %148, i32 %154, i32 %160, i8* %166, %struct.snd_us16x08_meter_store* %168, i32 0, %struct.usb_mixer_elem_info** %7)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %6, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %135
  %173 = load i32, i32* %6, align 4
  store i32 %173, i32* %2, align 4
  br label %333

174:                                              ; preds = %135
  store i32 0, i32* %5, align 4
  br label %175

175:                                              ; preds = %192, %174
  %176 = load i32, i32* %5, align 4
  %177 = load i32, i32* @SND_US16X08_MAX_CHANNELS, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %195

179:                                              ; preds = %175
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** @channel_controls, align 8
  %181 = load i32, i32* %4, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %7, align 8
  %187 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  store i32 %185, i32* %191, align 4
  br label %192

192:                                              ; preds = %179
  %193 = load i32, i32* %5, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %5, align 4
  br label %175

195:                                              ; preds = %175
  %196 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %7, align 8
  %197 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %196, i32 0, i32 1
  store i32 65535, i32* %197, align 8
  br label %198

198:                                              ; preds = %195
  %199 = load i32, i32* %4, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %4, align 4
  br label %130

201:                                              ; preds = %130
  %202 = call %struct.snd_us16x08_meter_store* (...) @snd_us16x08_create_eq_store()
  %203 = bitcast %struct.snd_us16x08_meter_store* %202 to %struct.snd_us16x08_eq_store*
  store %struct.snd_us16x08_eq_store* %203, %struct.snd_us16x08_eq_store** %10, align 8
  %204 = load %struct.snd_us16x08_eq_store*, %struct.snd_us16x08_eq_store** %10, align 8
  %205 = icmp ne %struct.snd_us16x08_eq_store* %204, null
  br i1 %205, label %209, label %206

206:                                              ; preds = %201
  %207 = load i32, i32* @ENOMEM, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %2, align 4
  br label %333

209:                                              ; preds = %201
  store i32 0, i32* %4, align 4
  br label %210

210:                                              ; preds = %258, %209
  %211 = load i32, i32* %4, align 4
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** @eq_controls, align 8
  %213 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %212)
  %214 = icmp slt i32 %211, %213
  br i1 %214, label %215, label %261

215:                                              ; preds = %210
  %216 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** @eq_controls, align 8
  %218 = load i32, i32* %4, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 5
  %222 = load i32*, i32** %221, align 8
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** @eq_controls, align 8
  %224 = load i32, i32* %4, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** @eq_controls, align 8
  %230 = load i32, i32* %4, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** @eq_controls, align 8
  %236 = load i32, i32* %4, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** @eq_controls, align 8
  %242 = load i32, i32* %4, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 1
  %246 = load i8*, i8** %245, align 8
  %247 = load %struct.snd_us16x08_eq_store*, %struct.snd_us16x08_eq_store** %10, align 8
  %248 = bitcast %struct.snd_us16x08_eq_store* %247 to %struct.snd_us16x08_meter_store*
  %249 = load i32, i32* %4, align 4
  %250 = icmp eq i32 %249, 0
  %251 = zext i1 %250 to i32
  %252 = call i32 @add_new_ctl(%struct.usb_mixer_interface* %216, i32* %222, i32 %228, i32 %234, i32 %240, i8* %246, %struct.snd_us16x08_meter_store* %248, i32 %251, %struct.usb_mixer_elem_info** null)
  store i32 %252, i32* %6, align 4
  %253 = load i32, i32* %6, align 4
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %215
  %256 = load i32, i32* %6, align 4
  store i32 %256, i32* %2, align 4
  br label %333

257:                                              ; preds = %215
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %4, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %4, align 4
  br label %210

261:                                              ; preds = %210
  store i32 0, i32* %4, align 4
  br label %262

262:                                              ; preds = %307, %261
  %263 = load i32, i32* %4, align 4
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** @comp_controls, align 8
  %265 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %264)
  %266 = icmp slt i32 %263, %265
  br i1 %266, label %267, label %310

267:                                              ; preds = %262
  %268 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** @comp_controls, align 8
  %270 = load i32, i32* %4, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 5
  %274 = load i32*, i32** %273, align 8
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** @comp_controls, align 8
  %276 = load i32, i32* %4, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** @comp_controls, align 8
  %282 = load i32, i32* %4, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** @comp_controls, align 8
  %288 = load i32, i32* %4, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** @comp_controls, align 8
  %294 = load i32, i32* %4, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 1
  %298 = load i8*, i8** %297, align 8
  %299 = load %struct.snd_us16x08_comp_store*, %struct.snd_us16x08_comp_store** %8, align 8
  %300 = bitcast %struct.snd_us16x08_comp_store* %299 to %struct.snd_us16x08_meter_store*
  %301 = call i32 @add_new_ctl(%struct.usb_mixer_interface* %268, i32* %274, i32 %280, i32 %286, i32 %292, i8* %298, %struct.snd_us16x08_meter_store* %300, i32 0, %struct.usb_mixer_elem_info** null)
  store i32 %301, i32* %6, align 4
  %302 = load i32, i32* %6, align 4
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %267
  %305 = load i32, i32* %6, align 4
  store i32 %305, i32* %2, align 4
  br label %333

306:                                              ; preds = %267
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %4, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %4, align 4
  br label %262

310:                                              ; preds = %262
  %311 = call %struct.snd_us16x08_meter_store* (...) @snd_us16x08_create_meter_store()
  store %struct.snd_us16x08_meter_store* %311, %struct.snd_us16x08_meter_store** %9, align 8
  %312 = load %struct.snd_us16x08_meter_store*, %struct.snd_us16x08_meter_store** %9, align 8
  %313 = icmp ne %struct.snd_us16x08_meter_store* %312, null
  br i1 %313, label %317, label %314

314:                                              ; preds = %310
  %315 = load i32, i32* @ENOMEM, align 4
  %316 = sub nsw i32 0, %315
  store i32 %316, i32* %2, align 4
  br label %333

317:                                              ; preds = %310
  %318 = load %struct.snd_us16x08_comp_store*, %struct.snd_us16x08_comp_store** %8, align 8
  %319 = bitcast %struct.snd_us16x08_comp_store* %318 to %struct.snd_us16x08_meter_store*
  %320 = load %struct.snd_us16x08_meter_store*, %struct.snd_us16x08_meter_store** %9, align 8
  %321 = getelementptr inbounds %struct.snd_us16x08_meter_store, %struct.snd_us16x08_meter_store* %320, i32 0, i32 0
  store %struct.snd_us16x08_meter_store* %319, %struct.snd_us16x08_meter_store** %321, align 8
  %322 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %323 = load i32, i32* @SND_US16X08_ID_METER, align 4
  %324 = load i32, i32* @USB_MIXER_U16, align 4
  %325 = load %struct.snd_us16x08_meter_store*, %struct.snd_us16x08_meter_store** %9, align 8
  %326 = call i32 @add_new_ctl(%struct.usb_mixer_interface* %322, i32* @snd_us16x08_meter_ctl, i32 %323, i32 %324, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), %struct.snd_us16x08_meter_store* %325, i32 1, %struct.usb_mixer_elem_info** null)
  store i32 %326, i32* %6, align 4
  %327 = load i32, i32* %6, align 4
  %328 = icmp slt i32 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %317
  %330 = load i32, i32* %6, align 4
  store i32 %330, i32* %2, align 4
  br label %333

331:                                              ; preds = %317
  br label %332

332:                                              ; preds = %331, %1
  store i32 0, i32* %2, align 4
  br label %333

333:                                              ; preds = %332, %329, %314, %304, %255, %206, %172, %111, %62, %25
  %334 = load i32, i32* %2, align 4
  ret i32 %334
}

declare dso_local i32 @add_new_ctl(%struct.usb_mixer_interface*, i32*, i32, i32, i32, i8*, %struct.snd_us16x08_meter_store*, i32, %struct.usb_mixer_elem_info**) #1

declare dso_local i32 @usb_audio_dbg(i32, i8*, i32) #1

declare dso_local %struct.snd_us16x08_meter_store* @snd_us16x08_create_comp_store(...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_10__*) #1

declare dso_local %struct.snd_us16x08_meter_store* @snd_us16x08_create_eq_store(...) #1

declare dso_local %struct.snd_us16x08_meter_store* @snd_us16x08_create_meter_store(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
