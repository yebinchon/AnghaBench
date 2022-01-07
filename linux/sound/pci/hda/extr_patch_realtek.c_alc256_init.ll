; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc256_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc256_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { i64 }

@AC_VERB_SET_AMP_GAIN_MUTE = common dso_local global i32 0, align 4
@AMP_OUT_MUTE = common dso_local global i32 0, align 4
@AC_VERB_SET_PIN_WIDGET_CONTROL = common dso_local global i32 0, align 4
@PIN_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @alc256_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc256_init(%struct.hda_codec* %0) #0 {
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
  %15 = call i32 @msleep(i32 30)
  %16 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 @msleep(i32 2)
  br label %23

23:                                               ; preds = %21, %14
  %24 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %25 = call i32 @alc_update_coefex_idx(%struct.hda_codec* %24, i32 87, i32 4, i32 7, i32 1)
  %26 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %27 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %32 = call i32 @alc_update_coef_idx(%struct.hda_codec* %31, i32 3, i32 2, i32 2)
  %33 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %34 = call i32 @alc_update_coef_idx(%struct.hda_codec* %33, i32 8, i32 12, i32 12)
  %35 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %36 = call i32 @alc_update_coef_idx(%struct.hda_codec* %35, i32 8, i32 112, i32 0)
  %37 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %38 = call i32 @alc_update_coef_idx(%struct.hda_codec* %37, i32 59, i32 32768, i32 0)
  %39 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %40 = call i32 @alc_update_coef_idx(%struct.hda_codec* %39, i32 14, i32 448, i32 448)
  %41 = call i32 @msleep(i32 30)
  br label %42

42:                                               ; preds = %30, %23
  %43 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  %46 = load i32, i32* @AMP_OUT_MUTE, align 4
  %47 = call i32 @snd_hda_codec_write(%struct.hda_codec* %43, i32 %44, i32 0, i32 %45, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %42
  %51 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %52 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50, %42
  %56 = call i32 @msleep(i32 85)
  br label %57

57:                                               ; preds = %55, %50
  %58 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @AC_VERB_SET_PIN_WIDGET_CONTROL, align 4
  %61 = load i32, i32* @PIN_OUT, align 4
  %62 = call i32 @snd_hda_codec_write(%struct.hda_codec* %58, i32 %59, i32 0, i32 %60, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %57
  %66 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %67 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65, %57
  %71 = call i32 @msleep(i32 100)
  br label %72

72:                                               ; preds = %70, %65
  %73 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %74 = call i32 @alc_update_coef_idx(%struct.hda_codec* %73, i32 70, i32 12288, i32 0)
  %75 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %76 = call i32 @alc_update_coefex_idx(%struct.hda_codec* %75, i32 87, i32 4, i32 7, i32 4)
  %77 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %78 = call i32 @alc_update_coefex_idx(%struct.hda_codec* %77, i32 83, i32 2, i32 32768, i32 32768)
  %79 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %80 = call i32 @alc_update_coefex_idx(%struct.hda_codec* %79, i32 83, i32 2, i32 32768, i32 0)
  %81 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %82 = call i32 @alc_update_coef_idx(%struct.hda_codec* %81, i32 54, i32 8192, i32 32)
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
