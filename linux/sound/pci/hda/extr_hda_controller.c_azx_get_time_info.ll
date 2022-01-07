; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_get_time_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_get_time_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.timespec = type { i32 }
%struct.snd_pcm_audio_tstamp_config = type { i64, i64 }
%struct.snd_pcm_audio_tstamp_report = type { i32, i32, i64 }
%struct.azx_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.system_device_crosststamp = type { i32, i32, i32 }

@SNDRV_PCM_INFO_HAS_LINK_ATIME = common dso_local global i32 0, align 4
@SNDRV_PCM_AUDIO_TSTAMP_TYPE_LINK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_AUDIO_TSTAMP_TYPE_LINK_SYNCHRONIZED = common dso_local global i64 0, align 8
@SNDRV_PCM_AUDIO_TSTAMP_TYPE_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.timespec*, %struct.timespec*, %struct.snd_pcm_audio_tstamp_config*, %struct.snd_pcm_audio_tstamp_report*)* @azx_get_time_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_get_time_info(%struct.snd_pcm_substream* %0, %struct.timespec* %1, %struct.timespec* %2, %struct.snd_pcm_audio_tstamp_config* %3, %struct.snd_pcm_audio_tstamp_report* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.timespec*, align 8
  %9 = alloca %struct.timespec*, align 8
  %10 = alloca %struct.snd_pcm_audio_tstamp_config*, align 8
  %11 = alloca %struct.snd_pcm_audio_tstamp_report*, align 8
  %12 = alloca %struct.azx_dev*, align 8
  %13 = alloca %struct.snd_pcm_runtime*, align 8
  %14 = alloca %struct.system_device_crosststamp, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.timespec, align 4
  %18 = alloca %struct.timespec, align 4
  %19 = alloca %struct.timespec, align 4
  %20 = alloca %struct.timespec, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %7, align 8
  store %struct.timespec* %1, %struct.timespec** %8, align 8
  store %struct.timespec* %2, %struct.timespec** %9, align 8
  store %struct.snd_pcm_audio_tstamp_config* %3, %struct.snd_pcm_audio_tstamp_config** %10, align 8
  store %struct.snd_pcm_audio_tstamp_report* %4, %struct.snd_pcm_audio_tstamp_report** %11, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %22 = call %struct.azx_dev* @get_azx_dev(%struct.snd_pcm_substream* %21)
  store %struct.azx_dev* %22, %struct.azx_dev** %12, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %23, i32 0, i32 0
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %24, align 8
  store %struct.snd_pcm_runtime* %25, %struct.snd_pcm_runtime** %13, align 8
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %27, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SNDRV_PCM_INFO_HAS_LINK_ATIME, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %75

35:                                               ; preds = %5
  %36 = load %struct.snd_pcm_audio_tstamp_config*, %struct.snd_pcm_audio_tstamp_config** %10, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_config* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SNDRV_PCM_AUDIO_TSTAMP_TYPE_LINK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %75

41:                                               ; preds = %35
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %42, i32 0, i32 0
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %43, align 8
  %45 = load %struct.timespec*, %struct.timespec** %8, align 8
  %46 = call i32 @snd_pcm_gettime(%struct.snd_pcm_runtime* %44, %struct.timespec* %45)
  %47 = load %struct.azx_dev*, %struct.azx_dev** %12, align 8
  %48 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @timecounter_read(i32* %49)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = call i32 @div_u64(i32 %51, i32 3)
  store i32 %52, i32* %16, align 4
  %53 = load %struct.snd_pcm_audio_tstamp_config*, %struct.snd_pcm_audio_tstamp_config** %10, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_config* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %41
  %58 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @azx_adjust_codec_delay(%struct.snd_pcm_substream* %58, i32 %59)
  store i32 %60, i32* %16, align 4
  br label %61

61:                                               ; preds = %57, %41
  %62 = load %struct.timespec*, %struct.timespec** %9, align 8
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @ns_to_timespec(i32 %63)
  %65 = getelementptr inbounds %struct.timespec, %struct.timespec* %17, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = bitcast %struct.timespec* %62 to i8*
  %67 = bitcast %struct.timespec* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 4, i1 false)
  %68 = load i64, i64* @SNDRV_PCM_AUDIO_TSTAMP_TYPE_LINK, align 8
  %69 = load %struct.snd_pcm_audio_tstamp_report*, %struct.snd_pcm_audio_tstamp_report** %11, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_audio_tstamp_report, %struct.snd_pcm_audio_tstamp_report* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  %71 = load %struct.snd_pcm_audio_tstamp_report*, %struct.snd_pcm_audio_tstamp_report** %11, align 8
  %72 = getelementptr inbounds %struct.snd_pcm_audio_tstamp_report, %struct.snd_pcm_audio_tstamp_report* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.snd_pcm_audio_tstamp_report*, %struct.snd_pcm_audio_tstamp_report** %11, align 8
  %74 = getelementptr inbounds %struct.snd_pcm_audio_tstamp_report, %struct.snd_pcm_audio_tstamp_report* %73, i32 0, i32 1
  store i32 42, i32* %74, align 4
  br label %130

