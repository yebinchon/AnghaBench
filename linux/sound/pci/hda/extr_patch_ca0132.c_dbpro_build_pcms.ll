; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dbpro_build_pcms.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dbpro_build_pcms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i64, i64, i64* }
%struct.hda_pcm = type { %struct.TYPE_4__*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"CA0132 Alt Analog\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@ca0132_pcm_analog_capture = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"CA0132 Digital\00", align 1
@HDA_PCM_TYPE_SPDIF = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@ca0132_pcm_digital_playback = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ca0132_pcm_digital_capture = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @dbpro_build_pcms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbpro_build_pcms(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.ca0132_spec*, align 8
  %5 = alloca %struct.hda_pcm*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 0
  %8 = load %struct.ca0132_spec*, %struct.ca0132_spec** %7, align 8
  store %struct.ca0132_spec* %8, %struct.ca0132_spec** %4, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %10 = call %struct.hda_pcm* @snd_hda_codec_pcm_new(%struct.hda_codec* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store %struct.hda_pcm* %10, %struct.hda_pcm** %5, align 8
  %11 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %12 = icmp ne %struct.hda_pcm* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %104

16:                                               ; preds = %1
  %17 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %18 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %20
  %22 = bitcast %struct.TYPE_4__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.TYPE_4__* @ca0132_pcm_analog_capture to i8*), i64 16, i1 false)
  %23 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %24 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %30 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %29, i32 0, i32 2
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %35 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i64 %33, i64* %39, align 8
  %40 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %41 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %16
  %45 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %46 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %104

50:                                               ; preds = %44, %16
  %51 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %52 = call %struct.hda_pcm* @snd_hda_codec_pcm_new(%struct.hda_codec* %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store %struct.hda_pcm* %52, %struct.hda_pcm** %5, align 8
  %53 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %54 = icmp ne %struct.hda_pcm* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %104

58:                                               ; preds = %50
  %59 = load i32, i32* @HDA_PCM_TYPE_SPDIF, align 4
  %60 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %61 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %63 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %58
  %67 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %68 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %70
  %72 = bitcast %struct.TYPE_4__* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 bitcast (%struct.TYPE_4__* @ca0132_pcm_digital_playback to i8*), i64 16, i1 false)
  %73 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %74 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %77 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i64 %75, i64* %81, align 8
  br label %82

82:                                               ; preds = %66, %58
  %83 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %84 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %82
  %88 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %89 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %91
  %93 = bitcast %struct.TYPE_4__* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 bitcast (%struct.TYPE_4__* @ca0132_pcm_digital_capture to i8*), i64 16, i1 false)
  %94 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %95 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %98 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i64 %96, i64* %102, align 8
  br label %103

103:                                              ; preds = %87, %82
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %55, %49, %13
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

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
