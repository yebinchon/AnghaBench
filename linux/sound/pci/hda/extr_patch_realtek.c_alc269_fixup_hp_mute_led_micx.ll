; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc269_fixup_hp_mute_led_micx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc269_fixup_hp_mute_led_micx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.alc_spec* }
%struct.alc_spec = type { %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hda_fixup = type { i32 }

@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@alc269_fixup_mic_mute_hook = common dso_local global i32 0, align 4
@led_power_filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_fixup*, i32, i32)* @alc269_fixup_hp_mute_led_micx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc269_fixup_hp_mute_led_micx(%struct.hda_codec* %0, %struct.hda_fixup* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.hda_fixup*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.alc_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store %struct.hda_fixup* %1, %struct.hda_fixup** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 1
  %12 = load %struct.alc_spec*, %struct.alc_spec** %11, align 8
  store %struct.alc_spec* %12, %struct.alc_spec** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %4
  %17 = load %struct.alc_spec*, %struct.alc_spec** %9, align 8
  %18 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.alc_spec*, %struct.alc_spec** %9, align 8
  %21 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @alc269_fixup_mic_mute_hook, align 4
  %23 = load %struct.alc_spec*, %struct.alc_spec** %9, align 8
  %24 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 4
  %27 = load %struct.alc_spec*, %struct.alc_spec** %9, align 8
  %28 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load i32, i32* @led_power_filter, align 4
  %31 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %32 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %16, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
