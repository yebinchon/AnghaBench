; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc269_fixup_limit_int_mic_boost.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc269_fixup_limit_int_mic_boost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.auto_pin_cfg }
%struct.auto_pin_cfg = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.hda_fixup = type { i32 }

@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@AUTO_PIN_MIC = common dso_local global i64 0, align 8
@INPUT_PIN_ATTR_INT = common dso_local global i64 0, align 8
@HDA_INPUT = common dso_local global i32 0, align 4
@AC_AMPCAP_OFFSET_SHIFT = common dso_local global i32 0, align 4
@AC_AMPCAP_NUM_STEPS_SHIFT = common dso_local global i32 0, align 4
@AC_AMPCAP_STEP_SIZE_SHIFT = common dso_local global i32 0, align 4
@AC_AMPCAP_MUTE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_fixup*, i32)* @alc269_fixup_limit_int_mic_boost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc269_fixup_limit_int_mic_boost(%struct.hda_codec* %0, %struct.hda_fixup* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hda_fixup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.alc_spec*, align 8
  %8 = alloca %struct.auto_pin_cfg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hda_fixup* %1, %struct.hda_fixup** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  %14 = load %struct.alc_spec*, %struct.alc_spec** %13, align 8
  store %struct.alc_spec* %14, %struct.alc_spec** %7, align 8
  %15 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  %16 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.auto_pin_cfg* %17, %struct.auto_pin_cfg** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %77

22:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %74, %22
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %8, align 8
  %26 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %77

29:                                               ; preds = %23
  %30 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %8, align 8
  %31 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %10, align 4
  %38 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %8, align 8
  %39 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @AUTO_PIN_MIC, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %29
  br label %74

49:                                               ; preds = %29
  %50 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %50, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i64 @snd_hda_get_input_pin_attr(i32 %53)
  %55 = load i64, i64* @INPUT_PIN_ATTR_INT, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %74

58:                                               ; preds = %49
  %59 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @HDA_INPUT, align 4
  %62 = load i32, i32* @AC_AMPCAP_OFFSET_SHIFT, align 4
  %63 = shl i32 0, %62
  %64 = load i32, i32* @AC_AMPCAP_NUM_STEPS_SHIFT, align 4
  %65 = shl i32 1, %64
  %66 = or i32 %63, %65
  %67 = load i32, i32* @AC_AMPCAP_STEP_SIZE_SHIFT, align 4
  %68 = shl i32 47, %67
  %69 = or i32 %66, %68
  %70 = load i32, i32* @AC_AMPCAP_MUTE_SHIFT, align 4
  %71 = shl i32 0, %70
  %72 = or i32 %69, %71
  %73 = call i32 @snd_hda_override_amp_caps(%struct.hda_codec* %59, i32 %60, i32 %61, i32 %72)
  br label %74

74:                                               ; preds = %58, %57, %48
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %23

77:                                               ; preds = %21, %23
  ret void
}

declare dso_local i32 @snd_hda_codec_get_pincfg(%struct.hda_codec*, i32) #1

declare dso_local i64 @snd_hda_get_input_pin_attr(i32) #1

declare dso_local i32 @snd_hda_override_amp_caps(%struct.hda_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