75:                                               ; preds = %35, %5
  %76 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %77 = load %struct.snd_pcm_audio_tstamp_config*, %struct.snd_pcm_audio_tstamp_config** %10, align 8
  %78 = call i64 @is_link_time_supported(%struct.snd_pcm_runtime* %76, %struct.snd_pcm_audio_tstamp_config* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %125

80:                                               ; preds = %75
  %81 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %82 = call i32 @azx_get_crosststamp(%struct.snd_pcm_substream* %81, %struct.system_device_crosststamp* %14)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %15, align 4
  store i32 %86, i32* %6, align 4
  br label %131

87:                                               ; preds = %80
  %88 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %89 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  switch i32 %90, label %102 [
    i32 129, label %91
    i32 128, label %94
  ]

91:                                               ; preds = %87
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %6, align 4
  br label %131

94:                                               ; preds = %87
  %95 = load %struct.timespec*, %struct.timespec** %8, align 8
  %96 = getelementptr inbounds %struct.system_device_crosststamp, %struct.system_device_crosststamp* %14, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ktime_to_timespec(i32 %97)
  %99 = getelementptr inbounds %struct.timespec, %struct.timespec* %18, i32 0, i32 0
  store i32 %98, i32* %99, align 4
  %100 = bitcast %struct.timespec* %95 to i8*
  %101 = bitcast %struct.timespec* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 4 %101, i64 4, i1 false)
  br label %110

102:                                              ; preds = %87
  %103 = load %struct.timespec*, %struct.timespec** %8, align 8
  %104 = getelementptr inbounds %struct.system_device_crosststamp, %struct.system_device_crosststamp* %14, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ktime_to_timespec(i32 %105)
  %107 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i32 0, i32 0
  store i32 %106, i32* %107, align 4
  %108 = bitcast %struct.timespec* %103 to i8*
  %109 = bitcast %struct.timespec* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %108, i8* align 4 %109, i64 4, i1 false)
  br label %110

110:                                              ; preds = %102, %94
  %111 = load %struct.timespec*, %struct.timespec** %9, align 8
  %112 = getelementptr inbounds %struct.system_device_crosststamp, %struct.system_device_crosststamp* %14, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ktime_to_timespec(i32 %113)
  %115 = getelementptr inbounds %struct.timespec, %struct.timespec* %20, i32 0, i32 0
  store i32 %114, i32* %115, align 4
  %116 = bitcast %struct.timespec* %111 to i8*
  %117 = bitcast %struct.timespec* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %116, i8* align 4 %117, i64 4, i1 false)
  %118 = load i64, i64* @SNDRV_PCM_AUDIO_TSTAMP_TYPE_LINK_SYNCHRONIZED, align 8
  %119 = load %struct.snd_pcm_audio_tstamp_report*, %struct.snd_pcm_audio_tstamp_report** %11, align 8
  %120 = getelementptr inbounds %struct.snd_pcm_audio_tstamp_report, %struct.snd_pcm_audio_tstamp_report* %119, i32 0, i32 2
  store i64 %118, i64* %120, align 8
  %121 = load %struct.snd_pcm_audio_tstamp_report*, %struct.snd_pcm_audio_tstamp_report** %11, align 8
  %122 = getelementptr inbounds %struct.snd_pcm_audio_tstamp_report, %struct.snd_pcm_audio_tstamp_report* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  %123 = load %struct.snd_pcm_audio_tstamp_report*, %struct.snd_pcm_audio_tstamp_report** %11, align 8
  %124 = getelementptr inbounds %struct.snd_pcm_audio_tstamp_report, %struct.snd_pcm_audio_tstamp_report* %123, i32 0, i32 1
  store i32 42, i32* %124, align 4
  br label %129

125:                                              ; preds = %75
  %126 = load i64, i64* @SNDRV_PCM_AUDIO_TSTAMP_TYPE_DEFAULT, align 8
  %127 = load %struct.snd_pcm_audio_tstamp_report*, %struct.snd_pcm_audio_tstamp_report** %11, align 8
  %128 = getelementptr inbounds %struct.snd_pcm_audio_tstamp_report, %struct.snd_pcm_audio_tstamp_report* %127, i32 0, i32 2
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %125, %110
  br label %130

130:                                              ; preds = %129, %61
  store i32 0, i32* %6, align 4
  br label %131

131:                                              ; preds = %130, %91, %85
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local %struct.azx_dev* @get_azx_dev(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_gettime(%struct.snd_pcm_runtime*, %struct.timespec*) #1

declare dso_local i32 @timecounter_read(i32*) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @azx_adjust_codec_delay(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @ns_to_timespec(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @is_link_time_supported(%struct.snd_pcm_runtime*, %struct.snd_pcm_audio_tstamp_config*) #1

declare dso_local i32 @azx_get_crosststamp(%struct.snd_pcm_substream*, %struct.system_device_crosststamp*) #1

declare dso_local i32 @ktime_to_timespec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
