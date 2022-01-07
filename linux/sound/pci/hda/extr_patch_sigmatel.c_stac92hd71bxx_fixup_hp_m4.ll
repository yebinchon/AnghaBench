; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_stac92hd71bxx_fixup_hp_m4.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_stac92hd71bxx_fixup_hp_m4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_2__, %struct.sigmatel_spec* }
%struct.TYPE_2__ = type { i32 }
%struct.sigmatel_spec = type { i32 }
%struct.hda_fixup = type { i32 }
%struct.hda_jack_callback = type { i32 }

@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@AC_VERB_SET_GPIO_UNSOLICITED_RSP_MASK = common dso_local global i32 0, align 4
@stac_vref_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_fixup*, i32)* @stac92hd71bxx_fixup_hp_m4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stac92hd71bxx_fixup_hp_m4(%struct.hda_codec* %0, %struct.hda_fixup* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hda_fixup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sigmatel_spec*, align 8
  %8 = alloca %struct.hda_jack_callback*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hda_fixup* %1, %struct.hda_fixup** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 1
  %11 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %10, align 8
  store %struct.sigmatel_spec* %11, %struct.sigmatel_spec** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %44

16:                                               ; preds = %3
  %17 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %18 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %19 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @AC_VERB_SET_GPIO_UNSOLICITED_RSP_MASK, align 4
  %23 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %17, i32 %21, i32 0, i32 %22, i32 2)
  %24 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %25 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %26 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @stac_vref_event, align 4
  %30 = call %struct.hda_jack_callback* @snd_hda_jack_detect_enable_callback(%struct.hda_codec* %24, i32 %28, i32 %29)
  store %struct.hda_jack_callback* %30, %struct.hda_jack_callback** %8, align 8
  %31 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %8, align 8
  %32 = call i32 @IS_ERR(%struct.hda_jack_callback* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %16
  %35 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %8, align 8
  %36 = getelementptr inbounds %struct.hda_jack_callback, %struct.hda_jack_callback* %35, i32 0, i32 0
  store i32 2, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %16
  %38 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %7, align 8
  %39 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, 2
  store i32 %41, i32* %39, align 4
  %42 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %43 = call i32 @snd_hda_codec_set_pincfg(%struct.hda_codec* %42, i32 14, i32 25243712)
  br label %44

44:                                               ; preds = %37, %15
  ret void
}

declare dso_local i32 @snd_hda_codec_write_cache(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local %struct.hda_jack_callback* @snd_hda_jack_detect_enable_callback(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.hda_jack_callback*) #1

declare dso_local i32 @snd_hda_codec_set_pincfg(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
