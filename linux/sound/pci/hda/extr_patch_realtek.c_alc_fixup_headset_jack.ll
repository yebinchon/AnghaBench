; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_fixup_headset_jack.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_fixup_headset_jack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hda_fixup = type { i32 }

@alc_headset_btn_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Headset Jack\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@alc_headset_btn_keymap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_fixup*, i32)* @alc_fixup_headset_jack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_fixup_headset_jack(%struct.hda_codec* %0, %struct.hda_fixup* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hda_fixup*, align 8
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hda_fixup* %1, %struct.hda_fixup** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %34 [
    i32 128, label %8
    i32 129, label %16
  ]

8:                                                ; preds = %3
  %9 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %10 = load i32, i32* @alc_headset_btn_callback, align 4
  %11 = call i32 @snd_hda_jack_detect_enable_callback(%struct.hda_codec* %9, i32 85, i32 %10)
  %12 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %13 = load i32, i32* @SND_JACK_HEADSET, align 4
  %14 = load i32, i32* @alc_headset_btn_keymap, align 4
  %15 = call i32 @snd_hda_jack_add_kctl(%struct.hda_codec* %12, i32 85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0, i32 %13, i32 %14)
  br label %34

16:                                               ; preds = %3
  %17 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %18 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %33 [
    i32 283902501, label %21
    i32 283902613, label %21
    i32 283902617, label %21
    i32 283902518, label %28
    i32 283902550, label %28
  ]

21:                                               ; preds = %16, %16, %16
  %22 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %23 = call i32 @alc_write_coef_idx(%struct.hda_codec* %22, i32 72, i32 53265)
  %24 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %25 = call i32 @alc_update_coef_idx(%struct.hda_codec* %24, i32 73, i32 127, i32 69)
  %26 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %27 = call i32 @alc_update_coef_idx(%struct.hda_codec* %26, i32 68, i32 32512, i32 17664)
  br label %33

28:                                               ; preds = %16, %16
  %29 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %30 = call i32 @alc_write_coef_idx(%struct.hda_codec* %29, i32 72, i32 53265)
  %31 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %32 = call i32 @alc_update_coef_idx(%struct.hda_codec* %31, i32 73, i32 127, i32 69)
  br label %33

33:                                               ; preds = %16, %28, %21
  br label %34

34:                                               ; preds = %3, %33, %8
  ret void
}

declare dso_local i32 @snd_hda_jack_detect_enable_callback(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_jack_add_kctl(%struct.hda_codec*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @alc_write_coef_idx(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @alc_update_coef_idx(%struct.hda_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
