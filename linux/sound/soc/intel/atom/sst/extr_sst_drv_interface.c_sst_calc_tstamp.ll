; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_drv_interface.c_sst_calc_tstamp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_drv_interface.c_sst_calc_tstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i32 }
%struct.pcm_stream_info = type { i32, i64 }
%struct.snd_pcm_substream = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.snd_sst_tstamp = type { i64, i64 }

@.str = private unnamed_addr constant [41 x i8] c"mrfld ring_buffer_counter %llu in bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"mrfld hardware_counter %llu in bytes\0A\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"pcm delay %zu in bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"buffer ptr %llu pcm_delay rep: %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sst_drv*, %struct.pcm_stream_info*, %struct.snd_pcm_substream*, %struct.snd_sst_tstamp*)* @sst_calc_tstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_calc_tstamp(%struct.intel_sst_drv* %0, %struct.pcm_stream_info* %1, %struct.snd_pcm_substream* %2, %struct.snd_sst_tstamp* %3) #0 {
  %5 = alloca %struct.intel_sst_drv*, align 8
  %6 = alloca %struct.pcm_stream_info*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.snd_sst_tstamp*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %5, align 8
  store %struct.pcm_stream_info* %1, %struct.pcm_stream_info** %6, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %7, align 8
  store %struct.snd_sst_tstamp* %3, %struct.snd_sst_tstamp** %8, align 8
  %14 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %15 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.snd_sst_tstamp*, %struct.snd_sst_tstamp** %8, align 8
  %18 = getelementptr inbounds %struct.snd_sst_tstamp, %struct.snd_sst_tstamp* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %23 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.snd_sst_tstamp*, %struct.snd_sst_tstamp** %8, align 8
  %26 = getelementptr inbounds %struct.snd_sst_tstamp, %struct.snd_sst_tstamp* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %4
  %36 = load %struct.snd_sst_tstamp*, %struct.snd_sst_tstamp** %8, align 8
  %37 = getelementptr inbounds %struct.snd_sst_tstamp, %struct.snd_sst_tstamp* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.snd_sst_tstamp*, %struct.snd_sst_tstamp** %8, align 8
  %40 = getelementptr inbounds %struct.snd_sst_tstamp, %struct.snd_sst_tstamp* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  store i64 %42, i64* %9, align 8
  br label %51

43:                                               ; preds = %4
  %44 = load %struct.snd_sst_tstamp*, %struct.snd_sst_tstamp** %8, align 8
  %45 = getelementptr inbounds %struct.snd_sst_tstamp, %struct.snd_sst_tstamp* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.snd_sst_tstamp*, %struct.snd_sst_tstamp** %8, align 8
  %48 = getelementptr inbounds %struct.snd_sst_tstamp, %struct.snd_sst_tstamp* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  store i64 %50, i64* %9, align 8
  br label %51

51:                                               ; preds = %43, %35
  %52 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i64 @bytes_to_frames(%struct.TYPE_3__* %54, i64 %55)
  store i64 %56, i64* %10, align 8
  %57 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %58 = call i64 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %57)
  store i64 %58, i64* %11, align 8
  %59 = load %struct.snd_sst_tstamp*, %struct.snd_sst_tstamp** %8, align 8
  %60 = getelementptr inbounds %struct.snd_sst_tstamp, %struct.snd_sst_tstamp* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @div_u64_rem(i64 %61, i64 %62, i32* %12)
  %64 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @bytes_to_samples(%struct.TYPE_3__* %66, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %70 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %9, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %77 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sdiv i32 %75, %80
  %82 = load %struct.pcm_stream_info*, %struct.pcm_stream_info** %6, align 8
  %83 = getelementptr inbounds %struct.pcm_stream_info, %struct.pcm_stream_info* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load %struct.pcm_stream_info*, %struct.pcm_stream_info** %6, align 8
  %86 = getelementptr inbounds %struct.pcm_stream_info, %struct.pcm_stream_info* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %88 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.pcm_stream_info*, %struct.pcm_stream_info** %6, align 8
  %91 = getelementptr inbounds %struct.pcm_stream_info, %struct.pcm_stream_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.pcm_stream_info*, %struct.pcm_stream_info** %6, align 8
  %94 = getelementptr inbounds %struct.pcm_stream_info, %struct.pcm_stream_info* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %89, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %92, i64 %95)
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i64 @bytes_to_frames(%struct.TYPE_3__*, i64) #1

declare dso_local i64 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @div_u64_rem(i64, i64, i32*) #1

declare dso_local i32 @bytes_to_samples(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
