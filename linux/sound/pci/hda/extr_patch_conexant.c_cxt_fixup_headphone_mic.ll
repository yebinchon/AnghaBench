; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_conexant.c_cxt_fixup_headphone_mic.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_conexant.c_cxt_fixup_headphone_mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.conexant_spec* }
%struct.conexant_spec = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.hda_codec*)*, i32 }
%struct.hda_fixup = type { i32 }

@HDA_PINCFG_HEADPHONE_MIC = common dso_local global i32 0, align 4
@cxt_update_headset_mode_hook = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_fixup*, i32)* @cxt_fixup_headphone_mic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxt_fixup_headphone_mic(%struct.hda_codec* %0, %struct.hda_fixup* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hda_fixup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.conexant_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hda_fixup* %1, %struct.hda_fixup** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 1
  %10 = load %struct.conexant_spec*, %struct.conexant_spec** %9, align 8
  store %struct.conexant_spec* %10, %struct.conexant_spec** %7, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %37 [
    i32 129, label %12
    i32 128, label %21
    i32 130, label %34
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @HDA_PINCFG_HEADPHONE_MIC, align 4
  %14 = load %struct.conexant_spec*, %struct.conexant_spec** %7, align 8
  %15 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %19 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %18, i32 0, i32 0
  %20 = call i32 @snd_hdac_regmap_add_vendor_verb(i32* %19, i32 1040)
  br label %37

21:                                               ; preds = %3
  %22 = load %struct.conexant_spec*, %struct.conexant_spec** %7, align 8
  %23 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load i32, i32* @cxt_update_headset_mode_hook, align 4
  %28 = load %struct.conexant_spec*, %struct.conexant_spec** %7, align 8
  %29 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 8
  %31 = load %struct.conexant_spec*, %struct.conexant_spec** %7, align 8
  %32 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 (%struct.hda_codec*)* @cxt_update_headset_mode, i32 (%struct.hda_codec*)** %33, align 8
  br label %37

34:                                               ; preds = %3
  %35 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %36 = call i32 @cxt_update_headset_mode(%struct.hda_codec* %35)
  br label %37

37:                                               ; preds = %3, %34, %21, %12
  ret void
}

declare dso_local i32 @snd_hdac_regmap_add_vendor_verb(i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cxt_update_headset_mode(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
