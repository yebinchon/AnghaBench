; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_parse_output_paths.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_parse_output_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i64, i64, i32*, i64, i32, i32*, %struct.auto_pin_cfg }
%struct.auto_pin_cfg = type { i64, i64, i64, i64, i64*, i64*, i64* }
%struct.nid_path = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"==> lo_type=%d, wired=%d, mio=%d, badness=0x%x\0A\00", align 1
@AUTO_PIN_HP_OUT = common dso_local global i64 0, align 8
@AUTO_PIN_SPEAKER_OUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"==> restoring best_cfg\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"==> Best config: lo_type=%d, wired=%d, mio=%d\0A\00", align 1
@HDA_OUTPUT = common dso_local global i32 0, align 4
@TLV_DB_SCALE_MUTE = common dso_local global i32 0, align 4
@SNDRV_CTL_TLVO_DB_SCALE_MUTE_AND_STEP = common dso_local global i64 0, align 8
@PIN_HP = common dso_local global i32 0, align 4
@PIN_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @parse_output_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_output_paths(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_gen_spec*, align 8
  %5 = alloca %struct.auto_pin_cfg*, align 8
  %6 = alloca %struct.auto_pin_cfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nid_path*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %16 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 0
  %18 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %17, align 8
  store %struct.hda_gen_spec* %18, %struct.hda_gen_spec** %4, align 8
  %19 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %20 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %19, i32 0, i32 6
  store %struct.auto_pin_cfg* %20, %struct.auto_pin_cfg** %5, align 8
  %21 = load i32, i32* @INT_MAX, align 4
  store i32 %21, i32* %8, align 4
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.auto_pin_cfg* @kmalloc(i32 56, i32 %22)
  store %struct.auto_pin_cfg* %23, %struct.auto_pin_cfg** %6, align 8
  %24 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %25 = icmp ne %struct.auto_pin_cfg* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %338

29:                                               ; preds = %1
  %30 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %31 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %32 = bitcast %struct.auto_pin_cfg* %30 to i8*
  %33 = bitcast %struct.auto_pin_cfg* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 56, i1 false)
  br label %34

