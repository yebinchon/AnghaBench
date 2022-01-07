; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc283_shutup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc283_shutup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { i32 }

@AC_VERB_SET_AMP_GAIN_MUTE = common dso_local global i32 0, align 4
@AMP_OUT_MUTE = common dso_local global i32 0, align 4
@AC_VERB_SET_PIN_WIDGET_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @alc283_shutup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc283_shutup(%struct.hda_codec* %0) #0 {
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
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = call i32 @alc269_shutup(%struct.hda_codec* %14)
  br label %57

16:                                               ; preds = %1
  %17 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %21 = call i32 @alc_write_coef_idx(%struct.hda_codec* %20, i32 67, i32 36868)
  %22 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %23 = call i32 @alc_write_coef_idx(%struct.hda_codec* %22, i32 6, i32 8448)
  %24 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  %27 = load i32, i32* @AMP_OUT_MUTE, align 4
  %28 = call i32 @snd_hda_codec_write(%struct.hda_codec* %24, i32 %25, i32 0, i32 %26, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = call i32 @msleep(i32 100)
  br label %33

33:                                               ; preds = %31, %16
  %34 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %35 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @AC_VERB_SET_PIN_WIDGET_CONTROL, align 4
  %42 = call i32 @snd_hda_codec_write(%struct.hda_codec* %39, i32 %40, i32 0, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %45 = call i32 @alc_update_coef_idx(%struct.hda_codec* %44, i32 70, i32 0, i32 12288)
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 @msleep(i32 100)
  br label %50

50:                                               ; preds = %48, %43
  %51 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %52 = call i32 @alc_auto_setup_eapd(%struct.hda_codec* %51, i32 0)
  %53 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %54 = call i32 @alc_shutup_pins(%struct.hda_codec* %53)
  %55 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %56 = call i32 @alc_write_coef_idx(%struct.hda_codec* %55, i32 67, i32 38420)
  br label %57

57:                                               ; preds = %50, %13
  ret void
}

declare dso_local i32 @alc_get_hp_pin(%struct.alc_spec*) #1

declare dso_local i32 @alc269_shutup(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_jack_detect(%struct.hda_codec*, i32) #1

declare dso_local i32 @alc_write_coef_idx(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @alc_update_coef_idx(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @alc_auto_setup_eapd(%struct.hda_codec*, i32) #1

declare dso_local i32 @alc_shutup_pins(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
