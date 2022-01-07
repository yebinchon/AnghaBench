; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_volume_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_volume_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_info = type { i32 }
%struct.hda_codec = type { i32, %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @ca0132_volume_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca0132_volume_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.ca0132_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %4, align 8
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
  %21 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %22 = call i32 @get_amp_direction(%struct.snd_kcontrol* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %76 [
    i32 128, label %24
    i32 129, label %50
  ]

24:                                               ; preds = %2
  %25 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  %26 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %29 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %32 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %10, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i8* @HDA_COMPOSE_AMP_VAL(i32 %34, i32 %35, i32 0, i32 %36)
  %38 = ptrtoint i8* %37 to i64
  %39 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %40 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %42 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %43 = call i32 @snd_hda_mixer_amp_volume_info(%struct.snd_kcontrol* %41, %struct.snd_ctl_elem_info* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i64, i64* %10, align 8
  %45 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %46 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %48 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  br label %80

50:                                               ; preds = %2
  %51 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  %52 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %7, align 4
  %54 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %55 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %54, i32 0, i32 0
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %58 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %10, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i8* @HDA_COMPOSE_AMP_VAL(i32 %60, i32 %61, i32 0, i32 %62)
  %64 = ptrtoint i8* %63 to i64
  %65 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %66 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %68 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %69 = call i32 @snd_hda_mixer_amp_volume_info(%struct.snd_kcontrol* %67, %struct.snd_ctl_elem_info* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %72 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %74 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  br label %80

76:                                               ; preds = %2
  %77 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %78 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %79 = call i32 @snd_hda_mixer_amp_volume_info(%struct.snd_kcontrol* %77, %struct.snd_ctl_elem_info* %78)
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %76, %50, %24
  %81 = load i32, i32* %11, align 4
  ret i32 %81
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @get_amp_nid(%struct.snd_kcontrol*) #1

declare dso_local i32 @get_amp_channels(%struct.snd_kcontrol*) #1

declare dso_local i32 @get_amp_direction(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @HDA_COMPOSE_AMP_VAL(i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_mixer_amp_volume_info(%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
