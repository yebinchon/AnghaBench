; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_patch_stac9200.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_patch_stac9200.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.sigmatel_spec* }
%struct.sigmatel_spec = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@snd_hda_codec_eapd_power_filter = common dso_local global i32 0, align 4
@stac9200_eapd_init = common dso_local global i32 0, align 4
@stac9200_models = common dso_local global i32 0, align 4
@stac9200_fixup_tbl = common dso_local global i32 0, align 4
@stac9200_fixups = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_stac9200 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_stac9200(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.sigmatel_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = call i32 @alloc_stac_spec(%struct.hda_codec* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %47

12:                                               ; preds = %1
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 1
  %15 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %14, align 8
  store %struct.sigmatel_spec* %15, %struct.sigmatel_spec** %4, align 8
  %16 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %17 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %19 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* @snd_hda_codec_eapd_power_filter, align 4
  %22 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %23 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %25 = load i32, i32* @stac9200_eapd_init, align 4
  %26 = call i32 @snd_hda_add_verbs(%struct.hda_codec* %24, i32 %25)
  %27 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %28 = load i32, i32* @stac9200_models, align 4
  %29 = load i32, i32* @stac9200_fixup_tbl, align 4
  %30 = load i32, i32* @stac9200_fixups, align 4
  %31 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %33 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %34 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %32, i32 %33)
  %35 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %36 = call i32 @stac_parse_auto_config(%struct.hda_codec* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %12
  %40 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %41 = call i32 @stac_free(%struct.hda_codec* %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %47

43:                                               ; preds = %12
  %44 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %45 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %46 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %44, i32 %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %43, %39, %10
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @alloc_stac_spec(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_add_verbs(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_pick_fixup(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_apply_fixup(%struct.hda_codec*, i32) #1

declare dso_local i32 @stac_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @stac_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
