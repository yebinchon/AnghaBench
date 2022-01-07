; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-pcm.c_skl_link_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-pcm.c_skl_link_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.TYPE_9__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.hdac_bus = type { i32 }
%struct.hdac_ext_stream = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai* }
%struct.skl_pipe_params = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hdac_ext_link = type { i32 }
%struct.TYPE_10__ = type { i32 }

@HDAC_EXT_STREAM_TYPE_LINK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @skl_link_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_link_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.hdac_bus*, align 8
  %9 = alloca %struct.hdac_ext_stream*, align 8
  %10 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %11 = alloca %struct.snd_soc_dai*, align 8
  %12 = alloca %struct.skl_pipe_params, align 8
  %13 = alloca %struct.hdac_ext_link*, align 8
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.hdac_bus* @dev_get_drvdata(i32 %17)
  store %struct.hdac_bus* %18, %struct.hdac_bus** %8, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %20 = call %struct.snd_soc_pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %19)
  store %struct.snd_soc_pcm_runtime* %20, %struct.snd_soc_pcm_runtime** %10, align 8
  %21 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  %22 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %21, i32 0, i32 0
  %23 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %22, align 8
  store %struct.snd_soc_dai* %23, %struct.snd_soc_dai** %11, align 8
  %24 = bitcast %struct.skl_pipe_params* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 40, i1 false)
  %25 = load %struct.hdac_bus*, %struct.hdac_bus** %8, align 8
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %27 = load i32, i32* @HDAC_EXT_STREAM_TYPE_LINK, align 4
  %28 = call %struct.hdac_ext_stream* @snd_hdac_ext_stream_assign(%struct.hdac_bus* %25, %struct.snd_pcm_substream* %26, i32 %27)
  store %struct.hdac_ext_stream* %28, %struct.hdac_ext_stream** %9, align 8
  %29 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %9, align 8
  %30 = icmp ne %struct.hdac_ext_stream* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %119

34:                                               ; preds = %3
  %35 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %37 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %9, align 8
  %38 = bitcast %struct.hdac_ext_stream* %37 to i8*
  %39 = call i32 @snd_soc_dai_set_dma_data(%struct.snd_soc_dai* %35, %struct.snd_pcm_substream* %36, i8* %38)
  %40 = load %struct.hdac_bus*, %struct.hdac_bus** %8, align 8
  %41 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %11, align 8
  %42 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.hdac_ext_link* @snd_hdac_ext_bus_get_link(%struct.hdac_bus* %40, i32 %45)
  store %struct.hdac_ext_link* %46, %struct.hdac_ext_link** %13, align 8
  %47 = load %struct.hdac_ext_link*, %struct.hdac_ext_link** %13, align 8
  %48 = icmp ne %struct.hdac_ext_link* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %34
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %119

52:                                               ; preds = %34
  %53 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %9, align 8
  %54 = call %struct.TYPE_10__* @hdac_stream(%struct.hdac_ext_stream* %53)
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %14, align 4
  %57 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %58 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %11, align 8
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @snd_soc_dai_set_tdm_slot(%struct.snd_soc_dai* %63, i32 %64, i32 0, i32 0, i32 0)
  br label %70

66:                                               ; preds = %52
  %67 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %11, align 8
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @snd_soc_dai_set_tdm_slot(%struct.snd_soc_dai* %67, i32 0, i32 %68, i32 0, i32 0)
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %72 = call i32 @params_format(%struct.snd_pcm_hw_params* %71)
  %73 = call i32 @snd_pcm_format_width(i32 %72)
  %74 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %12, i32 0, i32 7
  store i32 %73, i32* %74, align 8
  %75 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %76 = call i32 @params_channels(%struct.snd_pcm_hw_params* %75)
  %77 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %12, i32 0, i32 6
  store i32 %76, i32* %77, align 4
  %78 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %79 = call i32 @params_rate(%struct.snd_pcm_hw_params* %78)
  %80 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %12, i32 0, i32 5
  store i32 %79, i32* %80, align 8
  %81 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %82 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %12, i32 0, i32 0
  store i64 %83, i64* %84, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sub nsw i32 %85, 1
  %87 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %12, i32 0, i32 1
  store i32 %86, i32* %87, align 8
  %88 = load %struct.hdac_ext_link*, %struct.hdac_ext_link** %13, align 8
  %89 = getelementptr inbounds %struct.hdac_ext_link, %struct.hdac_ext_link* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %12, i32 0, i32 4
  store i32 %90, i32* %91, align 4
  %92 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %93 = call i32 @params_format(%struct.snd_pcm_hw_params* %92)
  %94 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %12, i32 0, i32 3
  store i32 %93, i32* %94, align 8
  %95 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %96 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %70
  %101 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %11, align 8
  %102 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %101, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %12, i32 0, i32 2
  store i32 %106, i32* %107, align 4
  br label %116

108:                                              ; preds = %70
  %109 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %11, align 8
  %110 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %109, i32 0, i32 0
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %12, i32 0, i32 2
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %108, %100
  %117 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %118 = call i32 @skl_tplg_be_update_params(%struct.snd_soc_dai* %117, %struct.skl_pipe_params* %12)
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %116, %49, %31
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local %struct.hdac_bus* @dev_get_drvdata(i32) #1

declare dso_local %struct.snd_soc_pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.hdac_ext_stream* @snd_hdac_ext_stream_assign(%struct.hdac_bus*, %struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @snd_soc_dai_set_dma_data(%struct.snd_soc_dai*, %struct.snd_pcm_substream*, i8*) #1

declare dso_local %struct.hdac_ext_link* @snd_hdac_ext_bus_get_link(%struct.hdac_bus*, i32) #1

declare dso_local %struct.TYPE_10__* @hdac_stream(%struct.hdac_ext_stream*) #1

declare dso_local i32 @snd_soc_dai_set_tdm_slot(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @skl_tplg_be_update_params(%struct.snd_soc_dai*, %struct.skl_pipe_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
