; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_patch_alc662.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_patch_alc662.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_10__, %struct.TYPE_7__*, %struct.alc_spec* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.alc_spec = type { %struct.TYPE_9__, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@alc_eapd_shutup = common dso_local global i32 0, align 4
@HDA_PINCFG_NO_HP_FIXUP = common dso_local global i32 0, align 4
@alc668_restore_default_value = common dso_local global i32 0, align 4
@alc662_fixup_models = common dso_local global i32 0, align 4
@alc662_fixup_tbl = common dso_local global i32 0, align 4
@alc662_fixups = common dso_local global i32 0, align 4
@alc662_pin_fixup_tbl = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ALC272X\00", align 1
@HDA_INPUT = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_alc662 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_alc662(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.alc_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = call i32 @alc_alloc_spec(%struct.hda_codec* %6, i32 11)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %138

12:                                               ; preds = %1
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 2
  %15 = load %struct.alc_spec*, %struct.alc_spec** %14, align 8
  store %struct.alc_spec* %15, %struct.alc_spec** %4, align 8
  %16 = load i32, i32* @alc_eapd_shutup, align 4
  %17 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %18 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @HDA_PINCFG_NO_HP_FIXUP, align 4
  %20 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %21 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %23 = call i32 @alc_fix_pll_init(%struct.hda_codec* %22, i32 32, i32 4, i32 15)
  %24 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %25 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %32 [
    i32 283903592, label %28
  ]

28:                                               ; preds = %12
  %29 = load i32, i32* @alc668_restore_default_value, align 4
  %30 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %31 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %12, %28
  %33 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %34 = call i32 @alc_pre_init(%struct.hda_codec* %33)
  %35 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %36 = load i32, i32* @alc662_fixup_models, align 4
  %37 = load i32, i32* @alc662_fixup_tbl, align 4
  %38 = load i32, i32* @alc662_fixups, align 4
  %39 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %41 = load i32, i32* @alc662_pin_fixup_tbl, align 4
  %42 = load i32, i32* @alc662_fixups, align 4
  %43 = call i32 @snd_hda_pick_pin_fixup(%struct.hda_codec* %40, i32 %41, i32 %42, i32 1)
  %44 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %45 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %46 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %44, i32 %45)
  %47 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %48 = call i32 @alc_auto_parse_customize_define(%struct.hda_codec* %47)
  %49 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %50 = call i64 @has_cdefine_beep(%struct.hda_codec* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %32
  %53 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %54 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %32
  %57 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %58 = call i32 @alc_get_coef0(%struct.hda_codec* %57)
  %59 = and i32 %58, 16384
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %90

61:                                               ; preds = %56
  %62 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %63 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = icmp ne %struct.TYPE_6__* %66, null
  br i1 %67, label %68, label %90

68:                                               ; preds = %61
  %69 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %70 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %69, i32 0, i32 1
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 4133
  br i1 %76, label %77, label %90

77:                                               ; preds = %68
  %78 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %79 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %85 = call i32 @alc_codec_rename(%struct.hda_codec* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %134

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89, %77, %68, %61, %56
  %91 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %92 = call i32 @alc662_parse_auto_config(%struct.hda_codec* %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %134

96:                                               ; preds = %90
  %97 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %98 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %130, label %102

102:                                              ; preds = %96
  %103 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %104 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %130

108:                                              ; preds = %102
  %109 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %110 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  switch i32 %112, label %125 [
    i32 283903586, label %113
    i32 283902578, label %117
    i32 283903587, label %117
    i32 283903589, label %117
    i32 283903592, label %117
    i32 283902579, label %121
  ]

113:                                              ; preds = %108
  %114 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %115 = load i32, i32* @HDA_INPUT, align 4
  %116 = call i32 @set_beep_amp(%struct.alc_spec* %114, i32 11, i32 5, i32 %115)
  store i32 %116, i32* %5, align 4
  br label %125

117:                                              ; preds = %108, %108, %108, %108
  %118 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %119 = load i32, i32* @HDA_INPUT, align 4
  %120 = call i32 @set_beep_amp(%struct.alc_spec* %118, i32 11, i32 4, i32 %119)
  store i32 %120, i32* %5, align 4
  br label %125

121:                                              ; preds = %108
  %122 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %123 = load i32, i32* @HDA_INPUT, align 4
  %124 = call i32 @set_beep_amp(%struct.alc_spec* %122, i32 11, i32 3, i32 %123)
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %108, %121, %117, %113
  %126 = load i32, i32* %5, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  br label %134

129:                                              ; preds = %125
  br label %130

130:                                              ; preds = %129, %102, %96
  %131 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %132 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %133 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %131, i32 %132)
  store i32 0, i32* %2, align 4
  br label %138

134:                                              ; preds = %128, %95, %88
  %135 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %136 = call i32 @alc_free(%struct.hda_codec* %135)
  %137 = load i32, i32* %5, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %134, %130, %10
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @alc_alloc_spec(%struct.hda_codec*, i32) #1

declare dso_local i32 @alc_fix_pll_init(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @alc_pre_init(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_pick_fixup(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_pick_pin_fixup(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_apply_fixup(%struct.hda_codec*, i32) #1

declare dso_local i32 @alc_auto_parse_customize_define(%struct.hda_codec*) #1

declare dso_local i64 @has_cdefine_beep(%struct.hda_codec*) #1

declare dso_local i32 @alc_get_coef0(%struct.hda_codec*) #1

declare dso_local i32 @alc_codec_rename(%struct.hda_codec*, i8*) #1

declare dso_local i32 @alc662_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @set_beep_amp(%struct.alc_spec*, i32, i32, i32) #1

declare dso_local i32 @alc_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
