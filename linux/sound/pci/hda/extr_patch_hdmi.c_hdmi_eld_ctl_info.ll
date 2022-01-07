; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_eld_ctl_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_eld_ctl_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_info = type { i32, i32 }
%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32 }
%struct.hdmi_spec_per_pin = type { %struct.hdmi_eld }
%struct.hdmi_eld = type { i32, i64 }

@SNDRV_CTL_ELEM_TYPE_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @hdmi_eld_ctl_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_eld_ctl_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.hdmi_spec*, align 8
  %7 = alloca %struct.hdmi_spec_per_pin*, align 8
  %8 = alloca %struct.hdmi_eld*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.hda_codec* %11, %struct.hda_codec** %5, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  %14 = load %struct.hdmi_spec*, %struct.hdmi_spec** %13, align 8
  store %struct.hdmi_spec* %14, %struct.hdmi_spec** %6, align 8
  %15 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_BYTES, align 4
  %16 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %19 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %22 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call %struct.hdmi_spec_per_pin* @pcm_idx_to_pin(%struct.hdmi_spec* %24, i32 %25)
  store %struct.hdmi_spec_per_pin* %26, %struct.hdmi_spec_per_pin** %7, align 8
  %27 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %7, align 8
  %28 = icmp ne %struct.hdmi_spec_per_pin* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %31 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  br label %48

32:                                               ; preds = %2
  %33 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %7, align 8
  %34 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %33, i32 0, i32 0
  store %struct.hdmi_eld* %34, %struct.hdmi_eld** %8, align 8
  %35 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %36 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %41 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  br label %44

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i32 [ %42, %39 ], [ 0, %43 ]
  %46 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %47 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %29
  %49 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %50 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  ret i32 0
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.hdmi_spec_per_pin* @pcm_idx_to_pin(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
