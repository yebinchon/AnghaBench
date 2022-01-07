; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc282_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc282_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { i32 }

@AC_VERB_SET_AMP_GAIN_MUTE = common dso_local global i32 0, align 4
@AMP_OUT_MUTE = common dso_local global i32 0, align 4
@AC_VERB_SET_PIN_WIDGET_CONTROL = common dso_local global i32 0, align 4
@PIN_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @alc282_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc282_init(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.alc_spec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = load %struct.alc_spec*, %struct.alc_spec** %8, align 8
  store %struct.alc_spec* %9, %struct.alc_spec** %3, align 8
  %10 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %11 = call i32 @alc_get_hp_pin(%struct.alc_spec* %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %13 = call i32 @alc282_restore_default_value(%struct.hda_codec* %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %53

17:                                               ; preds = %1
  %18 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %22 = call i32 @alc_read_coef_idx(%struct.hda_codec* %21, i32 120)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %24 = call i32 @alc_write_coef_idx(%struct.hda_codec* %23, i32 120, i32 36868)
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = call i32 @msleep(i32 2)
  br label %29

29:                                               ; preds = %27, %17
  %30 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  %33 = load i32, i32* @AMP_OUT_MUTE, align 4
  %34 = call i32 @snd_hda_codec_write(%struct.hda_codec* %30, i32 %31, i32 0, i32 %32, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = call i32 @msleep(i32 85)
  br label %39

39:                                               ; preds = %37, %29
  %40 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @AC_VERB_SET_PIN_WIDGET_CONTROL, align 4
  %43 = load i32, i32* @PIN_OUT, align 4
  %44 = call i32 @snd_hda_codec_write(%struct.hda_codec* %40, i32 %41, i32 0, i32 %42, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = call i32 @msleep(i32 100)
  br label %49

49:                                               ; preds = %47, %39
  %50 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @alc_write_coef_idx(%struct.hda_codec* %50, i32 120, i32 %51)
  br label %53

53:                                               ; preds = %49, %16
  ret void
}

declare dso_local i32 @alc_get_hp_pin(%struct.alc_spec*) #1

declare dso_local i32 @alc282_restore_default_value(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_jack_detect(%struct.hda_codec*, i32) #1

declare dso_local i32 @alc_read_coef_idx(%struct.hda_codec*, i32) #1

declare dso_local i32 @alc_write_coef_idx(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
