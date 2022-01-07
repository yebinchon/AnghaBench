; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_patch_alc882.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_patch_alc882.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_3__, %struct.alc_spec* }
%struct.TYPE_3__ = type { i32 }
%struct.alc_spec = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@alc882_fixup_models = common dso_local global i32 0, align 4
@alc882_fixup_tbl = common dso_local global i32 0, align 4
@alc882_fixups = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@HDA_INPUT = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_alc882 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_alc882(%struct.hda_codec* %0) #0 {
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
  br label %78

12:                                               ; preds = %1
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 1
  %15 = load %struct.alc_spec*, %struct.alc_spec** %14, align 8
  store %struct.alc_spec* %15, %struct.alc_spec** %4, align 8
  %16 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %21 [
    i32 283904130, label %20
    i32 283904133, label %20
    i32 283904256, label %20
    i32 283906592, label %20
  ]

20:                                               ; preds = %12, %12, %12, %12
  br label %24

21:                                               ; preds = %12
  %22 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %23 = call i32 @alc_fix_pll_init(%struct.hda_codec* %22, i32 32, i32 10, i32 10)
  br label %24

24:                                               ; preds = %21, %20
  %25 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %26 = call i32 @alc_pre_init(%struct.hda_codec* %25)
  %27 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %28 = load i32, i32* @alc882_fixup_models, align 4
  %29 = load i32, i32* @alc882_fixup_tbl, align 4
  %30 = load i32, i32* @alc882_fixups, align 4
  %31 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %33 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %34 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %32, i32 %33)
  %35 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %36 = call i32 @alc_auto_parse_customize_define(%struct.hda_codec* %35)
  %37 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %38 = call i64 @has_cdefine_beep(%struct.hda_codec* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %24
  %41 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %42 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %24
  %45 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %46 = call i32 @alc882_parse_auto_config(%struct.hda_codec* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %74

50:                                               ; preds = %44
  %51 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %52 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %50
  %57 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %58 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %64 = load i32, i32* @HDA_INPUT, align 4
  %65 = call i32 @set_beep_amp(%struct.alc_spec* %63, i32 11, i32 5, i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %74

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %56, %50
  %71 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %72 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %73 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %71, i32 %72)
  store i32 0, i32* %2, align 4
  br label %78

74:                                               ; preds = %68, %49
  %75 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %76 = call i32 @alc_free(%struct.hda_codec* %75)
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %74, %70, %10
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @alc_alloc_spec(%struct.hda_codec*, i32) #1

declare dso_local i32 @alc_fix_pll_init(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @alc_pre_init(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_pick_fixup(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_apply_fixup(%struct.hda_codec*, i32) #1

declare dso_local i32 @alc_auto_parse_customize_define(%struct.hda_codec*) #1

declare dso_local i64 @has_cdefine_beep(%struct.hda_codec*) #1

declare dso_local i32 @alc882_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @set_beep_amp(%struct.alc_spec*, i32, i32, i32) #1

declare dso_local i32 @alc_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
