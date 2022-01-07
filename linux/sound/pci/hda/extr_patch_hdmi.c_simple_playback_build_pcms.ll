; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_simple_playback_build_pcms.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_simple_playback_build_pcms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { %struct.hda_pcm_stream, %struct.TYPE_2__* }
%struct.hda_pcm_stream = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.hda_pcm* }
%struct.hda_pcm = type { %struct.hda_pcm_stream*, i32 }
%struct.hdmi_spec_per_cvt = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"HDMI 0\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HDA_PCM_TYPE_HDMI = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @simple_playback_build_pcms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_playback_build_pcms(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hdmi_spec*, align 8
  %5 = alloca %struct.hda_pcm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_pcm_stream*, align 8
  %8 = alloca %struct.hdmi_spec_per_cvt*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 0
  %11 = load %struct.hdmi_spec*, %struct.hdmi_spec** %10, align 8
  store %struct.hdmi_spec* %11, %struct.hdmi_spec** %4, align 8
  %12 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %13 = call %struct.hdmi_spec_per_cvt* @get_cvt(%struct.hdmi_spec* %12, i32 0)
  store %struct.hdmi_spec_per_cvt* %13, %struct.hdmi_spec_per_cvt** %8, align 8
  %14 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %15 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %8, align 8
  %16 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @get_wcaps(%struct.hda_codec* %14, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @get_wcaps_channels(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %22 = call %struct.hda_pcm* @snd_hda_codec_pcm_new(%struct.hda_codec* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.hda_pcm* %22, %struct.hda_pcm** %5, align 8
  %23 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %24 = icmp ne %struct.hda_pcm* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %68

28:                                               ; preds = %1
  %29 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %30 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %31 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store %struct.hda_pcm* %29, %struct.hda_pcm** %34, align 8
  %35 = load i32, i32* @HDA_PCM_TYPE_HDMI, align 4
  %36 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %37 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %39 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %38, i32 0, i32 0
  %40 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %39, align 8
  %41 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %42 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %40, i64 %41
  store %struct.hda_pcm_stream* %42, %struct.hda_pcm_stream** %7, align 8
  %43 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %44 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %45 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %44, i32 0, i32 0
  %46 = bitcast %struct.hda_pcm_stream* %43 to i8*
  %47 = bitcast %struct.hda_pcm_stream* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 8 %47, i64 8, i1 false)
  %48 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %8, align 8
  %49 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %52 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %54 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sle i32 %55, 2
  br i1 %56, label %57, label %67

57:                                               ; preds = %28
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = icmp ule i32 %61, 16
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %66 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %63, %60, %57, %28
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %25
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.hdmi_spec_per_cvt* @get_cvt(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i32) #1

declare dso_local i32 @get_wcaps_channels(i32) #1

declare dso_local %struct.hda_pcm* @snd_hda_codec_pcm_new(%struct.hda_codec*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
