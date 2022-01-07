; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc282_fixup_asus_tx300.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc282_fixup_asus_tx300.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_pintbl = type { i32, i32 }
%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hda_fixup = type { i32 }

@alc282_fixup_asus_tx300.dock_pins = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i32 27, i32 554778624 }, %struct.hda_pintbl zeroinitializer], align 16
@ALC_INIT_DEFAULT = common dso_local global i8* null, align 8
@asus_tx300_automute = common dso_local global i32 0, align 4
@snd_hda_gen_hp_automute = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Speaker Playback Switch\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Dock Speaker Playback Switch\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Bass Speaker Playback Switch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_fixup*, i32)* @alc282_fixup_asus_tx300 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc282_fixup_asus_tx300(%struct.hda_codec* %0, %struct.hda_fixup* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hda_fixup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.alc_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hda_fixup* %1, %struct.hda_fixup** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.alc_spec*, %struct.alc_spec** %9, align 8
  store %struct.alc_spec* %10, %struct.alc_spec** %7, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %39 [
    i32 129, label %12
    i32 128, label %30
    i32 130, label %34
  ]

12:                                               ; preds = %3
  %13 = load i8*, i8** @ALC_INIT_DEFAULT, align 8
  %14 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  %15 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %17 = call i32 @alc_setup_gpio(%struct.hda_codec* %16, i32 4)
  %18 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %19 = call i32 @snd_hda_apply_pincfgs(%struct.hda_codec* %18, %struct.hda_pintbl* getelementptr inbounds ([2 x %struct.hda_pintbl], [2 x %struct.hda_pintbl]* @alc282_fixup_asus_tx300.dock_pins, i64 0, i64 0))
  %20 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  %21 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load i32, i32* @asus_tx300_automute, align 4
  %24 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  %25 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %28 = load i32, i32* @snd_hda_gen_hp_automute, align 4
  %29 = call i32 @snd_hda_jack_detect_enable_callback(%struct.hda_codec* %27, i32 27, i32 %28)
  br label %39

30:                                               ; preds = %3
  %31 = load i8*, i8** @ALC_INIT_DEFAULT, align 8
  %32 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  %33 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  br label %39

34:                                               ; preds = %3
  %35 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %36 = call i32 @rename_ctl(%struct.hda_codec* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %38 = call i32 @rename_ctl(%struct.hda_codec* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %3, %34, %30, %12
  ret void
}

declare dso_local i32 @alc_setup_gpio(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_apply_pincfgs(%struct.hda_codec*, %struct.hda_pintbl*) #1

declare dso_local i32 @snd_hda_jack_detect_enable_callback(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @rename_ctl(%struct.hda_codec*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
