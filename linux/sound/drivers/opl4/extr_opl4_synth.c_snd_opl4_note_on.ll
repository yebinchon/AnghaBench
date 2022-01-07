; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl4/extr_opl4_synth.c_snd_opl4_note_on.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl4/extr_opl4_synth.c_snd_opl4_note_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opl4_region_ptr = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.opl4_sound }
%struct.opl4_sound = type { i32, i32 }
%struct.snd_midi_channel = type { i32, i64 }
%struct.snd_opl4 = type { i32, i32 }
%struct.opl4_voice = type { i32, i32, i32, i32, i64, %struct.opl4_sound*, i32, i32, %struct.snd_midi_channel*, i32 }

@snd_yrw801_regions = common dso_local global %struct.opl4_region_ptr* null, align 8
@OPL4_TONE_NUMBER_BIT8 = common dso_local global i32 0, align 4
@OPL4_REG_F_NUMBER = common dso_local global i64 0, align 8
@OPL4_REG_TONE_NUMBER = common dso_local global i64 0, align 8
@OPL4_LFO_RESET_BIT = common dso_local global i32 0, align 4
@OPL4_LEVEL_DIRECT_BIT = common dso_local global i32 0, align 4
@OPL4_KEY_ON_BIT = common dso_local global i32 0, align 4
@OPL4_REG_MISC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_opl4_note_on(i8* %0, i32 %1, i32 %2, %struct.snd_midi_channel* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_midi_channel*, align 8
  %9 = alloca %struct.snd_opl4*, align 8
  %10 = alloca %struct.opl4_region_ptr*, align 8
  %11 = alloca [2 x %struct.opl4_voice*], align 16
  %12 = alloca [2 x %struct.opl4_sound*], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.snd_midi_channel* %3, %struct.snd_midi_channel** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.snd_opl4*
  store %struct.snd_opl4* %17, %struct.snd_opl4** %9, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %8, align 8
  %19 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %28

23:                                               ; preds = %4
  %24 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %8, align 8
  %25 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 127
  br label %28

28:                                               ; preds = %23, %22
  %29 = phi i32 [ 128, %22 ], [ %27, %23 ]
  store i32 %29, i32* %14, align 4
  %30 = load %struct.opl4_region_ptr*, %struct.opl4_region_ptr** @snd_yrw801_regions, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.opl4_region_ptr, %struct.opl4_region_ptr* %30, i64 %32
  store %struct.opl4_region_ptr* %33, %struct.opl4_region_ptr** %10, align 8
  store i32 0, i32* %14, align 4
  br label %34

34:                                               ; preds = %79, %28
  %35 = load i32, i32* %14, align 4
  %36 = load %struct.opl4_region_ptr*, %struct.opl4_region_ptr** %10, align 8
  %37 = getelementptr inbounds %struct.opl4_region_ptr, %struct.opl4_region_ptr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %82

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.opl4_region_ptr*, %struct.opl4_region_ptr** %10, align 8
  %43 = getelementptr inbounds %struct.opl4_region_ptr, %struct.opl4_region_ptr* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %41, %49
  br i1 %50, label %51, label %78

51:                                               ; preds = %40
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.opl4_region_ptr*, %struct.opl4_region_ptr** %10, align 8
  %54 = getelementptr inbounds %struct.opl4_region_ptr, %struct.opl4_region_ptr* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp sle i32 %52, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %51
  %63 = load %struct.opl4_region_ptr*, %struct.opl4_region_ptr** %10, align 8
  %64 = getelementptr inbounds %struct.opl4_region_ptr, %struct.opl4_region_ptr* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [2 x %struct.opl4_sound*], [2 x %struct.opl4_sound*]* %12, i64 0, i64 %71
  store %struct.opl4_sound* %69, %struct.opl4_sound** %72, align 8
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  %75 = icmp sge i32 %74, 2
  br i1 %75, label %76, label %77

76:                                               ; preds = %62
  br label %82

77:                                               ; preds = %62
  br label %78

78:                                               ; preds = %77, %51, %40
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %14, align 4
  br label %34

82:                                               ; preds = %76, %34
  %83 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %84 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %83, i32 0, i32 0
  %85 = load i64, i64* %15, align 8
  %86 = call i32 @spin_lock_irqsave(i32* %84, i64 %85)
  store i32 0, i32* %14, align 4
  br label %87

87:                                               ; preds = %133, %82
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %136

91:                                               ; preds = %87
  %92 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %93 = call %struct.opl4_voice* @snd_opl4_get_voice(%struct.snd_opl4* %92)
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %95
  store %struct.opl4_voice* %93, %struct.opl4_voice** %96, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %98
  %100 = load %struct.opl4_voice*, %struct.opl4_voice** %99, align 8
  %101 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %100, i32 0, i32 9
  %102 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %103 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %102, i32 0, i32 1
  %104 = call i32 @list_move_tail(i32* %101, i32* %103)
  %105 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %8, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %107
  %109 = load %struct.opl4_voice*, %struct.opl4_voice** %108, align 8
  %110 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %109, i32 0, i32 8
  store %struct.snd_midi_channel* %105, %struct.snd_midi_channel** %110, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %113
  %115 = load %struct.opl4_voice*, %struct.opl4_voice** %114, align 8
  %116 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %115, i32 0, i32 0
  store i32 %111, i32* %116, align 8
  %117 = load i32, i32* %7, align 4
  %118 = and i32 %117, 127
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %120
  %122 = load %struct.opl4_voice*, %struct.opl4_voice** %121, align 8
  %123 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %122, i32 0, i32 1
  store i32 %118, i32* %123, align 4
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [2 x %struct.opl4_sound*], [2 x %struct.opl4_sound*]* %12, i64 0, i64 %125
  %127 = load %struct.opl4_sound*, %struct.opl4_sound** %126, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %129
  %131 = load %struct.opl4_voice*, %struct.opl4_voice** %130, align 8
  %132 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %131, i32 0, i32 5
  store %struct.opl4_sound* %127, %struct.opl4_sound** %132, align 8
  br label %133

133:                                              ; preds = %91
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %14, align 4
  br label %87

136:                                              ; preds = %87
  store i32 0, i32* %14, align 4
  br label %137

137:                                              ; preds = %189, %136
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %13, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %192

141:                                              ; preds = %137
  %142 = load i32, i32* %14, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [2 x %struct.opl4_sound*], [2 x %struct.opl4_sound*]* %12, i64 0, i64 %143
  %145 = load %struct.opl4_sound*, %struct.opl4_sound** %144, align 8
  %146 = getelementptr inbounds %struct.opl4_sound, %struct.opl4_sound* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = ashr i32 %147, 8
  %149 = load i32, i32* @OPL4_TONE_NUMBER_BIT8, align 4
  %150 = and i32 %148, %149
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %152
  %154 = load %struct.opl4_voice*, %struct.opl4_voice** %153, align 8
  %155 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %154, i32 0, i32 2
  store i32 %150, i32* %155, align 8
  %156 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %157 = load i64, i64* @OPL4_REG_F_NUMBER, align 8
  %158 = load i32, i32* %14, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %159
  %161 = load %struct.opl4_voice*, %struct.opl4_voice** %160, align 8
  %162 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %157, %163
  %165 = load i32, i32* %14, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %166
  %168 = load %struct.opl4_voice*, %struct.opl4_voice** %167, align 8
  %169 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @snd_opl4_write(%struct.snd_opl4* %156, i64 %164, i32 %170)
  %172 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %173 = load i64, i64* @OPL4_REG_TONE_NUMBER, align 8
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %175
  %177 = load %struct.opl4_voice*, %struct.opl4_voice** %176, align 8
  %178 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %177, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %173, %179
  %181 = load i32, i32* %14, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [2 x %struct.opl4_sound*], [2 x %struct.opl4_sound*]* %12, i64 0, i64 %182
  %184 = load %struct.opl4_sound*, %struct.opl4_sound** %183, align 8
  %185 = getelementptr inbounds %struct.opl4_sound, %struct.opl4_sound* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = and i32 %186, 255
  %188 = call i32 @snd_opl4_write(%struct.snd_opl4* %172, i64 %180, i32 %187)
  br label %189

189:                                              ; preds = %141
  %190 = load i32, i32* %14, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %14, align 4
  br label %137

192:                                              ; preds = %137
  store i32 0, i32* %14, align 4
  br label %193

193:                                              ; preds = %228, %192
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* %13, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %231

197:                                              ; preds = %193
  %198 = load i32, i32* @OPL4_LFO_RESET_BIT, align 4
  %199 = load i32, i32* %14, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %200
  %202 = load %struct.opl4_voice*, %struct.opl4_voice** %201, align 8
  %203 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %202, i32 0, i32 3
  store i32 %198, i32* %203, align 4
  %204 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %205 = load i32, i32* %14, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %206
  %208 = load %struct.opl4_voice*, %struct.opl4_voice** %207, align 8
  %209 = call i32 @snd_opl4_update_pan(%struct.snd_opl4* %204, %struct.opl4_voice* %208)
  %210 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %211 = load i32, i32* %14, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %212
  %214 = load %struct.opl4_voice*, %struct.opl4_voice** %213, align 8
  %215 = call i32 @snd_opl4_update_pitch(%struct.snd_opl4* %210, %struct.opl4_voice* %214)
  %216 = load i32, i32* @OPL4_LEVEL_DIRECT_BIT, align 4
  %217 = load i32, i32* %14, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %218
  %220 = load %struct.opl4_voice*, %struct.opl4_voice** %219, align 8
  %221 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %220, i32 0, i32 7
  store i32 %216, i32* %221, align 4
  %222 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %223 = load i32, i32* %14, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %224
  %226 = load %struct.opl4_voice*, %struct.opl4_voice** %225, align 8
  %227 = call i32 @snd_opl4_update_volume(%struct.snd_opl4* %222, %struct.opl4_voice* %226)
  br label %228

228:                                              ; preds = %197
  %229 = load i32, i32* %14, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %14, align 4
  br label %193

231:                                              ; preds = %193
  %232 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %233 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %232, i32 0, i32 0
  %234 = load i64, i64* %15, align 8
  %235 = call i32 @spin_unlock_irqrestore(i32* %233, i64 %234)
  %236 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %237 = call i32 @snd_opl4_wait_for_wave_headers(%struct.snd_opl4* %236)
  %238 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %239 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %238, i32 0, i32 0
  %240 = load i64, i64* %15, align 8
  %241 = call i32 @spin_lock_irqsave(i32* %239, i64 %240)
  store i32 0, i32* %14, align 4
  br label %242

242:                                              ; preds = %272, %231
  %243 = load i32, i32* %14, align 4
  %244 = load i32, i32* %13, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %275

246:                                              ; preds = %242
  %247 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %248 = load i32, i32* %14, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %249
  %251 = load %struct.opl4_voice*, %struct.opl4_voice** %250, align 8
  %252 = call i32 @snd_opl4_update_tone_parameters(%struct.snd_opl4* %247, %struct.opl4_voice* %251)
  %253 = load i32, i32* %14, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %254
  %256 = load %struct.opl4_voice*, %struct.opl4_voice** %255, align 8
  %257 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %256, i32 0, i32 5
  %258 = load %struct.opl4_sound*, %struct.opl4_sound** %257, align 8
  %259 = getelementptr inbounds %struct.opl4_sound, %struct.opl4_sound* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %14, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %262
  %264 = load %struct.opl4_voice*, %struct.opl4_voice** %263, align 8
  %265 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %264, i32 0, i32 6
  store i32 %260, i32* %265, align 8
  %266 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %267 = load i32, i32* %14, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %268
  %270 = load %struct.opl4_voice*, %struct.opl4_voice** %269, align 8
  %271 = call i32 @snd_opl4_update_vibrato_depth(%struct.snd_opl4* %266, %struct.opl4_voice* %270)
  br label %272

272:                                              ; preds = %246
  %273 = load i32, i32* %14, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %14, align 4
  br label %242

275:                                              ; preds = %242
  store i32 0, i32* %14, align 4
  br label %276

276:                                              ; preds = %311, %275
  %277 = load i32, i32* %14, align 4
  %278 = load i32, i32* %13, align 4
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %314

280:                                              ; preds = %276
  %281 = load i32, i32* %14, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %282
  %284 = load %struct.opl4_voice*, %struct.opl4_voice** %283, align 8
  %285 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = and i32 %286, 31
  %288 = load i32, i32* @OPL4_KEY_ON_BIT, align 4
  %289 = or i32 %287, %288
  %290 = load i32, i32* %14, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %291
  %293 = load %struct.opl4_voice*, %struct.opl4_voice** %292, align 8
  %294 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %293, i32 0, i32 3
  store i32 %289, i32* %294, align 4
  %295 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %296 = load i64, i64* @OPL4_REG_MISC, align 8
  %297 = load i32, i32* %14, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %298
  %300 = load %struct.opl4_voice*, %struct.opl4_voice** %299, align 8
  %301 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %300, i32 0, i32 4
  %302 = load i64, i64* %301, align 8
  %303 = add nsw i64 %296, %302
  %304 = load i32, i32* %14, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %305
  %307 = load %struct.opl4_voice*, %struct.opl4_voice** %306, align 8
  %308 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @snd_opl4_write(%struct.snd_opl4* %295, i64 %303, i32 %309)
  br label %311

311:                                              ; preds = %280
  %312 = load i32, i32* %14, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %14, align 4
  br label %276

314:                                              ; preds = %276
  %315 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %316 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %315, i32 0, i32 0
  %317 = load i64, i64* %15, align 8
  %318 = call i32 @spin_unlock_irqrestore(i32* %316, i64 %317)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.opl4_voice* @snd_opl4_get_voice(%struct.snd_opl4*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @snd_opl4_write(%struct.snd_opl4*, i64, i32) #1

declare dso_local i32 @snd_opl4_update_pan(%struct.snd_opl4*, %struct.opl4_voice*) #1

declare dso_local i32 @snd_opl4_update_pitch(%struct.snd_opl4*, %struct.opl4_voice*) #1

declare dso_local i32 @snd_opl4_update_volume(%struct.snd_opl4*, %struct.opl4_voice*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_opl4_wait_for_wave_headers(%struct.snd_opl4*) #1

declare dso_local i32 @snd_opl4_update_tone_parameters(%struct.snd_opl4*, %struct.opl4_voice*) #1

declare dso_local i32 @snd_opl4_update_vibrato_depth(%struct.snd_opl4*, %struct.opl4_voice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
