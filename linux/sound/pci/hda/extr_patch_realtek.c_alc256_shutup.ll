; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc256_shutup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc256_shutup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { i64, i32 }

@AC_VERB_SET_AMP_GAIN_MUTE = common dso_local global i32 0, align 4
@AMP_OUT_MUTE = common dso_local global i32 0, align 4
@AC_VERB_SET_PIN_WIDGET_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @alc256_shutup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc256_shutup(%struct.hda_codec* %0) #0 {
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
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 33, i32* %4, align 4
  br label %14

14:                                               ; preds = %13, %1
  %15 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call i32 @msleep(i32 2)
  br label %22

22:                                               ; preds = %20, %14
  %23 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  %26 = load i32, i32* @AMP_OUT_MUTE, align 4
  %27 = call i32 @snd_hda_codec_write(%struct.hda_codec* %23, i32 %24, i32 0, i32 %25, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %22
  %31 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %32 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30, %22
  %36 = call i32 @msleep(i32 85)
  br label %37

37:                                               ; preds = %35, %30
  %38 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %39 = call i32 @alc_update_coef_idx(%struct.hda_codec* %38, i32 70, i32 0, i32 12288)
  %40 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %41 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @AC_VERB_SET_PIN_WIDGET_CONTROL, align 4
  %48 = call i32 @snd_hda_codec_write(%struct.hda_codec* %45, i32 %46, i32 0, i32 %47, i32 0)
  br label %49

49:                                               ; preds = %44, %37
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %54 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52, %49
  %58 = call i32 @msleep(i32 100)
  br label %59

59:                                               ; preds = %57, %52
  %60 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %61 = call i32 @alc_auto_setup_eapd(%struct.hda_codec* %60, i32 0)
  %62 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %63 = call i32 @alc_shutup_pins(%struct.hda_codec* %62)
  %64 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %65 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %59
  %69 = call i32 @msleep(i32 50)
  %70 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %71 = call i32 @alc_update_coef_idx(%struct.hda_codec* %70, i32 3, i32 2, i32 0)
  %72 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %73 = call i32 @alc_update_coef_idx(%struct.hda_codec* %72, i32 8, i32 112, i32 112)
  %74 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %75 = call i32 @alc_update_coef_idx(%struct.hda_codec* %74, i32 8, i32 12, i32 0)
  %76 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %77 = call i32 @alc_update_coef_idx(%struct.hda_codec* %76, i32 59, i32 32768, i32 32768)
  %78 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %79 = call i32 @alc_update_coef_idx(%struct.hda_codec* %78, i32 14, i32 448, i32 0)
  %80 = call i32 @msleep(i32 30)
  br label %81

81:                                               ; preds = %68, %59
  ret void
}

declare dso_local i32 @alc_get_hp_pin(%struct.alc_spec*) #1

declare dso_local i32 @snd_hda_jack_detect(%struct.hda_codec*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @alc_update_coef_idx(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @alc_auto_setup_eapd(%struct.hda_codec*, i32) #1

declare dso_local i32 @alc_shutup_pins(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
