; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_generic_hdmi_build_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_generic_hdmi_build_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32, i32, i32, i32*, i64, i32 }
%struct.hdmi_spec_per_pin = type { i32*, i32 }
%struct.hda_pcm = type { i32, i32 }

@HDA_PCM_TYPE_HDMI = common dso_local global i32 0, align 4
@SNDRV_PCM_INVALID_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @generic_hdmi_build_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_hdmi_build_controls(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hdmi_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hdmi_spec_per_pin*, align 8
  %10 = alloca %struct.hdmi_spec_per_pin*, align 8
  %11 = alloca %struct.hda_pcm*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  %14 = load %struct.hdmi_spec*, %struct.hdmi_spec** %13, align 8
  store %struct.hdmi_spec* %14, %struct.hdmi_spec** %4, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %98, %1
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %18 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %101

21:                                               ; preds = %15
  %22 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.hda_pcm* @get_pcm_rec(%struct.hdmi_spec* %22, i32 %23)
  %25 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %31 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %30, i32 0, i32 5
  %32 = call i32 @set_bit(i32 %29, i32* %31)
  br label %98

33:                                               ; preds = %21
  %34 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @generic_hdmi_build_jack(%struct.hda_codec* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %153

41:                                               ; preds = %33
  %42 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %43 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %48 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %49 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @HDA_PCM_TYPE_HDMI, align 4
  %54 = call i32 @snd_hda_create_dig_out_ctls(%struct.hda_codec* %47, i32 0, i32 %52, i32 %53)
  store i32 %54, i32* %6, align 4
  br label %70

55:                                               ; preds = %41
  %56 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec* %56, i32 %57)
  store %struct.hdmi_spec_per_pin* %58, %struct.hdmi_spec_per_pin** %9, align 8
  %59 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %60 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %9, align 8
  %61 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %9, align 8
  %64 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @HDA_PCM_TYPE_HDMI, align 4
  %69 = call i32 @snd_hda_create_dig_out_ctls(%struct.hda_codec* %59, i32 %62, i32 %67, i32 %68)
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %55, %46
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %153

75:                                               ; preds = %70
  %76 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @snd_hda_spdif_ctls_unassign(%struct.hda_codec* %76, i32 %77)
  %79 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call %struct.hda_pcm* @get_pcm_rec(%struct.hdmi_spec* %79, i32 %80)
  %82 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @SNDRV_PCM_INVALID_DEVICE, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %75
  %88 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @hdmi_create_eld_ctl(%struct.hda_codec* %88, i32 %89, i32 %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %2, align 4
  br label %153

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %96, %75
  br label %98

98:                                               ; preds = %97, %28
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %15

101:                                              ; preds = %15
  store i32 0, i32* %7, align 4
  br label %102

102:                                              ; preds = %114, %101
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %105 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %102
  %109 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec* %109, i32 %110)
  store %struct.hdmi_spec_per_pin* %111, %struct.hdmi_spec_per_pin** %10, align 8
  %112 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %10, align 8
  %113 = call i32 @hdmi_present_sense(%struct.hdmi_spec_per_pin* %112, i32 0)
  br label %114

114:                                              ; preds = %108
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %102

117:                                              ; preds = %102
  store i32 0, i32* %8, align 4
  br label %118

118:                                              ; preds = %149, %117
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %121 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %152

124:                                              ; preds = %118
  %125 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call %struct.hda_pcm* @get_pcm_rec(%struct.hdmi_spec* %125, i32 %126)
  store %struct.hda_pcm* %127, %struct.hda_pcm** %11, align 8
  %128 = load %struct.hda_pcm*, %struct.hda_pcm** %11, align 8
  %129 = icmp ne %struct.hda_pcm* %128, null
  br i1 %129, label %130, label %135

130:                                              ; preds = %124
  %131 = load %struct.hda_pcm*, %struct.hda_pcm** %11, align 8
  %132 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %130, %124
  br label %152

136:                                              ; preds = %130
  %137 = load %struct.hda_pcm*, %struct.hda_pcm** %11, align 8
  %138 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %142 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %141, i32 0, i32 2
  %143 = call i32 @snd_hdac_add_chmap_ctls(i32 %139, i32 %140, i32* %142)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %136
  %147 = load i32, i32* %6, align 4
  store i32 %147, i32* %2, align 4
  br label %153

148:                                              ; preds = %136
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %8, align 4
  br label %118

152:                                              ; preds = %135, %118
  store i32 0, i32* %2, align 4
  br label %153

153:                                              ; preds = %152, %146, %94, %73, %39
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local %struct.hda_pcm* @get_pcm_rec(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @generic_hdmi_build_jack(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_create_dig_out_ctls(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @snd_hda_spdif_ctls_unassign(%struct.hda_codec*, i32) #1

declare dso_local i32 @hdmi_create_eld_ctl(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @hdmi_present_sense(%struct.hdmi_spec_per_pin*, i32) #1

declare dso_local i32 @snd_hdac_add_chmap_ctls(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
