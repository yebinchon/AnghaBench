; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-pcm.c_dpcm_fe_dai_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-pcm.c_dpcm_fe_dai_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@SND_SOC_CARD_CLASS_RUNTIME = common dso_local global i32 0, align 4
@SND_SOC_DPCM_UPDATE_FE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ASoC: hw_params BE failed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"ASoC: hw_params FE %s rate %d chan %x fmt %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"ASoC: hw_params FE failed %d\0A\00", align 1
@SND_SOC_DPCM_STATE_HW_PARAMS = common dso_local global i32 0, align 4
@SND_SOC_DPCM_UPDATE_NO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @dpcm_fe_dai_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpcm_fe_dai_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 1
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  store %struct.snd_soc_pcm_runtime* %10, %struct.snd_soc_pcm_runtime** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* @SND_SOC_CARD_CLASS_RUNTIME, align 4
  %19 = call i32 @mutex_lock_nested(i32* %17, i32 %18)
  %20 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SND_SOC_DPCM_UPDATE_FE, align 4
  %23 = call i32 @dpcm_set_fe_update_state(%struct.snd_soc_pcm_runtime* %20, i32 %21, i32 %22)
  %24 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %25 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %34 = call i32 @memcpy(i32* %32, %struct.snd_pcm_hw_params* %33, i32 4)
  %35 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = call i32 @dpcm_be_dai_hw_params(%struct.snd_soc_pcm_runtime* %35, i64 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %2
  %44 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %45 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %89

49:                                               ; preds = %2
  %50 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %51 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %54 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %53, i32 0, i32 3
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %59 = call i32 @params_rate(%struct.snd_pcm_hw_params* %58)
  %60 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %61 = call i32 @params_channels(%struct.snd_pcm_hw_params* %60)
  %62 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %63 = call i32 @params_format(%struct.snd_pcm_hw_params* %62)
  %64 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %59, i32 %61, i32 %63)
  %65 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %66 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %67 = call i32 @soc_pcm_hw_params(%struct.snd_pcm_substream* %65, %struct.snd_pcm_hw_params* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %49
  %71 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %72 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @dpcm_be_dai_hw_free(%struct.snd_soc_pcm_runtime* %76, i32 %77)
  br label %88

79:                                               ; preds = %49
  %80 = load i32, i32* @SND_SOC_DPCM_STATE_HW_PARAMS, align 4
  %81 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %82 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store i32 %80, i32* %87, align 4
  br label %88

88:                                               ; preds = %79, %70
  br label %89

89:                                               ; preds = %88, %43
  %90 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @SND_SOC_DPCM_UPDATE_NO, align 4
  %93 = call i32 @dpcm_set_fe_update_state(%struct.snd_soc_pcm_runtime* %90, i32 %91, i32 %92)
  %94 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %95 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @dpcm_set_fe_update_state(%struct.snd_soc_pcm_runtime*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @dpcm_be_dai_hw_params(%struct.snd_soc_pcm_runtime*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @soc_pcm_hw_params(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dpcm_be_dai_hw_free(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
