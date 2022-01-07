; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc225_shutup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc225_shutup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { i64 }

@AC_VERB_SET_AMP_GAIN_MUTE = common dso_local global i32 0, align 4
@AMP_OUT_MUTE = common dso_local global i32 0, align 4
@AC_VERB_SET_PIN_WIDGET_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @alc225_shutup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc225_shutup(%struct.hda_codec* %0) #0 {
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
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 33, i32* %4, align 4
  br label %15

15:                                               ; preds = %14, %1
  %16 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %17 = call i32 @alc_update_coef_idx(%struct.hda_codec* %16, i32 74, i32 0, i32 3072)
  %18 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %22 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %21, i32 22)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %15
  %29 = call i32 @msleep(i32 2)
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %35 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33, %30
  %39 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  %42 = load i32, i32* @AMP_OUT_MUTE, align 4
  %43 = call i32 @snd_hda_codec_write(%struct.hda_codec* %39, i32 %40, i32 0, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %33
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %49 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  %50 = load i32, i32* @AMP_OUT_MUTE, align 4
  %51 = call i32 @snd_hda_codec_write(%struct.hda_codec* %48, i32 22, i32 0, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %44
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %60 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58, %55, %52
  %64 = call i32 @msleep(i32 85)
  br label %65

65:                                               ; preds = %63, %58
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %70 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68, %65
  %74 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @AC_VERB_SET_PIN_WIDGET_CONTROL, align 4
  %77 = call i32 @snd_hda_codec_write(%struct.hda_codec* %74, i32 %75, i32 0, i32 %76, i32 0)
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %83 = load i32, i32* @AC_VERB_SET_PIN_WIDGET_CONTROL, align 4
  %84 = call i32 @snd_hda_codec_write(%struct.hda_codec* %82, i32 22, i32 0, i32 %83, i32 0)
  br label %85

85:                                               ; preds = %81, %78
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %93 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91, %88, %85
  %97 = call i32 @msleep(i32 100)
  br label %98

98:                                               ; preds = %96, %91
  %99 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %100 = call i32 @alc_auto_setup_eapd(%struct.hda_codec* %99, i32 0)
  %101 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %102 = call i32 @alc_shutup_pins(%struct.hda_codec* %101)
  %103 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %104 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %98
  %108 = call i32 @msleep(i32 50)
  %109 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %110 = call i32 @alc_update_coef_idx(%struct.hda_codec* %109, i32 8, i32 60, i32 48)
  %111 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %112 = call i32 @alc_update_coef_idx(%struct.hda_codec* %111, i32 14, i32 448, i32 0)
  %113 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %114 = call i32 @alc_update_coef_idx(%struct.hda_codec* %113, i32 51, i32 2048, i32 2048)
  %115 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %116 = call i32 @alc_update_coef_idx(%struct.hda_codec* %115, i32 74, i32 48, i32 32)
  %117 = call i32 @msleep(i32 30)
  br label %118

118:                                              ; preds = %107, %98
  ret void
}

declare dso_local i32 @alc_get_hp_pin(%struct.alc_spec*) #1

declare dso_local i32 @alc_update_coef_idx(%struct.hda_codec*, i32, i32, i32) #1

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
