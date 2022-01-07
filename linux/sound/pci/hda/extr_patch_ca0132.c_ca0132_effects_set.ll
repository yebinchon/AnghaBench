; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_effects_set.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_effects_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }
%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i64, i64, i64, i64* }

@OUT_EFFECTS_COUNT = common dso_local global i32 0, align 4
@IN_EFFECTS_COUNT = common dso_local global i32 0, align 4
@EFFECT_START_NID = common dso_local global i64 0, align 8
@OUT_EFFECT_START_NID = common dso_local global i64 0, align 8
@OUT_EFFECT_END_NID = common dso_local global i64 0, align 8
@PLAY_ENHANCEMENT = common dso_local global i64 0, align 8
@SURROUND_OUT = common dso_local global i64 0, align 8
@X_BASS = common dso_local global i64 0, align 8
@IN_EFFECT_START_NID = common dso_local global i64 0, align 8
@IN_EFFECT_END_NID = common dso_local global i64 0, align 8
@CRYSTAL_VOICE = common dso_local global i64 0, align 8
@VOICE_FOCUS = common dso_local global i64 0, align 8
@DIGITAL_MIC = common dso_local global i64 0, align 8
@REAR_LINE_IN = common dso_local global i64 0, align 8
@FLOAT_TWO = common dso_local global i32 0, align 4
@FLOAT_ONE = common dso_local global i32 0, align 4
@NOISE_REDUCTION = common dso_local global i64 0, align 8
@FLOAT_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ca0132_effect_set: nid=0x%x, val=%ld\0A\00", align 1
@ca0132_effects = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i64, i64)* @ca0132_effects_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca0132_effects_set(%struct.hda_codec* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ca0132_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 0
  %16 = load %struct.ca0132_spec*, %struct.ca0132_spec** %15, align 8
  store %struct.ca0132_spec* %16, %struct.ca0132_spec** %8, align 8
  %17 = load i32, i32* @OUT_EFFECTS_COUNT, align 4
  %18 = load i32, i32* @IN_EFFECTS_COUNT, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @EFFECT_START_NID, align 8
  %22 = sub nsw i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %3
  store i32 0, i32* %4, align 4
  br label %226

31:                                               ; preds = %26
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @OUT_EFFECT_START_NID, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %31
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @OUT_EFFECT_END_NID, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %35
  %40 = load %struct.ca0132_spec*, %struct.ca0132_spec** %8, align 8
  %41 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %40, i32 0, i32 3
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* @PLAY_ENHANCEMENT, align 8
  %44 = load i64, i64* @EFFECT_START_NID, align 8
  %45 = sub nsw i64 %43, %44
  %46 = getelementptr inbounds i64, i64* %42, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %39
  store i64 0, i64* %7, align 8
  br label %50

50:                                               ; preds = %49, %39
  %51 = load %struct.ca0132_spec*, %struct.ca0132_spec** %8, align 8
  %52 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SURROUND_OUT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @X_BASS, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i64 0, i64* %7, align 8
  br label %61

61:                                               ; preds = %60, %56, %50
  br label %62

62:                                               ; preds = %61, %35, %31
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @IN_EFFECT_START_NID, align 8
  %65 = icmp sge i64 %63, %64
  br i1 %65, label %66, label %192

66:                                               ; preds = %62
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* @IN_EFFECT_END_NID, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %192

70:                                               ; preds = %66
  %71 = load %struct.ca0132_spec*, %struct.ca0132_spec** %8, align 8
  %72 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %71, i32 0, i32 3
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* @CRYSTAL_VOICE, align 8
  %75 = load i64, i64* @EFFECT_START_NID, align 8
  %76 = sub nsw i64 %74, %75
  %77 = getelementptr inbounds i64, i64* %73, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %70
  store i64 0, i64* %7, align 8
  br label %81

81:                                               ; preds = %80, %70
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* @VOICE_FOCUS, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load %struct.ca0132_spec*, %struct.ca0132_spec** %8, align 8
  %87 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @DIGITAL_MIC, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i64 0, i64* %7, align 8
  br label %92

92:                                               ; preds = %91, %85, %81
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* @VOICE_FOCUS, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %135

96:                                               ; preds = %92
  %97 = load %struct.ca0132_spec*, %struct.ca0132_spec** %8, align 8
  %98 = call i64 @ca0132_use_pci_mmio(%struct.ca0132_spec* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %135

100:                                              ; preds = %96
  %101 = load %struct.ca0132_spec*, %struct.ca0132_spec** %8, align 8
  %102 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @REAR_LINE_IN, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %135

106:                                              ; preds = %100
  %107 = load %struct.ca0132_spec*, %struct.ca0132_spec** %8, align 8
  %108 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %107, i32 0, i32 3
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* @CRYSTAL_VOICE, align 8
  %111 = load i64, i64* @EFFECT_START_NID, align 8
  %112 = sub nsw i64 %110, %111
  %113 = getelementptr inbounds i64, i64* %109, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %134

116:                                              ; preds = %106
  %117 = load %struct.ca0132_spec*, %struct.ca0132_spec** %8, align 8
  %118 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %117, i32 0, i32 3
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* @VOICE_FOCUS, align 8
  %121 = load i64, i64* @EFFECT_START_NID, align 8
  %122 = sub nsw i64 %120, %121
  %123 = getelementptr inbounds i64, i64* %119, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %116
  %127 = load i32, i32* @FLOAT_TWO, align 4
  store i32 %127, i32* %10, align 4
  store i64 1, i64* %7, align 8
  br label %130

128:                                              ; preds = %116
  %129 = load i32, i32* @FLOAT_ONE, align 4
  store i32 %129, i32* %10, align 4
  br label %130

130:                                              ; preds = %128, %126
  %131 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @dspio_set_uint_param(%struct.hda_codec* %131, i32 128, i32 0, i32 %132)
  br label %134

134:                                              ; preds = %130, %106
  br label %135

135:                                              ; preds = %134, %100, %96, %92
  %136 = load i64, i64* %6, align 8
  %137 = load i64, i64* @NOISE_REDUCTION, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %180

139:                                              ; preds = %135
  %140 = load %struct.ca0132_spec*, %struct.ca0132_spec** %8, align 8
  %141 = call i64 @ca0132_use_pci_mmio(%struct.ca0132_spec* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %180

143:                                              ; preds = %139
  %144 = load %struct.ca0132_spec*, %struct.ca0132_spec** %8, align 8
  %145 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @REAR_LINE_IN, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %180

149:                                              ; preds = %143
  %150 = load %struct.ca0132_spec*, %struct.ca0132_spec** %8, align 8
  %151 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %150, i32 0, i32 3
  %152 = load i64*, i64** %151, align 8
  %153 = load i64, i64* @CRYSTAL_VOICE, align 8
  %154 = load i64, i64* @EFFECT_START_NID, align 8
  %155 = sub nsw i64 %153, %154
  %156 = getelementptr inbounds i64, i64* %152, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %174

159:                                              ; preds = %149
  %160 = load %struct.ca0132_spec*, %struct.ca0132_spec** %8, align 8
  %161 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %160, i32 0, i32 3
  %162 = load i64*, i64** %161, align 8
  %163 = load i64, i64* @NOISE_REDUCTION, align 8
  %164 = load i64, i64* @EFFECT_START_NID, align 8
  %165 = sub nsw i64 %163, %164
  %166 = getelementptr inbounds i64, i64* %162, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %159
  %170 = load i32, i32* @FLOAT_ONE, align 4
  store i32 %170, i32* %10, align 4
  br label %173

171:                                              ; preds = %159
  %172 = load i32, i32* @FLOAT_ZERO, align 4
  store i32 %172, i32* %10, align 4
  br label %173

173:                                              ; preds = %171, %169
  br label %176

174:                                              ; preds = %149
  %175 = load i32, i32* @FLOAT_ZERO, align 4
  store i32 %175, i32* %10, align 4
  br label %176

176:                                              ; preds = %174, %173
  %177 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @dspio_set_uint_param(%struct.hda_codec* %177, i32 71, i32 0, i32 %178)
  br label %180

180:                                              ; preds = %176, %143, %139, %135
  %181 = load %struct.ca0132_spec*, %struct.ca0132_spec** %8, align 8
  %182 = call i64 @ca0132_use_alt_functions(%struct.ca0132_spec* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %180
  %185 = load %struct.ca0132_spec*, %struct.ca0132_spec** %8, align 8
  %186 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @REAR_LINE_IN, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %184
  store i64 0, i64* %7, align 8
  br label %191

191:                                              ; preds = %190, %184, %180
  br label %192

192:                                              ; preds = %191, %66, %62
  %193 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %194 = load i64, i64* %6, align 8
  %195 = load i64, i64* %7, align 8
  %196 = call i32 @codec_dbg(%struct.hda_codec* %193, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %194, i64 %195)
  %197 = load i64, i64* %7, align 8
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %192
  %200 = load i32, i32* @FLOAT_ZERO, align 4
  br label %203

201:                                              ; preds = %192
  %202 = load i32, i32* @FLOAT_ONE, align 4
  br label %203

203:                                              ; preds = %201, %199
  %204 = phi i32 [ %200, %199 ], [ %202, %201 ]
  store i32 %204, i32* %9, align 4
  %205 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_effects, align 8
  %207 = load i32, i32* %13, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_effects, align 8
  %213 = load i32, i32* %13, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %9, align 4
  %221 = call i32 @dspio_set_uint_param(%struct.hda_codec* %205, i32 %211, i32 %219, i32 %220)
  store i32 %221, i32* %12, align 4
  %222 = load i32, i32* %12, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %203
  store i32 0, i32* %4, align 4
  br label %226

225:                                              ; preds = %203
  store i32 1, i32* %4, align 4
  br label %226

226:                                              ; preds = %225, %224, %30
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

declare dso_local i64 @ca0132_use_pci_mmio(%struct.ca0132_spec*) #1

declare dso_local i32 @dspio_set_uint_param(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i64 @ca0132_use_alt_functions(%struct.ca0132_spec*) #1

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
