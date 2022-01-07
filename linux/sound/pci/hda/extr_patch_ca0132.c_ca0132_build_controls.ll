; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_build_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_build_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32 }
%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32, i64, i32, i64, i32, %struct.TYPE_3__, i32, i32*, i32* }
%struct.TYPE_3__ = type { i32 }

@HDA_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Master Playback Volume\00", align 1
@ca0132_alt_slave_pfxs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Playback Volume\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Master Playback Switch\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Playback Switch\00", align 1
@OUT_EFFECTS_COUNT = common dso_local global i32 0, align 4
@IN_EFFECTS_COUNT = common dso_local global i32 0, align 4
@ECHO_CANCELLATION = common dso_local global i32 0, align 4
@IN_EFFECT_START_NID = common dso_local global i32 0, align 4
@ca0132_effects = common dso_local global %struct.TYPE_4__* null, align 8
@PLAY_ENHANCEMENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"Enable OutFX\00", align 1
@CRYSTAL_VOICE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"Enable InFX\00", align 1
@XBASS_XOVER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"X-Bass Crossover\00", align 1
@EFX_DIR_OUT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"PlayEnhancement\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"CrystalVoice\00", align 1
@QUIRK_ZXR = common dso_local global i64 0, align 8
@QUIRK_AE5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @ca0132_build_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca0132_build_controls(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.ca0132_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 0
  %11 = load %struct.ca0132_spec*, %struct.ca0132_spec** %10, align 8
  store %struct.ca0132_spec* %11, %struct.ca0132_spec** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %33, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %15 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %12
  %19 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %20 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %21 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %20, i32 0, i32 8
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @snd_hda_add_new_ctls(%struct.hda_codec* %19, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %2, align 4
  br label %350

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %12

36:                                               ; preds = %12
  %37 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %38 = call i64 @ca0132_use_alt_functions(%struct.ca0132_spec* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %36
  %41 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %42 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %43 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %42, i32 0, i32 7
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @HDA_OUTPUT, align 4
  %48 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %49 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @snd_hda_set_vmaster_tlv(%struct.hda_codec* %41, i32 %46, i32 %47, i32 %50)
  %52 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %53 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %54 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @ca0132_alt_slave_pfxs, align 4
  %57 = call i32 @snd_hda_add_vmaster(%struct.hda_codec* %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %59 = load i32, i32* @ca0132_alt_slave_pfxs, align 4
  %60 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %61 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = call i32 @__snd_hda_add_vmaster(%struct.hda_codec* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 1, i32* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %40
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %2, align 4
  br label %350

68:                                               ; preds = %40
  br label %69

69:                                               ; preds = %68, %36
  %70 = load i32, i32* @OUT_EFFECTS_COUNT, align 4
  %71 = load i32, i32* @IN_EFFECTS_COUNT, align 4
  %72 = add nsw i32 %70, %71
  store i32 %72, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %117, %69
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %120

77:                                               ; preds = %73
  %78 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %79 = call i64 @ca0132_use_pci_mmio(%struct.ca0132_spec* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %77
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @ECHO_CANCELLATION, align 4
  %84 = load i32, i32* @IN_EFFECT_START_NID, align 4
  %85 = sub nsw i32 %83, %84
  %86 = load i32, i32* @OUT_EFFECTS_COUNT, align 4
  %87 = add nsw i32 %85, %86
  %88 = icmp eq i32 %82, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %117

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %77
  %92 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ca0132_effects, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ca0132_effects, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ca0132_effects, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @add_fx_switch(%struct.hda_codec* %92, i32 %98, i8* %104, i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %91
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %2, align 4
  br label %350

116:                                              ; preds = %91
  br label %117

117:                                              ; preds = %116, %89
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %73

120:                                              ; preds = %73
  %121 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %122 = call i64 @ca0132_use_alt_controls(%struct.ca0132_spec* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %200

124:                                              ; preds = %120
  %125 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %126 = call i32 @ca0132_alt_add_svm_enum(%struct.hda_codec* %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %2, align 4
  br label %350

131:                                              ; preds = %124
  %132 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %133 = call i32 @add_ca0132_alt_eq_presets(%struct.hda_codec* %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %2, align 4
  br label %350

138:                                              ; preds = %131
  %139 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %140 = load i32, i32* @PLAY_ENHANCEMENT, align 4
  %141 = call i32 @add_fx_switch(%struct.hda_codec* %139, i32 %140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %2, align 4
  br label %350

146:                                              ; preds = %138
  %147 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %148 = load i32, i32* @CRYSTAL_VOICE, align 4
  %149 = call i32 @add_fx_switch(%struct.hda_codec* %147, i32 %148, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 1)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = load i32, i32* %8, align 4
  store i32 %153, i32* %2, align 4
  br label %350

154:                                              ; preds = %146
  %155 = load i32, i32* @OUT_EFFECTS_COUNT, align 4
  %156 = sub nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %157

157:                                              ; preds = %187, %154
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* %7, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %190

161:                                              ; preds = %157
  %162 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ca0132_effects, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ca0132_effects, align 8
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ca0132_effects, align 8
  %176 = load i32, i32* %5, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @ca0132_alt_add_effect_slider(%struct.hda_codec* %162, i32 %168, i8* %174, i32 %180)
  store i32 %181, i32* %8, align 4
  %182 = load i32, i32* %8, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %161
  %185 = load i32, i32* %8, align 4
  store i32 %185, i32* %2, align 4
  br label %350

186:                                              ; preds = %161
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %5, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %5, align 4
  br label %157

190:                                              ; preds = %157
  %191 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %192 = load i32, i32* @XBASS_XOVER, align 4
  %193 = load i32, i32* @EFX_DIR_OUT, align 4
  %194 = call i32 @ca0132_alt_add_effect_slider(%struct.hda_codec* %191, i32 %192, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %193)
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* %8, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %190
  %198 = load i32, i32* %8, align 4
  store i32 %198, i32* %2, align 4
  br label %350

199:                                              ; preds = %190
  br label %217

200:                                              ; preds = %120
  %201 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %202 = load i32, i32* @PLAY_ENHANCEMENT, align 4
  %203 = call i32 @add_fx_switch(%struct.hda_codec* %201, i32 %202, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 0)
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* %8, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %200
  %207 = load i32, i32* %8, align 4
  store i32 %207, i32* %2, align 4
  br label %350

208:                                              ; preds = %200
  %209 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %210 = load i32, i32* @CRYSTAL_VOICE, align 4
  %211 = call i32 @add_fx_switch(%struct.hda_codec* %209, i32 %210, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 1)
  store i32 %211, i32* %8, align 4
  %212 = load i32, i32* %8, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %208
  %215 = load i32, i32* %8, align 4
  store i32 %215, i32* %2, align 4
  br label %350

216:                                              ; preds = %208
  br label %217

217:                                              ; preds = %216, %199
  %218 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %219 = call i32 @add_voicefx(%struct.hda_codec* %218)
  store i32 %219, i32* %8, align 4
  %220 = load i32, i32* %8, align 4
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %217
  %223 = load i32, i32* %8, align 4
  store i32 %223, i32* %2, align 4
  br label %350

224:                                              ; preds = %217
  %225 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %226 = call i64 @ca0132_use_alt_functions(%struct.ca0132_spec* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %256

228:                                              ; preds = %224
  %229 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %230 = call i32 @ca0132_alt_add_output_enum(%struct.hda_codec* %229)
  store i32 %230, i32* %8, align 4
  %231 = load i32, i32* %8, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %228
  %234 = load i32, i32* %8, align 4
  store i32 %234, i32* %2, align 4
  br label %350

235:                                              ; preds = %228
  %236 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %237 = call i32 @ca0132_alt_add_mic_boost_enum(%struct.hda_codec* %236)
  store i32 %237, i32* %8, align 4
  %238 = load i32, i32* %8, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %235
  %241 = load i32, i32* %8, align 4
  store i32 %241, i32* %2, align 4
  br label %350

242:                                              ; preds = %235
  %243 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %244 = call i64 @ca0132_quirk(%struct.ca0132_spec* %243)
  %245 = load i64, i64* @QUIRK_ZXR, align 8
  %246 = icmp ne i64 %244, %245
  br i1 %246, label %247, label %255

247:                                              ; preds = %242
  %248 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %249 = call i32 @ca0132_alt_add_input_enum(%struct.hda_codec* %248)
  store i32 %249, i32* %8, align 4
  %250 = load i32, i32* %8, align 4
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %247
  %253 = load i32, i32* %8, align 4
  store i32 %253, i32* %2, align 4
  br label %350

254:                                              ; preds = %247
  br label %255

255:                                              ; preds = %254, %242
  br label %256

256:                                              ; preds = %255, %224
  %257 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %258 = call i64 @ca0132_quirk(%struct.ca0132_spec* %257)
  %259 = load i64, i64* @QUIRK_AE5, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %276

261:                                              ; preds = %256
  %262 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %263 = call i32 @ae5_add_headphone_gain_enum(%struct.hda_codec* %262)
  store i32 %263, i32* %8, align 4
  %264 = load i32, i32* %8, align 4
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %261
  %267 = load i32, i32* %8, align 4
  store i32 %267, i32* %2, align 4
  br label %350

268:                                              ; preds = %261
  %269 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %270 = call i32 @ae5_add_sound_filter_enum(%struct.hda_codec* %269)
  store i32 %270, i32* %8, align 4
  %271 = load i32, i32* %8, align 4
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %268
  %274 = load i32, i32* %8, align 4
  store i32 %274, i32* %2, align 4
  br label %350

275:                                              ; preds = %268
  br label %276

276:                                              ; preds = %275, %256
  %277 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %278 = call i64 @ca0132_quirk(%struct.ca0132_spec* %277)
  %279 = load i64, i64* @QUIRK_ZXR, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %289

281:                                              ; preds = %276
  %282 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %283 = call i32 @zxr_add_headphone_gain_switch(%struct.hda_codec* %282)
  store i32 %283, i32* %8, align 4
  %284 = load i32, i32* %8, align 4
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %281
  %287 = load i32, i32* %8, align 4
  store i32 %287, i32* %2, align 4
  br label %350

288:                                              ; preds = %281
  br label %289

289:                                              ; preds = %288, %276
  %290 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %291 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %292 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %291, i32 0, i32 4
  %293 = call i32 @snd_hda_jack_add_kctls(%struct.hda_codec* %290, i32* %292)
  store i32 %293, i32* %8, align 4
  %294 = load i32, i32* %8, align 4
  %295 = icmp slt i32 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %289
  %297 = load i32, i32* %8, align 4
  store i32 %297, i32* %2, align 4
  br label %350

298:                                              ; preds = %289
  %299 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %300 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %299, i32 0, i32 3
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %326

303:                                              ; preds = %298
  %304 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %305 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %306 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %305, i32 0, i32 3
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %309 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %308, i32 0, i32 3
  %310 = load i64, i64* %309, align 8
  %311 = call i32 @snd_hda_create_spdif_out_ctls(%struct.hda_codec* %304, i64 %307, i64 %310)
  store i32 %311, i32* %8, align 4
  %312 = load i32, i32* %8, align 4
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %303
  %315 = load i32, i32* %8, align 4
  store i32 %315, i32* %2, align 4
  br label %350

316:                                              ; preds = %303
  %317 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %318 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %319 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %318, i32 0, i32 2
  %320 = call i32 @snd_hda_create_spdif_share_sw(%struct.hda_codec* %317, i32* %319)
  store i32 %320, i32* %8, align 4
  %321 = load i32, i32* %8, align 4
  %322 = icmp slt i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %316
  %324 = load i32, i32* %8, align 4
  store i32 %324, i32* %2, align 4
  br label %350

325:                                              ; preds = %316
  br label %326

326:                                              ; preds = %325, %298
  %327 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %328 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %342

331:                                              ; preds = %326
  %332 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %333 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %334 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %333, i32 0, i32 1
  %335 = load i64, i64* %334, align 8
  %336 = call i32 @snd_hda_create_spdif_in_ctls(%struct.hda_codec* %332, i64 %335)
  store i32 %336, i32* %8, align 4
  %337 = load i32, i32* %8, align 4
  %338 = icmp slt i32 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %331
  %340 = load i32, i32* %8, align 4
  store i32 %340, i32* %2, align 4
  br label %350

341:                                              ; preds = %331
  br label %342

342:                                              ; preds = %341, %326
  %343 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %344 = call i64 @ca0132_use_alt_functions(%struct.ca0132_spec* %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %342
  %347 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %348 = call i32 @ca0132_alt_add_chmap_ctls(%struct.hda_codec* %347)
  br label %349

349:                                              ; preds = %346, %342
  store i32 0, i32* %2, align 4
  br label %350

350:                                              ; preds = %349, %339, %323, %314, %296, %286, %273, %266, %252, %240, %233, %222, %214, %206, %197, %184, %152, %144, %136, %129, %114, %66, %30
  %351 = load i32, i32* %2, align 4
  ret i32 %351
}

declare dso_local i32 @snd_hda_add_new_ctls(%struct.hda_codec*, i32) #1

declare dso_local i64 @ca0132_use_alt_functions(%struct.ca0132_spec*) #1

declare dso_local i32 @snd_hda_set_vmaster_tlv(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_add_vmaster(%struct.hda_codec*, i8*, i32, i32, i8*) #1

declare dso_local i32 @__snd_hda_add_vmaster(%struct.hda_codec*, i8*, i32*, i32, i8*, i32, i32*) #1

declare dso_local i64 @ca0132_use_pci_mmio(%struct.ca0132_spec*) #1

declare dso_local i32 @add_fx_switch(%struct.hda_codec*, i32, i8*, i32) #1

declare dso_local i64 @ca0132_use_alt_controls(%struct.ca0132_spec*) #1

declare dso_local i32 @ca0132_alt_add_svm_enum(%struct.hda_codec*) #1

declare dso_local i32 @add_ca0132_alt_eq_presets(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_alt_add_effect_slider(%struct.hda_codec*, i32, i8*, i32) #1

declare dso_local i32 @add_voicefx(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_alt_add_output_enum(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_alt_add_mic_boost_enum(%struct.hda_codec*) #1

declare dso_local i64 @ca0132_quirk(%struct.ca0132_spec*) #1

declare dso_local i32 @ca0132_alt_add_input_enum(%struct.hda_codec*) #1

declare dso_local i32 @ae5_add_headphone_gain_enum(%struct.hda_codec*) #1

declare dso_local i32 @ae5_add_sound_filter_enum(%struct.hda_codec*) #1

declare dso_local i32 @zxr_add_headphone_gain_switch(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_jack_add_kctls(%struct.hda_codec*, i32*) #1

declare dso_local i32 @snd_hda_create_spdif_out_ctls(%struct.hda_codec*, i64, i64) #1

declare dso_local i32 @snd_hda_create_spdif_share_sw(%struct.hda_codec*, i32*) #1

declare dso_local i32 @snd_hda_create_spdif_in_ctls(%struct.hda_codec*, i64) #1

declare dso_local i32 @ca0132_alt_add_chmap_ctls(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
