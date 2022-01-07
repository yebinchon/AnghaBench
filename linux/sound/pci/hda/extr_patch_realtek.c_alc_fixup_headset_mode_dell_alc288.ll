; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_fixup_headset_mode_dell_alc288.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_fixup_headset_mode_dell_alc288.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hda_fixup = type { i32 }

@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@alc288_update_headset_jack_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_fixup*, i32)* @alc_fixup_headset_mode_dell_alc288 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_fixup_headset_mode_dell_alc288(%struct.hda_codec* %0, %struct.hda_fixup* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hda_fixup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.alc_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hda_fixup* %1, %struct.hda_fixup** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = load %struct.hda_fixup*, %struct.hda_fixup** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @alc_fixup_headset_mode(%struct.hda_codec* %8, %struct.hda_fixup* %9, i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 0
  %18 = load %struct.alc_spec*, %struct.alc_spec** %17, align 8
  store %struct.alc_spec* %18, %struct.alc_spec** %7, align 8
  %19 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  %20 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, 64
  store i32 %22, i32* %20, align 4
  %23 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  %24 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, 64
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @alc288_update_headset_jack_cb, align 4
  %28 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  %29 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  br label %31

31:                                               ; preds = %15, %3
  ret void
}

declare dso_local i32 @alc_fixup_headset_mode(%struct.hda_codec*, %struct.hda_fixup*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
