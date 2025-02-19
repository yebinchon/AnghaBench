; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc280_fixup_hp_9480m.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc280_fixup_hp_9480m.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hda_fixup = type { i32 }

@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@alc280_hp_gpio4_automute_hook = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_fixup*, i32)* @alc280_fixup_hp_9480m to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc280_fixup_hp_9480m(%struct.hda_codec* %0, %struct.hda_fixup* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hda_fixup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.alc_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hda_fixup* %1, %struct.hda_fixup** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.alc_spec*, %struct.alc_spec** %9, align 8
  store %struct.alc_spec* %10, %struct.alc_spec** %7, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @alc_fixup_hp_gpio_led(%struct.hda_codec* %11, i32 %12, i32 8, i32 0)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %3
  %18 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  %19 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, 16
  store i32 %21, i32* %19, align 4
  %22 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  %23 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, 16
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @alc280_hp_gpio4_automute_hook, align 4
  %27 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  %28 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  br label %30

30:                                               ; preds = %17, %3
  ret void
}

declare dso_local i32 @alc_fixup_hp_gpio_led(%struct.hda_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
