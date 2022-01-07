; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_sbz_detect_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_sbz_detect_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_2__, %struct.ca0132_spec* }
%struct.TYPE_2__ = type { i32 }
%struct.ca0132_spec = type { i32 }

@QUIRK_ZXR = common dso_local global i32 0, align 4
@QUIRK_ZXR_DBPRO = common dso_local global i32 0, align 4
@QUIRK_SBZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @sbz_detect_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbz_detect_quirk(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 1
  %6 = load %struct.ca0132_spec*, %struct.ca0132_spec** %5, align 8
  store %struct.ca0132_spec* %6, %struct.ca0132_spec** %3, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %19 [
    i32 285343795, label %11
    i32 285343807, label %15
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @QUIRK_ZXR, align 4
  %13 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %14 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %23

15:                                               ; preds = %1
  %16 = load i32, i32* @QUIRK_ZXR_DBPRO, align 4
  %17 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %18 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @QUIRK_SBZ, align 4
  %21 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %22 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %19, %15, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
