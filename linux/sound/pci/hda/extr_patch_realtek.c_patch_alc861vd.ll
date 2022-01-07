; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_patch_alc861vd.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_patch_alc861vd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@alc_eapd_shutup = common dso_local global i32 0, align 4
@alc861vd_fixup_tbl = common dso_local global i32 0, align 4
@alc861vd_fixups = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@HDA_INPUT = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_alc861vd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_alc861vd(%struct.hda_codec* %0) #0 {
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
  br label %63

12:                                               ; preds = %1
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 0
  %15 = load %struct.alc_spec*, %struct.alc_spec** %14, align 8
  store %struct.alc_spec* %15, %struct.alc_spec** %4, align 8
  %16 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %17 = call i64 @has_cdefine_beep(%struct.hda_codec* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %21 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 35, i32* %22, align 4
  br label %23

23:                                               ; preds = %19, %12
  %24 = load i32, i32* @alc_eapd_shutup, align 4
  %25 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %26 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %28 = call i32 @alc_pre_init(%struct.hda_codec* %27)
  %29 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %30 = load i32, i32* @alc861vd_fixup_tbl, align 4
  %31 = load i32, i32* @alc861vd_fixups, align 4
  %32 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %29, i32* null, i32 %30, i32 %31)
  %33 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %34 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %35 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %33, i32 %34)
  %36 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %37 = call i32 @alc861vd_parse_auto_config(%struct.hda_codec* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %23
  br label %59

41:                                               ; preds = %23
  %42 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %43 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %41
  %48 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %49 = load i32, i32* @HDA_INPUT, align 4
  %50 = call i32 @set_beep_amp(%struct.alc_spec* %48, i32 11, i32 5, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %59

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %41
  %56 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %57 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %58 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %56, i32 %57)
  store i32 0, i32* %2, align 4
  br label %63

59:                                               ; preds = %53, %40
  %60 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %61 = call i32 @alc_free(%struct.hda_codec* %60)
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %55, %10
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @alc_alloc_spec(%struct.hda_codec*, i32) #1

declare dso_local i64 @has_cdefine_beep(%struct.hda_codec*) #1

declare dso_local i32 @alc_pre_init(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_pick_fixup(%struct.hda_codec*, i32*, i32, i32) #1

declare dso_local i32 @snd_hda_apply_fixup(%struct.hda_codec*, i32) #1

declare dso_local i32 @alc861vd_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @set_beep_amp(%struct.alc_spec*, i32, i32, i32) #1

declare dso_local i32 @alc_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
