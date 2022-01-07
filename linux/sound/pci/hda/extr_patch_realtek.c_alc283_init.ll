; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc283_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc283_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { i32 }

@AC_VERB_SET_AMP_GAIN_MUTE = common dso_local global i32 0, align 4
@AMP_OUT_MUTE = common dso_local global i32 0, align 4
@AC_VERB_SET_PIN_WIDGET_CONTROL = common dso_local global i32 0, align 4
@PIN_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @alc283_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc283_init(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.alc_spec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 0
  %8 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  store %struct.alc_spec* %8, %struct.alc_spec** %3, align 8
  %9 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %10 = call i32 @alc_get_hp_pin(%struct.alc_spec* %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %12 = call i32 @alc283_restore_default_value(%struct.hda_codec* %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %47

16:                                               ; preds = %1
  %17 = call i32 @msleep(i32 30)
  %18 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %22 = call i32 @alc_write_coef_idx(%struct.hda_codec* %21, i32 67, i32 36868)
  %23 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  %26 = load i32, i32* @AMP_OUT_MUTE, align 4
  %27 = call i32 @snd_hda_codec_write(%struct.hda_codec* %23, i32 %24, i32 0, i32 %25, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %16
  %31 = call i32 @msleep(i32 85)
  br label %32

32:                                               ; preds = %30, %16
  %33 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @AC_VERB_SET_PIN_WIDGET_CONTROL, align 4
  %36 = load i32, i32* @PIN_OUT, align 4
  %37 = call i32 @snd_hda_codec_write(%struct.hda_codec* %33, i32 %34, i32 0, i32 %35, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = call i32 @msleep(i32 85)
  br label %42

42:                                               ; preds = %40, %32
  %43 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %44 = call i32 @alc_update_coef_idx(%struct.hda_codec* %43, i32 70, i32 12288, i32 0)
  %45 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %46 = call i32 @alc_write_coef_idx(%struct.hda_codec* %45, i32 67, i32 38420)
  br label %47

47:                                               ; preds = %42, %15
  ret void
}

declare dso_local i32 @alc_get_hp_pin(%struct.alc_spec*) #1

declare dso_local i32 @alc283_restore_default_value(%struct.hda_codec*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_hda_jack_detect(%struct.hda_codec*, i32) #1

declare dso_local i32 @alc_write_coef_idx(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @alc_update_coef_idx(%struct.hda_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
