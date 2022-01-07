; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_via.c_vt1708_build_pcms.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_via.c_vt1708_build_pcms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_4__, %struct.via_spec* }
%struct.TYPE_4__ = type { i32 }
%struct.via_spec = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.hda_pcm** }
%struct.hda_pcm = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@HDA_PCM_TYPE_AUDIO = common dso_local global i64 0, align 8
@SNDRV_PCM_FMTBIT_S16_LE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @vt1708_build_pcms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt1708_build_pcms(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.via_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_pcm*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 1
  %10 = load %struct.via_spec*, %struct.via_spec** %9, align 8
  store %struct.via_spec* %10, %struct.via_spec** %4, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %12 = call i32 @snd_hda_gen_build_pcms(%struct.hda_codec* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 285611784
  br i1 %20, label %21, label %23

21:                                               ; preds = %15, %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %72

23:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %68, %23
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %27 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.hda_pcm**, %struct.hda_pcm*** %28, align 8
  %30 = call i32 @ARRAY_SIZE(%struct.hda_pcm** %29)
  %31 = icmp slt i32 %25, %30
  br i1 %31, label %32, label %71

32:                                               ; preds = %24
  %33 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %34 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.hda_pcm**, %struct.hda_pcm*** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.hda_pcm*, %struct.hda_pcm** %36, i64 %38
  %40 = load %struct.hda_pcm*, %struct.hda_pcm** %39, align 8
  store %struct.hda_pcm* %40, %struct.hda_pcm** %7, align 8
  %41 = load %struct.hda_pcm*, %struct.hda_pcm** %7, align 8
  %42 = icmp ne %struct.hda_pcm* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %32
  br label %68

44:                                               ; preds = %32
  %45 = load %struct.hda_pcm*, %struct.hda_pcm** %7, align 8
  %46 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load %struct.hda_pcm*, %struct.hda_pcm** %7, align 8
  %55 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @HDA_PCM_TYPE_AUDIO, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53, %44
  br label %68

60:                                               ; preds = %53
  %61 = load i32, i32* @SNDRV_PCM_FMTBIT_S16_LE, align 4
  %62 = load %struct.hda_pcm*, %struct.hda_pcm** %7, align 8
  %63 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i32 %61, i32* %67, align 4
  br label %68

68:                                               ; preds = %60, %59, %43
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %24

71:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %21
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @snd_hda_gen_build_pcms(%struct.hda_codec*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.hda_pcm**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
