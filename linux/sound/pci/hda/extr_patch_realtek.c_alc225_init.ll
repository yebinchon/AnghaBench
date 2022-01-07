; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc225_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc225_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { i64 }

@AC_VERB_SET_AMP_GAIN_MUTE = common dso_local global i32 0, align 4
@AMP_OUT_MUTE = common dso_local global i32 0, align 4
@AC_VERB_SET_PIN_WIDGET_CONTROL = common dso_local global i32 0, align 4
@PIN_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @alc225_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc225_init(%struct.hda_codec* %0) #0 {
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
  %16 = call i32 @msleep(i32 30)
  %17 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %21 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %20, i32 22)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %15
  %28 = call i32 @msleep(i32 2)
  br label %29

29:                                               ; preds = %27, %24
  %30 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %31 = call i32 @alc_update_coefex_idx(%struct.hda_codec* %30, i32 87, i32 4, i32 7, i32 1)
  %32 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %33 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %38 = call i32 @alc_update_coef_idx(%struct.hda_codec* %37, i32 8, i32 60, i32 12)
  %39 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %40 = call i32 @alc_update_coef_idx(%struct.hda_codec* %39, i32 14, i32 448, i32 448)
  %41 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %42 = call i32 @alc_update_coef_idx(%struct.hda_codec* %41, i32 51, i32 2048, i32 0)
  %43 = call i32 @msleep(i32 30)
  br label %44

44:                                               ; preds = %36, %29
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %49 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47, %44
  %53 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  %56 = load i32, i32* @AMP_OUT_MUTE, align 4
  %57 = call i32 @snd_hda_codec_write(%struct.hda_codec* %53, i32 %54, i32 0, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %52, %47
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %63 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  %64 = load i32, i32* @AMP_OUT_MUTE, align 4
  %65 = call i32 @snd_hda_codec_write(%struct.hda_codec* %62, i32 22, i32 0, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %74 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72, %69, %66
  %78 = call i32 @msleep(i32 85)
  br label %79

79:                                               ; preds = %77, %72
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  %83 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %84 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82, %79
  %88 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @AC_VERB_SET_PIN_WIDGET_CONTROL, align 4
  %91 = load i32, i32* @PIN_OUT, align 4
  %92 = call i32 @snd_hda_codec_write(%struct.hda_codec* %88, i32 %89, i32 0, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %87, %82
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %98 = load i32, i32* @AC_VERB_SET_PIN_WIDGET_CONTROL, align 4
  %99 = load i32, i32* @PIN_OUT, align 4
  %100 = call i32 @snd_hda_codec_write(%struct.hda_codec* %97, i32 22, i32 0, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %93
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %104
  %108 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %109 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107, %104, %101
  %113 = call i32 @msleep(i32 100)
  br label %114

114:                                              ; preds = %112, %107
  %115 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %116 = call i32 @alc_update_coef_idx(%struct.hda_codec* %115, i32 74, i32 3072, i32 0)
  %117 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %118 = call i32 @alc_update_coefex_idx(%struct.hda_codec* %117, i32 87, i32 4, i32 7, i32 4)
  ret void
}

declare dso_local i32 @alc_get_hp_pin(%struct.alc_spec*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_hda_jack_detect(%struct.hda_codec*, i32) #1

declare dso_local i32 @alc_update_coefex_idx(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @alc_update_coef_idx(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
