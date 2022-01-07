; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_fixup_headset_mode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_fixup_headset_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { i32, i32, i32 }
%struct.hda_fixup = type { i32 }

@HDA_PINCFG_HEADSET_MIC = common dso_local global i32 0, align 4
@HDA_PINCFG_HEADPHONE_MIC = common dso_local global i32 0, align 4
@ALC_HEADSET_MODE_UNKNOWN = common dso_local global i32 0, align 4
@ALC_HEADSET_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_fixup*, i32)* @alc_fixup_headset_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_fixup_headset_mode(%struct.hda_codec* %0, %struct.hda_fixup* %1, i32 %2) #0 {
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
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %41 [
    i32 129, label %12
    i32 128, label %20
    i32 130, label %23
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @HDA_PINCFG_HEADSET_MIC, align 4
  %14 = load i32, i32* @HDA_PINCFG_HEADPHONE_MIC, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  %17 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %41

20:                                               ; preds = %3
  %21 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %22 = call i32 @alc_probe_headset_mode(%struct.hda_codec* %21)
  br label %41

23:                                               ; preds = %3
  %24 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %25 = call i32 @is_s3_resume(%struct.hda_codec* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %29 = call i32 @is_s4_resume(%struct.hda_codec* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27, %23
  %32 = load i32, i32* @ALC_HEADSET_MODE_UNKNOWN, align 4
  %33 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  %34 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @ALC_HEADSET_TYPE_UNKNOWN, align 4
  %36 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  %37 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %31, %27
  %39 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %40 = call i32 @alc_update_headset_mode(%struct.hda_codec* %39)
  br label %41

41:                                               ; preds = %3, %38, %20, %12
  ret void
}

declare dso_local i32 @alc_probe_headset_mode(%struct.hda_codec*) #1

declare dso_local i32 @is_s3_resume(%struct.hda_codec*) #1

declare dso_local i32 @is_s4_resume(%struct.hda_codec*) #1

declare dso_local i32 @alc_update_headset_mode(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
