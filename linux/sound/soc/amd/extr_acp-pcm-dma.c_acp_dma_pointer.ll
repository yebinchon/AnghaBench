; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/amd/extr_acp-pcm-dma.c_acp_dma_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/amd/extr_acp-pcm-dma.c_acp_dma_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, %struct.audio_substream_data* }
%struct.audio_substream_data = type { i64, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @acp_dma_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acp_dma_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.snd_pcm_runtime*, align 8
  %11 = alloca %struct.audio_substream_data*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 1
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %10, align 8
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 3
  %17 = load %struct.audio_substream_data*, %struct.audio_substream_data** %16, align 8
  store %struct.audio_substream_data* %17, %struct.audio_substream_data** %11, align 8
  %18 = load %struct.audio_substream_data*, %struct.audio_substream_data** %11, align 8
  %19 = icmp ne %struct.audio_substream_data* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %110

23:                                               ; preds = %1
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %83

29:                                               ; preds = %23
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %31 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @frames_to_bytes(%struct.snd_pcm_runtime* %30, i32 %33)
  store i64 %34, i64* %8, align 8
  %35 = load %struct.audio_substream_data*, %struct.audio_substream_data** %11, align 8
  %36 = call i64 @acp_get_byte_count(%struct.audio_substream_data* %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.audio_substream_data*, %struct.audio_substream_data** %11, align 8
  %39 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %29
  %43 = load %struct.audio_substream_data*, %struct.audio_substream_data** %11, align 8
  %44 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = sub nsw i64 %46, %45
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %42, %29
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i64 0, i64* %5, align 8
  br label %70

53:                                               ; preds = %48
  %54 = load %struct.audio_substream_data*, %struct.audio_substream_data** %11, align 8
  %55 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.audio_substream_data*, %struct.audio_substream_data** %11, align 8
  %58 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @acp_reg_read(i32 %56, i32 %59)
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.audio_substream_data*, %struct.audio_substream_data** %11, align 8
  %63 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %53
  %67 = load i64, i64* %8, align 8
  store i64 %67, i64* %5, align 8
  br label %69

68:                                               ; preds = %53
  store i64 0, i64* %5, align 8
  br label %69

69:                                               ; preds = %68, %66
  br label %70

70:                                               ; preds = %69, %52
  %71 = load i64, i64* %6, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* %8, align 8
  %76 = call i64 @do_div(i64 %74, i64 %75)
  store i64 %76, i64* %9, align 8
  %77 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @bytes_to_frames(%struct.snd_pcm_runtime* %77, i64 %78)
  %80 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %81 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %73, %70
  br label %106

83:                                               ; preds = %23
  %84 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %85 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %86 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @frames_to_bytes(%struct.snd_pcm_runtime* %84, i32 %87)
  store i64 %88, i64* %4, align 8
  %89 = load %struct.audio_substream_data*, %struct.audio_substream_data** %11, align 8
  %90 = call i64 @acp_get_byte_count(%struct.audio_substream_data* %89)
  store i64 %90, i64* %6, align 8
  %91 = load i64, i64* %6, align 8
  %92 = load %struct.audio_substream_data*, %struct.audio_substream_data** %11, align 8
  %93 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %91, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %83
  %97 = load %struct.audio_substream_data*, %struct.audio_substream_data** %11, align 8
  %98 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %6, align 8
  %101 = sub nsw i64 %100, %99
  store i64 %101, i64* %6, align 8
  br label %102

102:                                              ; preds = %96, %83
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* %4, align 8
  %105 = call i64 @do_div(i64 %103, i64 %104)
  store i64 %105, i64* %5, align 8
  br label %106

106:                                              ; preds = %102, %82
  %107 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %108 = load i64, i64* %5, align 8
  %109 = call i32 @bytes_to_frames(%struct.snd_pcm_runtime* %107, i64 %108)
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %106, %20
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i64 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i64 @acp_get_byte_count(%struct.audio_substream_data*) #1

declare dso_local i64 @acp_reg_read(i32, i32) #1

declare dso_local i64 @do_div(i64, i64) #1

declare dso_local i32 @bytes_to_frames(%struct.snd_pcm_runtime*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
