; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_generic_hdmi_build_pcms.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_generic_hdmi_build_pcms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hda_pcm* }
%struct.hda_pcm = type { i32, %struct.hda_pcm_stream*, i32 }
%struct.hda_pcm_stream = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"HDMI %d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HDA_PCM_TYPE_HDMI = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@generic_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @generic_hdmi_build_pcms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_hdmi_build_pcms(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hdmi_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_pcm*, align 8
  %7 = alloca %struct.hda_pcm_stream*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.hdmi_spec*, %struct.hdmi_spec** %9, align 8
  store %struct.hdmi_spec* %10, %struct.hdmi_spec** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %65, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %14 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %17 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %15, %18
  %20 = sub nsw i32 %19, 1
  %21 = icmp slt i32 %12, %20
  br i1 %21, label %22, label %68

22:                                               ; preds = %11
  %23 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.hda_pcm* @snd_hda_codec_pcm_new(%struct.hda_codec* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %24)
  store %struct.hda_pcm* %25, %struct.hda_pcm** %6, align 8
  %26 = load %struct.hda_pcm*, %struct.hda_pcm** %6, align 8
  %27 = icmp ne %struct.hda_pcm* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %69

31:                                               ; preds = %22
  %32 = load %struct.hda_pcm*, %struct.hda_pcm** %6, align 8
  %33 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %34 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store %struct.hda_pcm* %32, %struct.hda_pcm** %39, align 8
  %40 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %41 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load i32, i32* @HDA_PCM_TYPE_HDMI, align 4
  %45 = load %struct.hda_pcm*, %struct.hda_pcm** %6, align 8
  %46 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.hda_pcm*, %struct.hda_pcm** %6, align 8
  %48 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.hda_pcm*, %struct.hda_pcm** %6, align 8
  %50 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %49, i32 0, i32 1
  %51 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %50, align 8
  %52 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %53 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %51, i64 %52
  store %struct.hda_pcm_stream* %53, %struct.hda_pcm_stream** %7, align 8
  %54 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %55 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load i32, i32* @generic_ops, align 4
  %57 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %58 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %60 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp sge i32 %61, 16
  br i1 %62, label %63, label %64

63:                                               ; preds = %31
  br label %68

64:                                               ; preds = %31
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %11

68:                                               ; preds = %63, %11
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %28
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.hda_pcm* @snd_hda_codec_pcm_new(%struct.hda_codec*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