34:                                               ; preds = %147, %102, %86, %78, %29
  %35 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @fill_and_eval_dacs(%struct.hda_codec* %35, i32 %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %43 = call i32 @kfree(%struct.auto_pin_cfg* %42)
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %2, align 4
  br label %338

45:                                               ; preds = %34
  %46 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %47 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 (i8*, ...) @debug_badness(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %48, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %54 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %55 = call i32 @debug_show_configs(%struct.hda_codec* %53, %struct.auto_pin_cfg* %54)
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %45
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %8, align 4
  %61 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %62 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %63 = bitcast %struct.auto_pin_cfg* %61 to i8*
  %64 = bitcast %struct.auto_pin_cfg* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 56, i1 false)
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %59, %45
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  br label %182

71:                                               ; preds = %67
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  br label %34

79:                                               ; preds = %71
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  br label %34

87:                                               ; preds = %79
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %182

91:                                               ; preds = %87
  store i32 1, i32* %14, align 4
  %92 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %93 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %136

96:                                               ; preds = %91
  %97 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %98 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @AUTO_PIN_HP_OUT, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %136

102:                                              ; preds = %96
  %103 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %104 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %107 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %106, i32 0, i32 2
  store i64 %105, i64* %107, align 8
  %108 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %109 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %108, i32 0, i32 5
  %110 = load i64*, i64** %109, align 8
  %111 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %112 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %111, i32 0, i32 6
  %113 = load i64*, i64** %112, align 8
  %114 = call i32 @memcpy(i64* %110, i64* %113, i32 8)
  %115 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %116 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %119 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %118, i32 0, i32 3
  store i64 %117, i64* %119, align 8
  %120 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %121 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %120, i32 0, i32 6
  %122 = load i64*, i64** %121, align 8
  %123 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %124 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %123, i32 0, i32 4
  %125 = load i64*, i64** %124, align 8
  %126 = call i32 @memcpy(i64* %122, i64* %125, i32 8)
  %127 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %128 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %127, i32 0, i32 1
  store i64 0, i64* %128, align 8
  %129 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %130 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %129, i32 0, i32 4
  %131 = load i64*, i64** %130, align 8
  %132 = call i32 @memset(i64* %131, i32 0, i32 8)
  %133 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %134 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %135 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  store i32 1, i32* %10, align 4
  br label %34

136:                                              ; preds = %96, %91
  %137 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %138 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp sgt i64 %139, 0
  br i1 %140, label %141, label %181

141:                                              ; preds = %136
  %142 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %143 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %181

147:                                              ; preds = %141
  %148 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %149 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %152 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %151, i32 0, i32 1
  store i64 %150, i64* %152, align 8
  %153 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %154 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %153, i32 0, i32 4
  %155 = load i64*, i64** %154, align 8
  %156 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %157 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %156, i32 0, i32 6
  %158 = load i64*, i64** %157, align 8
  %159 = call i32 @memcpy(i64* %155, i64* %158, i32 8)
  %160 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %161 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %164 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %163, i32 0, i32 3
  store i64 %162, i64* %164, align 8
  %165 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %166 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %165, i32 0, i32 6
  %167 = load i64*, i64** %166, align 8
  %168 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %169 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %168, i32 0, i32 5
  %170 = load i64*, i64** %169, align 8
  %171 = call i32 @memcpy(i64* %167, i64* %170, i32 8)
  %172 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %173 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %172, i32 0, i32 2
  store i64 0, i64* %173, align 8
  %174 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %175 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %174, i32 0, i32 5
  %176 = load i64*, i64** %175, align 8
  %177 = call i32 @memset(i64* %176, i32 0, i32 8)
  %178 = load i64, i64* @AUTO_PIN_HP_OUT, align 8
  %179 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %180 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %179, i32 0, i32 0
  store i64 %178, i64* %180, align 8
  store i32 1, i32* %10, align 4
  br label %34

181:                                              ; preds = %141, %136
  br label %182

182:                                              ; preds = %181, %90, %70
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %182
  %186 = call i32 (i8*, ...) @debug_badness(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %187 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %188 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %189 = bitcast %struct.auto_pin_cfg* %187 to i8*
  %190 = bitcast %struct.auto_pin_cfg* %188 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %189, i8* align 8 %190, i64 56, i1 false)
  %191 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %192 = load i32, i32* %12, align 4
  %193 = load i32, i32* %13, align 4
  %194 = call i32 @fill_and_eval_dacs(%struct.hda_codec* %191, i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %185, %182
  %196 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %197 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* %13, align 4
  %201 = call i32 (i8*, ...) @debug_badness(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %198, i32 %199, i32 %200)
  %202 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %203 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %204 = call i32 @debug_show_configs(%struct.hda_codec* %202, %struct.auto_pin_cfg* %203)
  %205 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %206 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %205, i32 0, i32 6
  %207 = load i64*, i64** %206, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %257

211:                                              ; preds = %195
  %212 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %213 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %214 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %213, i32 0, i32 5
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = call %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec* %212, i32 %217)
  store %struct.nid_path* %218, %struct.nid_path** %15, align 8
  %219 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %220 = icmp ne %struct.nid_path* %219, null
  br i1 %220, label %221, label %227

221:                                              ; preds = %211
  %222 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %223 = load %struct.nid_path*, %struct.nid_path** %15, align 8
  %224 = call i32 @look_for_out_vol_nid(%struct.hda_codec* %222, %struct.nid_path* %223)
  %225 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %226 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %225, i32 0, i32 4
  store i32 %224, i32* %226, align 8
  br label %227

227:                                              ; preds = %221, %211
  %228 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %229 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %256

232:                                              ; preds = %227
  %233 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %234 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %235 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @HDA_OUTPUT, align 4
  %238 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %239 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %238, i32 0, i32 2
  %240 = load i32*, i32** %239, align 8
  %241 = call i32 @snd_hda_set_vmaster_tlv(%struct.hda_codec* %233, i32 %236, i32 %237, i32* %240)
  %242 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %243 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %242, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %255

246:                                              ; preds = %232
  %247 = load i32, i32* @TLV_DB_SCALE_MUTE, align 4
  %248 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %249 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %248, i32 0, i32 2
  %250 = load i32*, i32** %249, align 8
  %251 = load i64, i64* @SNDRV_CTL_TLVO_DB_SCALE_MUTE_AND_STEP, align 8
  %252 = getelementptr inbounds i32, i32* %250, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = or i32 %253, %247
  store i32 %254, i32* %252, align 4
  br label %255

255:                                              ; preds = %246, %232
  br label %256

256:                                              ; preds = %255, %227
  br label %257

257:                                              ; preds = %256, %195
  %258 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %259 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %268, label %262

262:                                              ; preds = %257
  %263 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %264 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @AUTO_PIN_HP_OUT, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %270

268:                                              ; preds = %262, %257
  %269 = load i32, i32* @PIN_HP, align 4
  store i32 %269, i32* %7, align 4
  br label %272

270:                                              ; preds = %262
  %271 = load i32, i32* @PIN_OUT, align 4
  store i32 %271, i32* %7, align 4
  br label %272

272:                                              ; preds = %270, %268
  %273 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %274 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %275 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %274, i32 0, i32 3
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %278 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %277, i32 0, i32 6
  %279 = load i64*, i64** %278, align 8
  %280 = load i32, i32* %7, align 4
  %281 = call i32 @set_pin_targets(%struct.hda_codec* %273, i64 %276, i64* %279, i32 %280)
  %282 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %283 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @AUTO_PIN_HP_OUT, align 8
  %286 = icmp ne i64 %284, %285
  br i1 %286, label %287, label %297

287:                                              ; preds = %272
  %288 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %289 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %290 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %293 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %292, i32 0, i32 5
  %294 = load i64*, i64** %293, align 8
  %295 = load i32, i32* @PIN_HP, align 4
  %296 = call i32 @set_pin_targets(%struct.hda_codec* %288, i64 %291, i64* %294, i32 %295)
  br label %297

297:                                              ; preds = %287, %272
  %298 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %299 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %302 = icmp ne i64 %300, %301
  br i1 %302, label %303, label %323

303:                                              ; preds = %297
  %304 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %305 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %303
  %309 = load i32, i32* @PIN_HP, align 4
  br label %312

310:                                              ; preds = %303
  %311 = load i32, i32* @PIN_OUT, align 4
  br label %312

312:                                              ; preds = %310, %308
  %313 = phi i32 [ %309, %308 ], [ %311, %310 ]
  store i32 %313, i32* %7, align 4
  %314 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %315 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %316 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %315, i32 0, i32 1
  %317 = load i64, i64* %316, align 8
  %318 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %319 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %318, i32 0, i32 4
  %320 = load i64*, i64** %319, align 8
  %321 = load i32, i32* %7, align 4
  %322 = call i32 @set_pin_targets(%struct.hda_codec* %314, i64 %317, i64* %320, i32 %321)
  br label %323

323:                                              ; preds = %312, %297
  %324 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %325 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %335

328:                                              ; preds = %323
  %329 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %330 = call i32 @indep_hp_possible(%struct.hda_codec* %329)
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %335, label %332

332:                                              ; preds = %328
  %333 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %334 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %333, i32 0, i32 0
  store i64 0, i64* %334, align 8
  br label %335

335:                                              ; preds = %332, %328, %323
  %336 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %337 = call i32 @kfree(%struct.auto_pin_cfg* %336)
  store i32 0, i32* %2, align 4
  br label %338

338:                                              ; preds = %335, %41, %26
  %339 = load i32, i32* %2, align 4
  ret i32 %339
}

declare dso_local %struct.auto_pin_cfg* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fill_and_eval_dacs(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @kfree(%struct.auto_pin_cfg*) #1

declare dso_local i32 @debug_badness(i8*, ...) #1

declare dso_local i32 @debug_show_configs(%struct.hda_codec*, %struct.auto_pin_cfg*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec*, i32) #1

declare dso_local i32 @look_for_out_vol_nid(%struct.hda_codec*, %struct.nid_path*) #1

declare dso_local i32 @snd_hda_set_vmaster_tlv(%struct.hda_codec*, i32, i32, i32*) #1

declare dso_local i32 @set_pin_targets(%struct.hda_codec*, i64, i64*, i32) #1

declare dso_local i32 @indep_hp_possible(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
