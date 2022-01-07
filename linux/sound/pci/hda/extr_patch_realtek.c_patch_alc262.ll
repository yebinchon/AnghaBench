; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_patch_alc262.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_patch_alc262.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@alc_eapd_shutup = common dso_local global i32 0, align 4
@alc262_fixup_models = common dso_local global i32 0, align 4
@alc262_fixup_tbl = common dso_local global i32 0, align 4
@alc262_fixups = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@HDA_INPUT = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_alc262 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_alc262(%struct.hda_codec* %0) #0 {
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
  br label %77

12:                                               ; preds = %1
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 0
  %15 = load %struct.alc_spec*, %struct.alc_spec** %14, align 8
  store %struct.alc_spec* %15, %struct.alc_spec** %4, align 8
  %16 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %17 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 24, i32* %18, align 4
  %19 = load i32, i32* @alc_eapd_shutup, align 4
  %20 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %21 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %23 = call i32 @alc_fix_pll_init(%struct.hda_codec* %22, i32 32, i32 10, i32 10)
  %24 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %25 = call i32 @alc_pre_init(%struct.hda_codec* %24)
  %26 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %27 = load i32, i32* @alc262_fixup_models, align 4
  %28 = load i32, i32* @alc262_fixup_tbl, align 4
  %29 = load i32, i32* @alc262_fixups, align 4
  %30 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %32 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %33 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %31, i32 %32)
  %34 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %35 = call i32 @alc_auto_parse_customize_define(%struct.hda_codec* %34)
  %36 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %37 = call i64 @has_cdefine_beep(%struct.hda_codec* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %12
  %40 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %41 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %12
  %44 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %45 = call i32 @alc262_parse_auto_config(%struct.hda_codec* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %73

49:                                               ; preds = %43
  %50 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %51 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %49
  %56 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %57 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %63 = load i32, i32* @HDA_INPUT, align 4
  %64 = call i32 @set_beep_amp(%struct.alc_spec* %62, i32 11, i32 5, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %73

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %55, %49
  %70 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %71 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %72 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %70, i32 %71)
  store i32 0, i32* %2, align 4
  br label %77

73:                                               ; preds = %67, %48
  %74 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %75 = call i32 @alc_free(%struct.hda_codec* %74)
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %69, %10
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @alc_alloc_spec(%struct.hda_codec*, i32) #1

declare dso_local i32 @alc_fix_pll_init(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @alc_pre_init(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_pick_fixup(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_apply_fixup(%struct.hda_codec*, i32) #1

declare dso_local i32 @alc_auto_parse_customize_define(%struct.hda_codec*) #1

declare dso_local i64 @has_cdefine_beep(%struct.hda_codec*) #1

declare dso_local i32 @alc262_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @set_beep_amp(%struct.alc_spec*, i32, i32, i32) #1

declare dso_local i32 @alc_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
