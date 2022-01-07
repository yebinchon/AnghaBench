; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-pcm.c_dpcm_run_update_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-pcm.c_dpcm_run_update_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.snd_pcm_substream = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"ASoC: runtime %s close on FE %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"playback\00", align 1
@SND_SOC_DPCM_TRIGGER_BESPOKE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"ASoC: bespoke trigger FE %s cmd stop\0A\00", align 1
@SNDRV_PCM_TRIGGER_STOP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"ASoC: trigger FE failed %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"ASoC: trigger FE %s cmd stop\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"ASoC: hw_free FE failed %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"ASoC: shutdown FE failed %d\0A\00", align 1
@SND_SOC_DAPM_STREAM_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*, i32)* @dpcm_run_update_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpcm_run_update_shutdown(%struct.snd_soc_pcm_runtime* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.snd_pcm_substream* @snd_soc_dpcm_get_substream(%struct.snd_soc_pcm_runtime* %8, i32 %9)
  store %struct.snd_pcm_substream* %10, %struct.snd_pcm_substream** %5, align 8
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %21 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %27 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %28 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i32, i8*, i8*, ...) @dev_dbg(i32 %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @SND_SOC_DPCM_TRIGGER_BESPOKE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %2
  %37 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %38 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %41 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 (i32, i8*, i8*, ...) @dev_dbg(i32 %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  %48 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %49 = load i32, i32* @SNDRV_PCM_TRIGGER_STOP, align 4
  %50 = call i32 @soc_pcm_bespoke_trigger(%struct.snd_pcm_substream* %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %36
  %54 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %55 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %53, %36
  br label %85

60:                                               ; preds = %2
  %61 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %62 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %65 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 (i32, i8*, i8*, ...) @dev_dbg(i32 %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %70)
  %72 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @SNDRV_PCM_TRIGGER_STOP, align 4
  %75 = call i32 @dpcm_be_dai_trigger(%struct.snd_soc_pcm_runtime* %72, i32 %73, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %60
  %79 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %80 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %78, %60
  br label %85

85:                                               ; preds = %84, %59
  %86 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @dpcm_be_dai_hw_free(%struct.snd_soc_pcm_runtime* %86, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %93 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @dev_err(i32 %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %91, %85
  %98 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @dpcm_be_dai_shutdown(%struct.snd_soc_pcm_runtime* %98, i32 %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %105 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @dev_err(i32 %106, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %103, %97
  %110 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @SND_SOC_DAPM_STREAM_NOP, align 4
  %113 = call i32 @dpcm_dapm_stream_event(%struct.snd_soc_pcm_runtime* %110, i32 %111, i32 %112)
  ret i32 0
}

declare dso_local %struct.snd_pcm_substream* @snd_soc_dpcm_get_substream(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, ...) #1

declare dso_local i32 @soc_pcm_bespoke_trigger(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dpcm_be_dai_trigger(%struct.snd_soc_pcm_runtime*, i32, i32) #1

declare dso_local i32 @dpcm_be_dai_hw_free(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i32 @dpcm_be_dai_shutdown(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i32 @dpcm_dapm_stream_event(%struct.snd_soc_pcm_runtime*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
