; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-pcm.c_pcm_init_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-pcm.c_pcm_init_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_tscm = type { %struct.TYPE_2__*, %struct.amdtp_stream, %struct.amdtp_stream }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }
%struct.amdtp_stream = type { i32 }
%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_pcm_hardware }
%struct.snd_pcm_hardware = type { i32, i32, i32, i8* }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@SNDRV_PCM_FMTBIT_S32 = common dso_local global i8* null, align 8
@SNDRV_PCM_RATE_44100 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_48000 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_88200 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_96000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_tscm*, %struct.snd_pcm_substream*)* @pcm_init_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_init_hw_params(%struct.snd_tscm* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca %struct.snd_tscm*, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.snd_pcm_hardware*, align 8
  %7 = alloca %struct.amdtp_stream*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_tscm* %0, %struct.snd_tscm** %3, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %5, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 0
  store %struct.snd_pcm_hardware* %13, %struct.snd_pcm_hardware** %6, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load i8*, i8** @SNDRV_PCM_FMTBIT_S32, align 8
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %22, i32 0, i32 3
  store i8* %20, i8** %23, align 8
  %24 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %25 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %24, i32 0, i32 2
  store %struct.amdtp_stream* %25, %struct.amdtp_stream** %7, align 8
  %26 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %27 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %8, align 4
  br label %43

31:                                               ; preds = %2
  %32 = load i8*, i8** @SNDRV_PCM_FMTBIT_S32, align 8
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %34, i32 0, i32 3
  store i8* %32, i8** %35, align 8
  %36 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %37 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %36, i32 0, i32 1
  store %struct.amdtp_stream* %37, %struct.amdtp_stream** %7, align 8
  %38 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %39 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %31, %19
  %44 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %45 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  %52 = add i32 %51, 8
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %50, %43
  %54 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %55 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i32, i32* %8, align 4
  %62 = add i32 %61, 2
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %60, %53
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %69, i32 0, i32 0
  store i32 %64, i32* %70, align 8
  %71 = load i32, i32* @SNDRV_PCM_RATE_44100, align 4
  %72 = load i32, i32* @SNDRV_PCM_RATE_48000, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @SNDRV_PCM_RATE_88200, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @SNDRV_PCM_RATE_96000, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %6, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %81 = call i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime* %80)
  %82 = load %struct.amdtp_stream*, %struct.amdtp_stream** %7, align 8
  %83 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %84 = call i32 @amdtp_tscm_add_pcm_hw_constraints(%struct.amdtp_stream* %82, %struct.snd_pcm_runtime* %83)
  ret i32 %84
}

declare dso_local i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime*) #1

declare dso_local i32 @amdtp_tscm_add_pcm_hw_constraints(%struct.amdtp_stream*, %struct.snd_pcm_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
