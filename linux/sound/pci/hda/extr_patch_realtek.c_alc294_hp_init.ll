; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc294_hp_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc294_hp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { i32 }

@AC_VERB_SET_AMP_GAIN_MUTE = common dso_local global i32 0, align 4
@AMP_OUT_MUTE = common dso_local global i32 0, align 4
@AC_VERB_SET_PIN_WIDGET_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @alc294_hp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc294_hp_init(%struct.hda_codec* %0) #0 {
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
  br label %58

15:                                               ; preds = %1
  %16 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  %19 = load i32, i32* @AMP_OUT_MUTE, align 4
  %20 = call i32 @snd_hda_codec_write(%struct.hda_codec* %16, i32 %17, i32 0, i32 %18, i32 %19)
  %21 = call i32 @msleep(i32 100)
  %22 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %23 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %15
  %27 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @AC_VERB_SET_PIN_WIDGET_CONTROL, align 4
  %30 = call i32 @snd_hda_codec_write(%struct.hda_codec* %27, i32 %28, i32 0, i32 %29, i32 0)
  br label %31

31:                                               ; preds = %26, %15
  %32 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %33 = call i32 @alc_update_coef_idx(%struct.hda_codec* %32, i32 111, i32 15, i32 0)
  %34 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %35 = call i32 @alc_update_coefex_idx(%struct.hda_codec* %34, i32 88, i32 0, i32 32768, i32 32768)
  %36 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %37 = call i32 @alc_read_coefex_idx(%struct.hda_codec* %36, i32 88, i32 1)
  store i32 %37, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %51, %31
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 20
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, 128
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi i1 [ false, %38 ], [ %44, %41 ]
  br i1 %46, label %47, label %54

47:                                               ; preds = %45
  %48 = call i32 @msleep(i32 50)
  %49 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %50 = call i32 @alc_read_coefex_idx(%struct.hda_codec* %49, i32 88, i32 1)
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %38

54:                                               ; preds = %45
  %55 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %56 = call i32 @alc_update_coef_idx(%struct.hda_codec* %55, i32 111, i32 15, i32 11)
  %57 = call i32 @msleep(i32 50)
  br label %58

58:                                               ; preds = %54, %14
  ret void
}

declare dso_local i32 @alc_get_hp_pin(%struct.alc_spec*) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @alc_update_coef_idx(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @alc_update_coefex_idx(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @alc_read_coefex_idx(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
