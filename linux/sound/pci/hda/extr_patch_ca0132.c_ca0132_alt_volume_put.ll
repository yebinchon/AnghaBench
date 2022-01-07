; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_alt_volume_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_alt_volume_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.hda_codec = type { i32, %struct.ca0132_spec* }
%struct.ca0132_spec = type { i64*, i64* }

@VNID_SPK = common dso_local global i32 0, align 4
@VNID_MIC = common dso_local global i32 0, align 4
@VNODE_START_NID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @ca0132_alt_volume_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca0132_alt_volume_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.ca0132_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.hda_codec* %13, %struct.hda_codec** %5, align 8
  %14 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 1
  %16 = load %struct.ca0132_spec*, %struct.ca0132_spec** %15, align 8
  store %struct.ca0132_spec* %16, %struct.ca0132_spec** %6, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %18 = call i32 @get_amp_nid(%struct.snd_kcontrol* %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %20 = call i32 @get_amp_channels(%struct.snd_kcontrol* %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %22 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  store i64* %25, i64** %9, align 8
  store i32 0, i32* %10, align 4
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %31 [
    i32 2, label %27
    i32 7, label %29
  ]

27:                                               ; preds = %2
  %28 = load i32, i32* @VNID_SPK, align 4
  store i32 %28, i32* %10, align 4
  br label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @VNID_MIC, align 4
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %2, %29, %27
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load i64*, i64** %9, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  %39 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @VNODE_START_NID, align 4
  %43 = sub nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %40, i64 %44
  store i64 %37, i64* %45, align 8
  %46 = load i64*, i64** %9, align 8
  %47 = getelementptr inbounds i64, i64* %46, i32 1
  store i64* %47, i64** %9, align 8
  br label %48

48:                                               ; preds = %35, %31
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, 2
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = load i64*, i64** %9, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  %56 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @VNODE_START_NID, align 4
  %60 = sub nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %57, i64 %61
  store i64 %54, i64* %62, align 8
  %63 = load i64*, i64** %9, align 8
  %64 = getelementptr inbounds i64, i64* %63, i32 1
  store i64* %64, i64** %9, align 8
  br label %65

65:                                               ; preds = %52, %48
  %66 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %67 = call i32 @snd_hda_power_up(%struct.hda_codec* %66)
  %68 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @ca0132_alt_dsp_volume_put(%struct.hda_codec* %68, i32 %69)
  %71 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %72 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %71, i32 0, i32 0
  %73 = call i32 @mutex_lock(i32* %72)
  %74 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %75 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %76 = call i32 @snd_hda_mixer_amp_volume_put(%struct.snd_kcontrol* %74, %struct.snd_ctl_elem_value* %75)
  store i32 %76, i32* %11, align 4
  %77 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %78 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %81 = call i32 @snd_hda_power_down(%struct.hda_codec* %80)
  %82 = load i32, i32* %11, align 4
  ret i32 %82
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @get_amp_nid(%struct.snd_kcontrol*) #1

declare dso_local i32 @get_amp_channels(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_hda_power_up(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_alt_dsp_volume_put(%struct.hda_codec*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_hda_mixer_amp_volume_put(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_hda_power_down(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
