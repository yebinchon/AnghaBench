; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_tegra_hdmi_build_pcms.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_tegra_hdmi_build_pcms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_pcm_stream = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hda_pcm = type { %struct.hda_pcm_stream* }

@HDA_PCM_TYPE_HDMI = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@tegra_hdmi_pcm_prepare = common dso_local global i32 0, align 4
@tegra_hdmi_pcm_cleanup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @tegra_hdmi_build_pcms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_hdmi_build_pcms(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_pcm_stream*, align 8
  %5 = alloca %struct.hda_pcm*, align 8
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %8 = call i32 @generic_hdmi_build_pcms(%struct.hda_codec* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %36

13:                                               ; preds = %1
  %14 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %15 = load i32, i32* @HDA_PCM_TYPE_HDMI, align 4
  %16 = call %struct.hda_pcm* @hda_find_pcm_by_type(%struct.hda_codec* %14, i32 %15)
  store %struct.hda_pcm* %16, %struct.hda_pcm** %5, align 8
  %17 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %18 = icmp ne %struct.hda_pcm* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %36

22:                                               ; preds = %13
  %23 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %24 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %23, i32 0, i32 0
  %25 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %24, align 8
  %26 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %27 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %25, i64 %26
  store %struct.hda_pcm_stream* %27, %struct.hda_pcm_stream** %4, align 8
  %28 = load i32, i32* @tegra_hdmi_pcm_prepare, align 4
  %29 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %4, align 8
  %30 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @tegra_hdmi_pcm_cleanup, align 4
  %33 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %4, align 8
  %34 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %22, %19, %11
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @generic_hdmi_build_pcms(%struct.hda_codec*) #1

declare dso_local %struct.hda_pcm* @hda_find_pcm_by_type(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
