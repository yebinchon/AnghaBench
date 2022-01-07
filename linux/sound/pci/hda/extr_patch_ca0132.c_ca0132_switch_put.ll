; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_switch_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_switch_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i64*, i64*, i64*, i64*, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [38 x i8] c"ca0132_switch_put: nid=0x%x, val=%ld\0A\00", align 1
@VNODE_START_NID = common dso_local global i64 0, align 8
@VNODE_END_NID = common dso_local global i64 0, align 8
@PLAY_ENHANCEMENT = common dso_local global i64 0, align 8
@EFFECT_START_NID = common dso_local global i64 0, align 8
@CRYSTAL_VOICE = common dso_local global i64 0, align 8
@OUT_EFFECT_START_NID = common dso_local global i64 0, align 8
@OUT_EFFECT_END_NID = common dso_local global i64 0, align 8
@IN_EFFECT_START_NID = common dso_local global i64 0, align 8
@IN_EFFECT_END_NID = common dso_local global i64 0, align 8
@REAR_LINE_IN = common dso_local global i64 0, align 8
@DIGITAL_MIC = common dso_local global i64 0, align 8
@ZXR_HEADPHONE_GAIN = common dso_local global i64 0, align 8
@HEADPHONE_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @ca0132_switch_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca0132_switch_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.ca0132_spec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.hda_codec* %12, %struct.hda_codec** %5, align 8
  %13 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 0
  %15 = load %struct.ca0132_spec*, %struct.ca0132_spec** %14, align 8
  store %struct.ca0132_spec* %15, %struct.ca0132_spec** %6, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %17 = call i64 @get_amp_nid(%struct.snd_kcontrol* %16)
  store i64 %17, i64* %7, align 8
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %19 = call i32 @get_amp_channels(%struct.snd_kcontrol* %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %21 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  store i64* %24, i64** %9, align 8
  store i32 1, i32* %10, align 4
  %25 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64*, i64** %9, align 8
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @codec_dbg(%struct.hda_codec* %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %28)
  %30 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %31 = call i32 @snd_hda_power_up(%struct.hda_codec* %30)
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @VNODE_START_NID, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %75

35:                                               ; preds = %2
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @VNODE_END_NID, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %75

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load i64*, i64** %9, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  %47 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @VNODE_START_NID, align 8
  %51 = sub nsw i64 %49, %50
  %52 = getelementptr inbounds i64, i64* %48, i64 %51
  store i64 %45, i64* %52, align 8
  %53 = load i64*, i64** %9, align 8
  %54 = getelementptr inbounds i64, i64* %53, i32 1
  store i64* %54, i64** %9, align 8
  br label %55

55:                                               ; preds = %43, %39
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, 2
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i64*, i64** %9, align 8
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  %63 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @VNODE_START_NID, align 8
  %67 = sub nsw i64 %65, %66
  %68 = getelementptr inbounds i64, i64* %64, i64 %67
  store i64 %61, i64* %68, align 8
  %69 = load i64*, i64** %9, align 8
  %70 = getelementptr inbounds i64, i64* %69, i32 1
  store i64* %70, i64** %9, align 8
  br label %71

71:                                               ; preds = %59, %55
  %72 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %73 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %74 = call i32 @ca0132_vnode_switch_set(%struct.snd_kcontrol* %72, %struct.snd_ctl_elem_value* %73)
  store i32 %74, i32* %10, align 4
  br label %201

75:                                               ; preds = %35, %2
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* @PLAY_ENHANCEMENT, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %75
  %80 = load i64*, i64** %9, align 8
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  %83 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %82, i32 0, i32 2
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* @EFFECT_START_NID, align 8
  %87 = sub nsw i64 %85, %86
  %88 = getelementptr inbounds i64, i64* %84, i64 %87
  store i64 %81, i64* %88, align 8
  %89 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %90 = call i32 @ca0132_pe_switch_set(%struct.hda_codec* %89)
  store i32 %90, i32* %10, align 4
  br label %201

91:                                               ; preds = %75
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* @CRYSTAL_VOICE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %91
  %96 = load i64*, i64** %9, align 8
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  %99 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %98, i32 0, i32 2
  %100 = load i64*, i64** %99, align 8
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* @EFFECT_START_NID, align 8
  %103 = sub nsw i64 %101, %102
  %104 = getelementptr inbounds i64, i64* %100, i64 %103
  store i64 %97, i64* %104, align 8
  %105 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %106 = call i32 @ca0132_cvoice_switch_set(%struct.hda_codec* %105)
  store i32 %106, i32* %10, align 4
  br label %201

107:                                              ; preds = %91
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* @OUT_EFFECT_START_NID, align 8
  %110 = icmp sge i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i64, i64* %7, align 8
  %113 = load i64, i64* @OUT_EFFECT_END_NID, align 8
  %114 = icmp slt i64 %112, %113
  br i1 %114, label %123, label %115

115:                                              ; preds = %111, %107
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* @IN_EFFECT_START_NID, align 8
  %118 = icmp sge i64 %116, %117
  br i1 %118, label %119, label %138

119:                                              ; preds = %115
  %120 = load i64, i64* %7, align 8
  %121 = load i64, i64* @IN_EFFECT_END_NID, align 8
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %119, %111
  %124 = load i64*, i64** %9, align 8
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  %127 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %126, i32 0, i32 2
  %128 = load i64*, i64** %127, align 8
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* @EFFECT_START_NID, align 8
  %131 = sub nsw i64 %129, %130
  %132 = getelementptr inbounds i64, i64* %128, i64 %131
  store i64 %125, i64* %132, align 8
  %133 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %134 = load i64, i64* %7, align 8
  %135 = load i64*, i64** %9, align 8
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @ca0132_effects_set(%struct.hda_codec* %133, i64 %134, i64 %136)
  store i32 %137, i32* %10, align 4
  br label %201

138:                                              ; preds = %119, %115
  %139 = load i64, i64* %7, align 8
  %140 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  %141 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %140, i32 0, i32 3
  %142 = load i64*, i64** %141, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %139, %144
  br i1 %145, label %146, label %179

146:                                              ; preds = %138
  %147 = load i64*, i64** %9, align 8
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  %150 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %149, i32 0, i32 4
  store i64 %148, i64* %150, align 8
  %151 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  %152 = call i64 @ca0132_use_alt_functions(%struct.ca0132_spec* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %146
  %155 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  %156 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @REAR_LINE_IN, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %154
  %161 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %162 = load i64*, i64** %9, align 8
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @ca0132_mic_boost_set(%struct.hda_codec* %161, i64 %163)
  store i32 %164, i32* %10, align 4
  br label %165

165:                                              ; preds = %160, %154
  br label %178

166:                                              ; preds = %146
  %167 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  %168 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %167, i32 0, i32 6
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @DIGITAL_MIC, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %166
  %173 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %174 = load i64*, i64** %9, align 8
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @ca0132_mic_boost_set(%struct.hda_codec* %173, i64 %175)
  store i32 %176, i32* %10, align 4
  br label %177

177:                                              ; preds = %172, %166
  br label %178

178:                                              ; preds = %177, %165
  br label %201

179:                                              ; preds = %138
  %180 = load i64, i64* %7, align 8
  %181 = load i64, i64* @ZXR_HEADPHONE_GAIN, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %200

183:                                              ; preds = %179
  %184 = load i64*, i64** %9, align 8
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  %187 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %186, i32 0, i32 7
  store i64 %185, i64* %187, align 8
  %188 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  %189 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %188, i32 0, i32 8
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @HEADPHONE_OUT, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %183
  %194 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %195 = load i64*, i64** %9, align 8
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @zxr_headphone_gain_set(%struct.hda_codec* %194, i64 %196)
  store i32 %197, i32* %10, align 4
  br label %199

198:                                              ; preds = %183
  store i32 0, i32* %10, align 4
  br label %199

199:                                              ; preds = %198, %193
  br label %201

200:                                              ; preds = %179
  br label %201

201:                                              ; preds = %200, %199, %178, %123, %95, %79, %71
  %202 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %203 = call i32 @snd_hda_power_down(%struct.hda_codec* %202)
  %204 = load i32, i32* %10, align 4
  ret i32 %204
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i64 @get_amp_nid(%struct.snd_kcontrol*) #1

declare dso_local i32 @get_amp_channels(%struct.snd_kcontrol*) #1

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, i64, i64) #1

declare dso_local i32 @snd_hda_power_up(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_vnode_switch_set(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

declare dso_local i32 @ca0132_pe_switch_set(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_cvoice_switch_set(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_effects_set(%struct.hda_codec*, i64, i64) #1

declare dso_local i64 @ca0132_use_alt_functions(%struct.ca0132_spec*) #1

declare dso_local i32 @ca0132_mic_boost_set(%struct.hda_codec*, i64) #1

declare dso_local i32 @zxr_headphone_gain_set(%struct.hda_codec*, i64) #1

declare dso_local i32 @snd_hda_power_down(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
