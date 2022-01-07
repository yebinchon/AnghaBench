; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_patch_alc268.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_patch_alc268.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32* }

@alc_eapd_shutup = common dso_local global i32 0, align 4
@alc268_fixup_models = common dso_local global i32 0, align 4
@alc268_fixup_tbl = common dso_local global i32 0, align 4
@alc268_fixups = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@alc268_beep_mixer = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@alc268_beep_init_verbs = common dso_local global i32 0, align 4
@HDA_INPUT = common dso_local global i32 0, align 4
@AC_AMPCAP_OFFSET_SHIFT = common dso_local global i32 0, align 4
@AC_AMPCAP_NUM_STEPS_SHIFT = common dso_local global i32 0, align 4
@AC_AMPCAP_STEP_SIZE_SHIFT = common dso_local global i32 0, align 4
@AC_AMPCAP_MUTE_SHIFT = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_alc268 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_alc268(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.alc_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %8 = call i32 @alc_alloc_spec(%struct.hda_codec* %7, i32 0)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %115

13:                                               ; preds = %1
  %14 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 0
  %16 = load %struct.alc_spec*, %struct.alc_spec** %15, align 8
  store %struct.alc_spec* %16, %struct.alc_spec** %4, align 8
  %17 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %18 = call i64 @has_cdefine_beep(%struct.hda_codec* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %22 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  br label %24

24:                                               ; preds = %20, %13
  %25 = load i32, i32* @alc_eapd_shutup, align 4
  %26 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %27 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %29 = call i32 @alc_pre_init(%struct.hda_codec* %28)
  %30 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %31 = load i32, i32* @alc268_fixup_models, align 4
  %32 = load i32, i32* @alc268_fixup_tbl, align 4
  %33 = load i32, i32* @alc268_fixups, align 4
  %34 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %36 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %37 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %35, i32 %36)
  %38 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %39 = call i32 @alc268_parse_auto_config(%struct.hda_codec* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %24
  br label %111

43:                                               ; preds = %24
  %44 = load i32, i32* %6, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %107

46:                                               ; preds = %43
  %47 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %48 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %107, label %52

52:                                               ; preds = %46
  %53 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %54 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 29
  br i1 %60, label %61, label %107

61:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %80, %61
  %63 = load i32, i32* %5, align 4
  %64 = load i32*, i32** @alc268_beep_mixer, align 8
  %65 = call i32 @ARRAY_SIZE(i32* %64)
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %62
  %68 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %69 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %68, i32 0, i32 0
  %70 = load i32*, i32** @alc268_beep_mixer, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = call i32 @snd_hda_gen_add_kctl(%struct.TYPE_4__* %69, i32* null, i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %111

79:                                               ; preds = %67
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %62

83:                                               ; preds = %62
  %84 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %85 = load i32, i32* @alc268_beep_init_verbs, align 4
  %86 = call i32 @snd_hda_add_verbs(%struct.hda_codec* %84, i32 %85)
  %87 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %88 = load i32, i32* @HDA_INPUT, align 4
  %89 = call i32 @query_amp_caps(%struct.hda_codec* %87, i32 29, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %106, label %91

91:                                               ; preds = %83
  %92 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %93 = load i32, i32* @HDA_INPUT, align 4
  %94 = load i32, i32* @AC_AMPCAP_OFFSET_SHIFT, align 4
  %95 = shl i32 12, %94
  %96 = load i32, i32* @AC_AMPCAP_NUM_STEPS_SHIFT, align 4
  %97 = shl i32 12, %96
  %98 = or i32 %95, %97
  %99 = load i32, i32* @AC_AMPCAP_STEP_SIZE_SHIFT, align 4
  %100 = shl i32 7, %99
  %101 = or i32 %98, %100
  %102 = load i32, i32* @AC_AMPCAP_MUTE_SHIFT, align 4
  %103 = shl i32 0, %102
  %104 = or i32 %101, %103
  %105 = call i32 @snd_hda_override_amp_caps(%struct.hda_codec* %92, i32 29, i32 %93, i32 %104)
  br label %106

106:                                              ; preds = %91, %83
  br label %107

107:                                              ; preds = %106, %52, %46, %43
  %108 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %109 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %110 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %108, i32 %109)
  store i32 0, i32* %2, align 4
  br label %115

111:                                              ; preds = %76, %42
  %112 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %113 = call i32 @alc_free(%struct.hda_codec* %112)
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %111, %107, %11
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @alc_alloc_spec(%struct.hda_codec*, i32) #1

declare dso_local i64 @has_cdefine_beep(%struct.hda_codec*) #1

declare dso_local i32 @alc_pre_init(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_pick_fixup(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_apply_fixup(%struct.hda_codec*, i32) #1

declare dso_local i32 @alc268_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_hda_gen_add_kctl(%struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @snd_hda_add_verbs(%struct.hda_codec*, i32) #1

declare dso_local i32 @query_amp_caps(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_override_amp_caps(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @alc_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
