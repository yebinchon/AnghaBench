; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_soc_dai_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_soc_dai_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.rsnd_dai = type { i32, i32, %struct.snd_pcm_hw_constraint_list }
%struct.snd_pcm_hw_constraint_list = type { i32*, i32, i64 }
%struct.rsnd_dai_stream = type { i32 }

@rsnd_soc_hw_channels_list = common dso_local global i32* null, align 8
@rsnd_pcm_hardware = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@rsnd_soc_hw_rule_rate = common dso_local global i32 0, align 4
@rsnd_soc_hw_rule_channels = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @rsnd_soc_dai_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_soc_dai_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.rsnd_dai*, align 8
  %6 = alloca %struct.rsnd_dai_stream*, align 8
  %7 = alloca %struct.snd_pcm_hw_constraint_list*, align 8
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %13 = call %struct.rsnd_dai* @rsnd_dai_to_rdai(%struct.snd_soc_dai* %12)
  store %struct.rsnd_dai* %13, %struct.rsnd_dai** %5, align 8
  %14 = load %struct.rsnd_dai*, %struct.rsnd_dai** %5, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %16 = call %struct.rsnd_dai_stream* @rsnd_rdai_to_io(%struct.rsnd_dai* %14, %struct.snd_pcm_substream* %15)
  store %struct.rsnd_dai_stream* %16, %struct.rsnd_dai_stream** %6, align 8
  %17 = load %struct.rsnd_dai*, %struct.rsnd_dai** %5, align 8
  %18 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %17, i32 0, i32 2
  store %struct.snd_pcm_hw_constraint_list* %18, %struct.snd_pcm_hw_constraint_list** %7, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 1
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %20, align 8
  store %struct.snd_pcm_runtime* %21, %struct.snd_pcm_runtime** %8, align 8
  %22 = load %struct.rsnd_dai*, %struct.rsnd_dai** %5, align 8
  %23 = call i32 @rsnd_rdai_channels_get(%struct.rsnd_dai* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %26 = call i32 @rsnd_dai_stream_init(%struct.rsnd_dai_stream* %24, %struct.snd_pcm_substream* %25)
  %27 = load i32*, i32** @rsnd_soc_hw_channels_list, align 8
  %28 = load %struct.snd_pcm_hw_constraint_list*, %struct.snd_pcm_hw_constraint_list** %7, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_hw_constraint_list, %struct.snd_pcm_hw_constraint_list* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  %30 = load %struct.snd_pcm_hw_constraint_list*, %struct.snd_pcm_hw_constraint_list** %7, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_hw_constraint_list, %struct.snd_pcm_hw_constraint_list* %30, i32 0, i32 1
  store i32 0, i32* %31, align 8
  %32 = load %struct.snd_pcm_hw_constraint_list*, %struct.snd_pcm_hw_constraint_list** %7, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_hw_constraint_list, %struct.snd_pcm_hw_constraint_list* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %53, %2
  %35 = load i32, i32* %10, align 4
  %36 = load i32*, i32** @rsnd_soc_hw_channels_list, align 8
  %37 = call i32 @ARRAY_SIZE(i32* %36)
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  %40 = load i32*, i32** @rsnd_soc_hw_channels_list, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ugt i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %56

48:                                               ; preds = %39
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  %51 = load %struct.snd_pcm_hw_constraint_list*, %struct.snd_pcm_hw_constraint_list** %7, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_hw_constraint_list, %struct.snd_pcm_hw_constraint_list* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %34

56:                                               ; preds = %47, %34
  %57 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %58 = call i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream* %57, i32* @rsnd_pcm_hardware)
  %59 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %60 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %61 = load %struct.snd_pcm_hw_constraint_list*, %struct.snd_pcm_hw_constraint_list** %7, align 8
  %62 = call i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime* %59, i32 0, i32 %60, %struct.snd_pcm_hw_constraint_list* %61)
  %63 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %64 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %65 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %63, i32 %64)
  %66 = load %struct.rsnd_dai*, %struct.rsnd_dai** %5, align 8
  %67 = call i64 @rsnd_rdai_is_clk_master(%struct.rsnd_dai* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %106

69:                                               ; preds = %56
  %70 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %11, align 4
  %76 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %77 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %78 = load i32, i32* @rsnd_soc_hw_rule_rate, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %69
  %82 = load %struct.rsnd_dai*, %struct.rsnd_dai** %5, align 8
  %83 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %82, i32 0, i32 1
  br label %87

84:                                               ; preds = %69
  %85 = load %struct.rsnd_dai*, %struct.rsnd_dai** %5, align 8
  %86 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %85, i32 0, i32 0
  br label %87

87:                                               ; preds = %84, %81
  %88 = phi i32* [ %83, %81 ], [ %86, %84 ]
  %89 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %90 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %76, i32 0, i32 %77, i32 %78, i32* %88, i32 %89, i32 -1)
  %91 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %92 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %93 = load i32, i32* @rsnd_soc_hw_rule_channels, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  %97 = load %struct.rsnd_dai*, %struct.rsnd_dai** %5, align 8
  %98 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %97, i32 0, i32 1
  br label %102

99:                                               ; preds = %87
  %100 = load %struct.rsnd_dai*, %struct.rsnd_dai** %5, align 8
  %101 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %100, i32 0, i32 0
  br label %102

102:                                              ; preds = %99, %96
  %103 = phi i32* [ %98, %96 ], [ %101, %99 ]
  %104 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %105 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %91, i32 0, i32 %92, i32 %93, i32* %103, i32 %104, i32 -1)
  br label %106

106:                                              ; preds = %102, %56
  ret i32 0
}

declare dso_local %struct.rsnd_dai* @rsnd_dai_to_rdai(%struct.snd_soc_dai*) #1

declare dso_local %struct.rsnd_dai_stream* @rsnd_rdai_to_io(%struct.rsnd_dai*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @rsnd_rdai_channels_get(%struct.rsnd_dai*) #1

declare dso_local i32 @rsnd_dai_stream_init(%struct.rsnd_dai_stream*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream*, i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime*, i32, i32, %struct.snd_pcm_hw_constraint_list*) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i64 @rsnd_rdai_is_clk_master(%struct.rsnd_dai*) #1

declare dso_local i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime*, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
