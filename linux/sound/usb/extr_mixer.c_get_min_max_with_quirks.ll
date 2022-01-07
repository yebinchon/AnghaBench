; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_get_min_max_with_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_get_min_max_with_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_elem_info = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.snd_kcontrol = type { i32 }

@USB_MIXER_BOOLEAN = common dso_local global i64 0, align 8
@USB_MIXER_INV_BOOLEAN = common dso_local global i64 0, align 8
@MAX_CHANNELS = common dso_local global i32 0, align 4
@UAC_GET_MAX = common dso_local global i32 0, align 4
@UAC_GET_MIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"%d:%d: cannot get min/max values for control %d (id %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UAC_GET_RES = common dso_local global i32 0, align 4
@UAC_SET_RES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_elem_info*, i32, %struct.snd_kcontrol*)* @get_min_max_with_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_min_max_with_quirks(%struct.usb_mixer_elem_info* %0, i32 %1, %struct.snd_kcontrol* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_mixer_elem_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_kcontrol*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.usb_mixer_elem_info* %0, %struct.usb_mixer_elem_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_kcontrol* %2, %struct.snd_kcontrol** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %17 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %19 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  %22 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %23 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %25 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %24, i32 0, i32 2
  store i32 1, i32* %25, align 8
  %26 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %27 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %26, i32 0, i32 4
  store i32 0, i32* %27, align 8
  %28 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %29 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %28, i32 0, i32 3
  store i32 0, i32* %29, align 4
  %30 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %31 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @USB_MIXER_BOOLEAN, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %3
  %36 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %37 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @USB_MIXER_INV_BOOLEAN, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35, %3
  %42 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %43 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %42, i32 0, i32 6
  store i32 1, i32* %43, align 8
  br label %279

44:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  %45 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %46 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %44
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %66, %49
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @MAX_CHANNELS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %56 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = shl i32 1, %58
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %69

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %50

69:                                               ; preds = %62, %50
  br label %70

70:                                               ; preds = %69, %44
  %71 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %72 = load i32, i32* @UAC_GET_MAX, align 4
  %73 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %74 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 8
  %76 = shl i32 %75, 8
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %80 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %79, i32 0, i32 1
  %81 = call i64 @get_ctl_value(%struct.usb_mixer_elem_info* %71, i32 %72, i32 %78, i32* %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %70
  %84 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %85 = load i32, i32* @UAC_GET_MIN, align 4
  %86 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %87 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 8
  %89 = shl i32 %88, 8
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %93 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %92, i32 0, i32 0
  %94 = call i64 @get_ctl_value(%struct.usb_mixer_elem_info* %84, i32 %85, i32 %91, i32* %93)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %124

96:                                               ; preds = %83, %70
  %97 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %98 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %97, i32 0, i32 9
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %104 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %103, i32 0, i32 9
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %108 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %107, i32 0, i32 9
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @snd_usb_ctrl_intf(i32 %112)
  %114 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %115 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %118 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %117, i32 0, i32 9
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @usb_audio_err(i32 %102, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %106, i32 %113, i32 %116, i32 %120)
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %342

124:                                              ; preds = %83
  %125 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %126 = load i32, i32* @UAC_GET_RES, align 4
  %127 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %128 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %127, i32 0, i32 8
  %129 = load i32, i32* %128, align 8
  %130 = shl i32 %129, 8
  %131 = load i32, i32* %8, align 4
  %132 = or i32 %130, %131
  %133 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %134 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %133, i32 0, i32 2
  %135 = call i64 @get_ctl_value(%struct.usb_mixer_elem_info* %125, i32 %126, i32 %132, i32* %134)
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %124
  %138 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %139 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %138, i32 0, i32 2
  store i32 1, i32* %139, align 8
  br label %188

140:                                              ; preds = %124
  %141 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %142 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %165, %140
  %145 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %146 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = icmp sgt i32 %147, 1
  br i1 %148, label %149, label %170

149:                                              ; preds = %144
  %150 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %151 = load i32, i32* @UAC_SET_RES, align 4
  %152 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %153 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %152, i32 0, i32 8
  %154 = load i32, i32* %153, align 8
  %155 = shl i32 %154, 8
  %156 = load i32, i32* %8, align 4
  %157 = or i32 %155, %156
  %158 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %159 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = sdiv i32 %160, 2
  %162 = call i64 @snd_usb_mixer_set_ctl_value(%struct.usb_mixer_elem_info* %150, i32 %151, i32 %157, i32 %161)
  %163 = icmp slt i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %149
  br label %170

165:                                              ; preds = %149
  %166 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %167 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = sdiv i32 %168, 2
  store i32 %169, i32* %167, align 8
  br label %144

170:                                              ; preds = %164, %144
  %171 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %172 = load i32, i32* @UAC_GET_RES, align 4
  %173 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %174 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %173, i32 0, i32 8
  %175 = load i32, i32* %174, align 8
  %176 = shl i32 %175, 8
  %177 = load i32, i32* %8, align 4
  %178 = or i32 %176, %177
  %179 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %180 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %179, i32 0, i32 2
  %181 = call i64 @get_ctl_value(%struct.usb_mixer_elem_info* %171, i32 %172, i32 %178, i32* %180)
  %182 = icmp slt i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %170
  %184 = load i32, i32* %10, align 4
  %185 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %186 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 8
  br label %187

187:                                              ; preds = %183, %170
  br label %188

188:                                              ; preds = %187, %137
  %189 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %190 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %188
  %194 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %195 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %194, i32 0, i32 2
  store i32 1, i32* %195, align 8
  br label %196

196:                                              ; preds = %193, %188
  %197 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %198 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %201 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = add nsw i32 %199, %202
  %204 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %205 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = icmp slt i32 %203, %206
  br i1 %207, label %208, label %276

208:                                              ; preds = %196
  %209 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %210 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  store i32 %211, i32* %11, align 4
  %212 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %213 = load i32, i32* %8, align 4
  %214 = call i64 @get_cur_mix_raw(%struct.usb_mixer_elem_info* %212, i32 %213, i32* %12)
  br label %215

215:                                              ; preds = %266, %208
  %216 = load i32, i32* %12, align 4
  store i32 %216, i32* %13, align 4
  %217 = load i32, i32* %13, align 4
  %218 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %219 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = icmp slt i32 %217, %220
  br i1 %221, label %222, label %228

222:                                              ; preds = %215
  %223 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %224 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* %13, align 4
  %227 = add nsw i32 %226, %225
  store i32 %227, i32* %13, align 4
  br label %234

228:                                              ; preds = %215
  %229 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %230 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* %13, align 4
  %233 = sub nsw i32 %232, %231
  store i32 %233, i32* %13, align 4
  br label %234

234:                                              ; preds = %228, %222
  %235 = load i32, i32* %13, align 4
  %236 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %237 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp slt i32 %235, %238
  br i1 %239, label %257, label %240

240:                                              ; preds = %234
  %241 = load i32, i32* %13, align 4
  %242 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %243 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = icmp sgt i32 %241, %244
  br i1 %245, label %257, label %246

246:                                              ; preds = %240
  %247 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %248 = load i32, i32* %8, align 4
  %249 = load i32, i32* %13, align 4
  %250 = call i64 @snd_usb_set_cur_mix_value(%struct.usb_mixer_elem_info* %247, i32 %248, i32 0, i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %257, label %252

252:                                              ; preds = %246
  %253 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %254 = load i32, i32* %8, align 4
  %255 = call i64 @get_cur_mix_raw(%struct.usb_mixer_elem_info* %253, i32 %254, i32* %14)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %252, %246, %240, %234
  %258 = load i32, i32* %11, align 4
  %259 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %260 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %259, i32 0, i32 2
  store i32 %258, i32* %260, align 8
  br label %271

261:                                              ; preds = %252
  %262 = load i32, i32* %13, align 4
  %263 = load i32, i32* %14, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %266

265:                                              ; preds = %261
  br label %271

266:                                              ; preds = %261
  %267 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %268 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = mul nsw i32 %269, 2
  store i32 %270, i32* %268, align 8
  br label %215

271:                                              ; preds = %265, %257
  %272 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %273 = load i32, i32* %8, align 4
  %274 = load i32, i32* %12, align 4
  %275 = call i64 @snd_usb_set_cur_mix_value(%struct.usb_mixer_elem_info* %272, i32 %273, i32 0, i32 %274)
  br label %276

276:                                              ; preds = %271, %196
  %277 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %278 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %277, i32 0, i32 6
  store i32 1, i32* %278, align 8
  br label %279

279:                                              ; preds = %276, %41
  %280 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %281 = icmp ne %struct.snd_kcontrol* %280, null
  br i1 %281, label %282, label %286

282:                                              ; preds = %279
  %283 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %284 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %285 = call i32 @volume_control_quirks(%struct.usb_mixer_elem_info* %283, %struct.snd_kcontrol* %284)
  br label %286

286:                                              ; preds = %282, %279
  %287 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %288 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %289 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @convert_signed_value(%struct.usb_mixer_elem_info* %287, i32 %290)
  %292 = mul nsw i32 %291, 100
  %293 = sdiv i32 %292, 256
  %294 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %295 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %294, i32 0, i32 3
  store i32 %293, i32* %295, align 4
  %296 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %297 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %298 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @convert_signed_value(%struct.usb_mixer_elem_info* %296, i32 %299)
  %301 = mul nsw i32 %300, 100
  %302 = sdiv i32 %301, 256
  %303 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %304 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %303, i32 0, i32 4
  store i32 %302, i32* %304, align 8
  %305 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %306 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %309 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %308, i32 0, i32 4
  %310 = load i32, i32* %309, align 8
  %311 = icmp sgt i32 %307, %310
  br i1 %311, label %312, label %341

312:                                              ; preds = %286
  %313 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %314 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 4
  %316 = icmp slt i32 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %312
  %318 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %319 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %318, i32 0, i32 4
  store i32 0, i32* %319, align 8
  br label %329

320:                                              ; preds = %312
  %321 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %322 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 4
  %324 = icmp sgt i32 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %320
  %326 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %327 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %326, i32 0, i32 3
  store i32 0, i32* %327, align 4
  br label %328

328:                                              ; preds = %325, %320
  br label %329

329:                                              ; preds = %328, %317
  %330 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %331 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %334 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %333, i32 0, i32 4
  %335 = load i32, i32* %334, align 8
  %336 = icmp sgt i32 %332, %335
  br i1 %336, label %337, label %340

337:                                              ; preds = %329
  %338 = load i32, i32* @EINVAL, align 4
  %339 = sub nsw i32 0, %338
  store i32 %339, i32* %4, align 4
  br label %342

340:                                              ; preds = %329
  br label %341

341:                                              ; preds = %340, %286
  store i32 0, i32* %4, align 4
  br label %342

342:                                              ; preds = %341, %337, %96
  %343 = load i32, i32* %4, align 4
  ret i32 %343
}

declare dso_local i64 @get_ctl_value(%struct.usb_mixer_elem_info*, i32, i32, i32*) #1

declare dso_local i32 @usb_audio_err(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_usb_ctrl_intf(i32) #1

declare dso_local i64 @snd_usb_mixer_set_ctl_value(%struct.usb_mixer_elem_info*, i32, i32, i32) #1

declare dso_local i64 @get_cur_mix_raw(%struct.usb_mixer_elem_info*, i32, i32*) #1

declare dso_local i64 @snd_usb_set_cur_mix_value(%struct.usb_mixer_elem_info*, i32, i32, i32) #1

declare dso_local i32 @volume_control_quirks(%struct.usb_mixer_elem_info*, %struct.snd_kcontrol*) #1

declare dso_local i32 @convert_signed_value(%struct.usb_mixer_elem_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
