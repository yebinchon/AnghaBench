; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-pcm.c_hda_dsp_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-pcm.c_hda_dsp_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.sof_intel_hda_dev* }
%struct.sof_intel_hda_dev = type { i32 }
%struct.snd_pcm_substream = type { i64, %struct.TYPE_10__*, %struct.snd_soc_pcm_runtime* }
%struct.TYPE_10__ = type { %struct.hdac_stream* }
%struct.hdac_stream = type { i32, i64 }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.snd_sof_pcm = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [37 x i8] c"warn: can't find PCM with DAI ID %d\0A\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@HDA_DSP_HDA_BAR = common dso_local global i32 0, align 4
@AZX_REG_VS_SDXDPIB_XBASE = common dso_local global i64 0, align 8
@AZX_REG_VS_SDXDPIB_XINTERVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"PCM: stream %d dir %d position %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hda_dsp_pcm_pointer(%struct.snd_sof_dev* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.snd_sof_dev*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.hdac_stream*, align 8
  %8 = alloca %struct.sof_intel_hda_dev*, align 8
  %9 = alloca %struct.snd_sof_pcm*, align 8
  %10 = alloca i64, align 8
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 2
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %12, align 8
  store %struct.snd_soc_pcm_runtime* %13, %struct.snd_soc_pcm_runtime** %6, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.hdac_stream*, %struct.hdac_stream** %17, align 8
  store %struct.hdac_stream* %18, %struct.hdac_stream** %7, align 8
  %19 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %20 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.sof_intel_hda_dev*, %struct.sof_intel_hda_dev** %22, align 8
  store %struct.sof_intel_hda_dev* %23, %struct.sof_intel_hda_dev** %8, align 8
  %24 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %25 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %26 = call %struct.snd_sof_pcm* @snd_sof_find_spcm_dai(%struct.snd_sof_dev* %24, %struct.snd_soc_pcm_runtime* %25)
  store %struct.snd_sof_pcm* %26, %struct.snd_sof_pcm** %9, align 8
  %27 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %9, align 8
  %28 = icmp ne %struct.snd_sof_pcm* %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %2
  %30 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %31 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %34 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_warn_ratelimited(i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i64 0, i64* %3, align 8
  br label %117

39:                                               ; preds = %2
  %40 = load %struct.sof_intel_hda_dev*, %struct.sof_intel_hda_dev** %8, align 8
  %41 = icmp ne %struct.sof_intel_hda_dev* %40, null
  br i1 %41, label %42, label %58

42:                                               ; preds = %39
  %43 = load %struct.sof_intel_hda_dev*, %struct.sof_intel_hda_dev** %8, align 8
  %44 = getelementptr inbounds %struct.sof_intel_hda_dev, %struct.sof_intel_hda_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %42
  %48 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %9, align 8
  %49 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %10, align 8
  br label %99

58:                                               ; preds = %42, %39
  %59 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %58
  %65 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %66 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %67 = load i64, i64* @AZX_REG_VS_SDXDPIB_XBASE, align 8
  %68 = load i32, i32* @AZX_REG_VS_SDXDPIB_XINTERVAL, align 4
  %69 = load %struct.hdac_stream*, %struct.hdac_stream** %7, align 8
  %70 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = mul nsw i32 %68, %71
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %67, %73
  %75 = call i64 @snd_sof_dsp_read(%struct.snd_sof_dev* %65, i32 %66, i64 %74)
  store i64 %75, i64* %10, align 8
  br label %91

76:                                               ; preds = %58
  %77 = call i32 @usleep_range(i32 20, i32 21)
  %78 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %79 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %80 = load i64, i64* @AZX_REG_VS_SDXDPIB_XBASE, align 8
  %81 = load i32, i32* @AZX_REG_VS_SDXDPIB_XINTERVAL, align 4
  %82 = load %struct.hdac_stream*, %struct.hdac_stream** %7, align 8
  %83 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 %81, %84
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %80, %86
  %88 = call i64 @snd_sof_dsp_read(%struct.snd_sof_dev* %78, i32 %79, i64 %87)
  %89 = load %struct.hdac_stream*, %struct.hdac_stream** %7, align 8
  %90 = call i64 @snd_hdac_stream_get_pos_posbuf(%struct.hdac_stream* %89)
  store i64 %90, i64* %10, align 8
  br label %91

91:                                               ; preds = %76, %64
  %92 = load i64, i64* %10, align 8
  %93 = load %struct.hdac_stream*, %struct.hdac_stream** %7, align 8
  %94 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp sge i64 %92, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i64 0, i64* %10, align 8
  br label %98

98:                                               ; preds = %97, %91
  br label %99

99:                                               ; preds = %98, %47
  %100 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %101 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %100, i32 0, i32 1
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = load i64, i64* %10, align 8
  %104 = call i64 @bytes_to_frames(%struct.TYPE_10__* %102, i64 %103)
  store i64 %104, i64* %10, align 8
  %105 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %106 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.hdac_stream*, %struct.hdac_stream** %7, align 8
  %109 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %112 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %10, align 8
  %115 = call i32 @dev_vdbg(i32 %107, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %110, i64 %113, i64 %114)
  %116 = load i64, i64* %10, align 8
  store i64 %116, i64* %3, align 8
  br label %117

117:                                              ; preds = %99, %29
  %118 = load i64, i64* %3, align 8
  ret i64 %118
}

declare dso_local %struct.snd_sof_pcm* @snd_sof_find_spcm_dai(%struct.snd_sof_dev*, %struct.snd_soc_pcm_runtime*) #1

declare dso_local i32 @dev_warn_ratelimited(i32, i8*, i32) #1

declare dso_local i64 @snd_sof_dsp_read(%struct.snd_sof_dev*, i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @snd_hdac_stream_get_pos_posbuf(%struct.hdac_stream*) #1

declare dso_local i64 @bytes_to_frames(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
