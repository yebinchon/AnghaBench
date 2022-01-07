; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_default_shutup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_default_shutup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { i32 }

@AC_VERB_SET_AMP_GAIN_MUTE = common dso_local global i32 0, align 4
@AMP_OUT_MUTE = common dso_local global i32 0, align 4
@AC_VERB_SET_PIN_WIDGET_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @alc_default_shutup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_default_shutup(%struct.hda_codec* %0) #0 {
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
  br label %54

16:                                               ; preds = %1
  %17 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call i32 @msleep(i32 2)
  br label %24

24:                                               ; preds = %22, %16
  %25 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  %28 = load i32, i32* @AMP_OUT_MUTE, align 4
  %29 = call i32 @snd_hda_codec_write(%struct.hda_codec* %25, i32 %26, i32 0, i32 %27, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = call i32 @msleep(i32 85)
  br label %34

34:                                               ; preds = %32, %24
  %35 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %36 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @AC_VERB_SET_PIN_WIDGET_CONTROL, align 4
  %43 = call i32 @snd_hda_codec_write(%struct.hda_codec* %40, i32 %41, i32 0, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 @msleep(i32 100)
  br label %49

49:                                               ; preds = %47, %44
  %50 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %51 = call i32 @alc_auto_setup_eapd(%struct.hda_codec* %50, i32 0)
  %52 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %53 = call i32 @alc_shutup_pins(%struct.hda_codec* %52)
  br label %54

54:                                               ; preds = %49, %13
  ret void
}

declare dso_local i32 @alc_get_hp_pin(%struct.alc_spec*) #1

declare dso_local i32 @alc269_shutup(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_jack_detect(%struct.hda_codec*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @alc_auto_setup_eapd(%struct.hda_codec*, i32) #1

declare dso_local i32 @alc_shutup_pins(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
