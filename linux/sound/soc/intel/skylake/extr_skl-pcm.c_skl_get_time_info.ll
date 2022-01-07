; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-pcm.c_skl_get_time_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-pcm.c_skl_get_time_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.timespec = type { i32 }
%struct.snd_pcm_audio_tstamp_config = type { i64, i64 }
%struct.snd_pcm_audio_tstamp_report = type { i32, i32, i64 }
%struct.hdac_ext_stream = type { i32 }
%struct.hdac_stream = type { i32 }

@SNDRV_PCM_INFO_HAS_LINK_ATIME = common dso_local global i32 0, align 4
@SNDRV_PCM_AUDIO_TSTAMP_TYPE_LINK = common dso_local global i64 0, align 8
@SNDRV_PCM_AUDIO_TSTAMP_TYPE_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.timespec*, %struct.timespec*, %struct.snd_pcm_audio_tstamp_config*, %struct.snd_pcm_audio_tstamp_report*)* @skl_get_time_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_get_time_info(%struct.snd_pcm_substream* %0, %struct.timespec* %1, %struct.timespec* %2, %struct.snd_pcm_audio_tstamp_config* %3, %struct.snd_pcm_audio_tstamp_report* %4) #0 {
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.timespec*, align 8
  %8 = alloca %struct.timespec*, align 8
  %9 = alloca %struct.snd_pcm_audio_tstamp_config*, align 8
  %10 = alloca %struct.snd_pcm_audio_tstamp_report*, align 8
  %11 = alloca %struct.hdac_ext_stream*, align 8
  %12 = alloca %struct.hdac_stream*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.timespec, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %6, align 8
  store %struct.timespec* %1, %struct.timespec** %7, align 8
  store %struct.timespec* %2, %struct.timespec** %8, align 8
  store %struct.snd_pcm_audio_tstamp_config* %3, %struct.snd_pcm_audio_tstamp_config** %9, align 8
  store %struct.snd_pcm_audio_tstamp_report* %4, %struct.snd_pcm_audio_tstamp_report** %10, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %16 = call %struct.hdac_ext_stream* @get_hdac_ext_stream(%struct.snd_pcm_substream* %15)
  store %struct.hdac_ext_stream* %16, %struct.hdac_ext_stream** %11, align 8
  %17 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %11, align 8
  %18 = call %struct.hdac_stream* @hdac_stream(%struct.hdac_ext_stream* %17)
  store %struct.hdac_stream* %18, %struct.hdac_stream** %12, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SNDRV_PCM_INFO_HAS_LINK_ATIME, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %67

28:                                               ; preds = %5
  %29 = load %struct.snd_pcm_audio_tstamp_config*, %struct.snd_pcm_audio_tstamp_config** %9, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_config* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SNDRV_PCM_AUDIO_TSTAMP_TYPE_LINK, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %67

34:                                               ; preds = %28
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load %struct.timespec*, %struct.timespec** %7, align 8
  %39 = call i32 @snd_pcm_gettime(%struct.TYPE_4__* %37, %struct.timespec* %38)
  %40 = load %struct.hdac_stream*, %struct.hdac_stream** %12, align 8
  %41 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %40, i32 0, i32 0
  %42 = call i32 @timecounter_read(i32* %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @div_u64(i32 %43, i32 3)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.snd_pcm_audio_tstamp_config*, %struct.snd_pcm_audio_tstamp_config** %9, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_config* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %34
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @skl_adjust_codec_delay(%struct.snd_pcm_substream* %50, i32 %51)
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %49, %34
  %54 = load %struct.timespec*, %struct.timespec** %8, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @ns_to_timespec(i32 %55)
  %57 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = bitcast %struct.timespec* %54 to i8*
  %59 = bitcast %struct.timespec* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 4, i1 false)
  %60 = load i64, i64* @SNDRV_PCM_AUDIO_TSTAMP_TYPE_LINK, align 8
  %61 = load %struct.snd_pcm_audio_tstamp_report*, %struct.snd_pcm_audio_tstamp_report** %10, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_audio_tstamp_report, %struct.snd_pcm_audio_tstamp_report* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = load %struct.snd_pcm_audio_tstamp_report*, %struct.snd_pcm_audio_tstamp_report** %10, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_audio_tstamp_report, %struct.snd_pcm_audio_tstamp_report* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.snd_pcm_audio_tstamp_report*, %struct.snd_pcm_audio_tstamp_report** %10, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_audio_tstamp_report, %struct.snd_pcm_audio_tstamp_report* %65, i32 0, i32 1
  store i32 42, i32* %66, align 4
  br label %71

67:                                               ; preds = %28, %5
  %68 = load i64, i64* @SNDRV_PCM_AUDIO_TSTAMP_TYPE_DEFAULT, align 8
  %69 = load %struct.snd_pcm_audio_tstamp_report*, %struct.snd_pcm_audio_tstamp_report** %10, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_audio_tstamp_report, %struct.snd_pcm_audio_tstamp_report* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %67, %53
  ret i32 0
}

declare dso_local %struct.hdac_ext_stream* @get_hdac_ext_stream(%struct.snd_pcm_substream*) #1

declare dso_local %struct.hdac_stream* @hdac_stream(%struct.hdac_ext_stream*) #1

declare dso_local i32 @snd_pcm_gettime(%struct.TYPE_4__*, %struct.timespec*) #1

declare dso_local i32 @timecounter_read(i32*) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @skl_adjust_codec_delay(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @ns_to_timespec(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
