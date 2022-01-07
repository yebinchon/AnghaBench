; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-pcm.c_sst_platform_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-pcm.c_sst_platform_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_5__*, %struct.snd_soc_pcm_runtime* }
%struct.TYPE_5__ = type { i32, %struct.sst_runtime_stream* }
%struct.sst_runtime_stream = type { %struct.TYPE_4__*, %struct.pcm_stream_info }
%struct.TYPE_4__ = type { i32 (i32, %struct.pcm_stream_info*)* }
%struct.pcm_stream_info = type { i32, i32 }
%struct.snd_soc_pcm_runtime = type { i32 }

@SST_PLATFORM_INIT = common dso_local global i32 0, align 4
@sst = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"sst: error code = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @sst_platform_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_platform_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.sst_runtime_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcm_stream_info*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  store %struct.snd_soc_pcm_runtime* %11, %struct.snd_soc_pcm_runtime** %8, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %15, align 8
  store %struct.sst_runtime_stream* %16, %struct.sst_runtime_stream** %4, align 8
  %17 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %4, align 8
  %18 = call i32 @sst_get_stream_status(%struct.sst_runtime_stream* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SST_PLATFORM_INIT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

23:                                               ; preds = %1
  %24 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %4, align 8
  %25 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %24, i32 0, i32 1
  store %struct.pcm_stream_info* %25, %struct.pcm_stream_info** %7, align 8
  %26 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %4, align 8
  %27 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32 (i32, %struct.pcm_stream_info*)*, i32 (i32, %struct.pcm_stream_info*)** %29, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sst, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.pcm_stream_info*, %struct.pcm_stream_info** %7, align 8
  %35 = call i32 %30(i32 %33, %struct.pcm_stream_info* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %23
  %39 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %40 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %56

45:                                               ; preds = %23
  %46 = load %struct.pcm_stream_info*, %struct.pcm_stream_info** %7, align 8
  %47 = getelementptr inbounds %struct.pcm_stream_info, %struct.pcm_stream_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 8
  %53 = load %struct.pcm_stream_info*, %struct.pcm_stream_info** %7, align 8
  %54 = getelementptr inbounds %struct.pcm_stream_info, %struct.pcm_stream_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %45, %38, %22
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @sst_get_stream_status(%struct.sst_runtime_stream*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
