; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_stac92hd83xxx_fixup_hp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_stac92hd83xxx_fixup_hp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.sigmatel_spec* }
%struct.sigmatel_spec = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hda_fixup = type { i32 }

@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"mute LED gpio %d polarity %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_fixup*, i32)* @stac92hd83xxx_fixup_hp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stac92hd83xxx_fixup_hp(%struct.hda_codec* %0, %struct.hda_fixup* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hda_fixup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sigmatel_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hda_fixup* %1, %struct.hda_fixup** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %9, align 8
  store %struct.sigmatel_spec* %10, %struct.sigmatel_spec** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %44

15:                                               ; preds = %3
  %16 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %17 = call i64 @hp_bnb2011_with_dock(%struct.hda_codec* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %21 = call i32 @snd_hda_codec_set_pincfg(%struct.hda_codec* %20, i32 10, i32 553721887)
  %22 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %23 = call i32 @snd_hda_codec_set_pincfg(%struct.hda_codec* %22, i32 15, i32 562110558)
  br label %24

24:                                               ; preds = %19, %15
  %25 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %26 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %7, align 8
  %27 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @find_mute_led_cfg(%struct.hda_codec* %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %33 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %7, align 8
  %34 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %7, align 8
  %37 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @codec_dbg(%struct.hda_codec* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %31, %24
  %41 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %7, align 8
  %42 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %14
  ret void
}

declare dso_local i64 @hp_bnb2011_with_dock(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_codec_set_pincfg(%struct.hda_codec*, i32, i32) #1

declare dso_local i64 @find_mute_led_cfg(%struct.hda_codec*, i32) #1

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
