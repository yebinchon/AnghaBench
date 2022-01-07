; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-pcm.c_sst_platform_alloc_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-pcm.c_sst_platform_alloc_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.sst_runtime_stream* }
%struct.sst_runtime_stream = type { %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 (i32, %struct.snd_sst_params*)* }
%struct.snd_sst_params = type { i32, i32, %struct.snd_sst_alloc_params_ext, %struct.snd_sst_stream_params, i32 }
%struct.snd_sst_alloc_params_ext = type { i32 }
%struct.snd_sst_stream_params = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.sst_data = type { i32 }

@SST_CODEC_TYPE_PCM = common dso_local global i32 0, align 4
@sst = common dso_local global %struct.TYPE_14__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @sst_platform_alloc_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_platform_alloc_stream(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.sst_runtime_stream*, align 8
  %7 = alloca %struct.snd_sst_stream_params, align 4
  %8 = alloca %struct.snd_sst_params, align 4
  %9 = alloca %struct.snd_sst_alloc_params_ext, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sst_data*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %15, align 8
  store %struct.sst_runtime_stream* %16, %struct.sst_runtime_stream** %6, align 8
  %17 = bitcast %struct.snd_sst_stream_params* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 4, i1 false)
  %18 = bitcast %struct.snd_sst_params* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 20, i1 false)
  %19 = bitcast %struct.snd_sst_alloc_params_ext* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 4, i1 false)
  store i32 0, i32* %10, align 4
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %21 = call %struct.sst_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %20)
  store %struct.sst_data* %21, %struct.sst_data** %11, align 8
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %23 = call i32 @sst_fill_pcm_params(%struct.snd_pcm_substream* %22, %struct.snd_sst_stream_params* %7)
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %25 = call i32 @sst_fill_alloc_params(%struct.snd_pcm_substream* %24, %struct.snd_sst_alloc_params_ext* %9)
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %30, i32 0, i32 1
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 8
  %34 = getelementptr inbounds %struct.snd_sst_params, %struct.snd_sst_params* %8, i32 0, i32 3
  %35 = bitcast %struct.snd_sst_stream_params* %34 to i8*
  %36 = bitcast %struct.snd_sst_stream_params* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 4, i1 false)
  %37 = getelementptr inbounds %struct.snd_sst_params, %struct.snd_sst_params* %8, i32 0, i32 2
  %38 = bitcast %struct.snd_sst_alloc_params_ext* %37 to i8*
  %39 = bitcast %struct.snd_sst_alloc_params_ext* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  %40 = load i32, i32* @SST_CODEC_TYPE_PCM, align 4
  %41 = getelementptr inbounds %struct.snd_sst_params, %struct.snd_sst_params* %8, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %43 = load %struct.sst_data*, %struct.sst_data** %11, align 8
  %44 = call i32 @sst_fill_stream_params(%struct.snd_pcm_substream* %42, %struct.sst_data* %43, %struct.snd_sst_params* %8, i32 0)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %2
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %3, align 4
  br label %70

49:                                               ; preds = %2
  %50 = getelementptr inbounds %struct.snd_sst_params, %struct.snd_sst_params* %8, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %53 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %56 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %55, i32 0, i32 0
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32 (i32, %struct.snd_sst_params*)*, i32 (i32, %struct.snd_sst_params*)** %58, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** @sst, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 %59(i32 %62, %struct.snd_sst_params* %8)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %49
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %3, align 4
  br label %70

68:                                               ; preds = %49
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %66, %47
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.sst_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #2

declare dso_local i32 @sst_fill_pcm_params(%struct.snd_pcm_substream*, %struct.snd_sst_stream_params*) #2

declare dso_local i32 @sst_fill_alloc_params(%struct.snd_pcm_substream*, %struct.snd_sst_alloc_params_ext*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sst_fill_stream_params(%struct.snd_pcm_substream*, %struct.sst_data*, %struct.snd_sst_params*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
