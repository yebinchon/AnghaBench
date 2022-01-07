; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_auto_init_amp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_auto_init_amp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32)* @alc_auto_init_amp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_auto_init_amp(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %6 = call i32 @alc_auto_setup_eapd(%struct.hda_codec* %5, i32 1)
  %7 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %8 = call i32 @alc_write_gpio(%struct.hda_codec* %7)
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %25 [
    i32 128, label %10
  ]

10:                                               ; preds = %2
  %11 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %24 [
    i32 283902560, label %15
    i32 283904128, label %18
    i32 283904130, label %18
    i32 283904131, label %18
    i32 283904133, label %18
    i32 283904136, label %21
  ]

15:                                               ; preds = %10
  %16 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %17 = call i32 @alc_update_coefex_idx(%struct.hda_codec* %16, i32 26, i32 7, i32 0, i32 8208)
  br label %24

18:                                               ; preds = %10, %10, %10, %10
  %19 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %20 = call i32 @alc_update_coef_idx(%struct.hda_codec* %19, i32 7, i32 0, i32 8240)
  br label %24

21:                                               ; preds = %10
  %22 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %23 = call i32 @alc888_coef_init(%struct.hda_codec* %22)
  br label %24

24:                                               ; preds = %10, %21, %18, %15
  br label %25

25:                                               ; preds = %2, %24
  ret void
}

declare dso_local i32 @alc_auto_setup_eapd(%struct.hda_codec*, i32) #1

declare dso_local i32 @alc_write_gpio(%struct.hda_codec*) #1

declare dso_local i32 @alc_update_coefex_idx(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @alc_update_coef_idx(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @alc888_coef_init(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
