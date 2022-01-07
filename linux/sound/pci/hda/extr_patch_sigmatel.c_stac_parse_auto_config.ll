; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_stac_parse_auto_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_stac_parse_auto_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.TYPE_5__*, %struct.sigmatel_spec* }
%struct.TYPE_5__ = type { i32 }
%struct.sigmatel_spec = type { i64, i64, %struct.TYPE_8__*, %struct.TYPE_7__, i64, i32, i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@HDA_PINCFG_HEADSET_MIC = common dso_local global i32 0, align 4
@stac_playback_pcm_hook = common dso_local global i32 0, align 4
@stac_capture_pcm_hook = common dso_local global i32 0, align 4
@stac_update_outputs = common dso_local global i32 0, align 4
@stac_vmaster_hook = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"loopback\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AC_AMPCAP_MUTE = common dso_local global i32 0, align 4
@HDA_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @stac_parse_auto_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stac_parse_auto_config(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.sigmatel_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 2
  %10 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %9, align 8
  store %struct.sigmatel_spec* %10, %struct.sigmatel_spec** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %12 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %11, i32 0, i32 7
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @HDA_PINCFG_HEADSET_MIC, align 4
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %21 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %22 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @snd_hda_parse_pin_defcfg(%struct.hda_codec* %20, i32* %23, i32* null, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %147

30:                                               ; preds = %19
  %31 = load i32, i32* @stac_playback_pcm_hook, align 4
  %32 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %33 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 5
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* @stac_capture_pcm_hook, align 4
  %36 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %37 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 4
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @stac_update_outputs, align 4
  %40 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %41 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 8
  %43 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %44 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %45 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = call i32 @snd_hda_gen_parse_auto_config(%struct.hda_codec* %43, i32* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %30
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %147

52:                                               ; preds = %30
  %53 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %54 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %59 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %60 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @snd_hda_gen_fix_pin_power(%struct.hda_codec* %58, i64 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %147

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %52
  %69 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %70 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %75 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %76 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @stac_auto_create_beep_ctls(%struct.hda_codec* %74, i64 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %147

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %83, %68
  %85 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %86 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load i32, i32* @stac_vmaster_hook, align 4
  %91 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %92 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store i32 %90, i32* %94, align 8
  br label %95

95:                                               ; preds = %89, %84
  %96 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %97 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %96, i32 0, i32 2
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = icmp ne %struct.TYPE_8__* %98, null
  br i1 %99, label %100, label %131

100:                                              ; preds = %95
  %101 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %102 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %131

104:                                              ; preds = %100
  %105 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %106 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %105, i32 0, i32 2
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = ashr i32 %109, 16
  store i32 %110, i32* %7, align 4
  %111 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %112 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %111, i32 0, i32 0
  %113 = load i32, i32* %7, align 4
  %114 = call i64 @snd_hdac_regmap_add_vendor_verb(i32* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %104
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %147

119:                                              ; preds = %104
  %120 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %121 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %120, i32 0, i32 3
  %122 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %123 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %122, i32 0, i32 2
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = call i32 @snd_hda_gen_add_kctl(%struct.TYPE_7__* %121, i32* null, %struct.TYPE_8__* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %119
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %2, align 4
  br label %147

130:                                              ; preds = %119
  br label %131

131:                                              ; preds = %130, %100, %95
  %132 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %133 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %131
  %137 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %138 = call i32 @stac_create_spdif_mux_ctls(%struct.hda_codec* %137)
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %5, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = load i32, i32* %5, align 4
  store i32 %142, i32* %2, align 4
  br label %147

143:                                              ; preds = %136
  br label %144

144:                                              ; preds = %143, %131
  %145 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %146 = call i32 @stac_init_power_map(%struct.hda_codec* %145)
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %144, %141, %127, %116, %81, %65, %50, %28
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @snd_hda_parse_pin_defcfg(%struct.hda_codec*, i32*, i32*, i32) #1

declare dso_local i32 @snd_hda_gen_parse_auto_config(%struct.hda_codec*, i32*) #1

declare dso_local i32 @snd_hda_gen_fix_pin_power(%struct.hda_codec*, i64) #1

declare dso_local i32 @stac_auto_create_beep_ctls(%struct.hda_codec*, i64) #1

declare dso_local i32 @snd_hda_get_bool_hint(%struct.hda_codec*, i8*) #1

declare dso_local i64 @snd_hdac_regmap_add_vendor_verb(i32*, i32) #1

declare dso_local i32 @snd_hda_gen_add_kctl(%struct.TYPE_7__*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @stac_create_spdif_mux_ctls(%struct.hda_codec*) #1

declare dso_local i32 @stac_init_power_map(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
