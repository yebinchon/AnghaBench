; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_asrc.c_fsl_asrc_dai_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_asrc.c_fsl_asrc_dai_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.fsl_asrc_pair* }
%struct.fsl_asrc_pair = type { i32, %struct.asrc_config* }
%struct.asrc_config = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.fsl_asrc = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"fail to request asrc pair\0A\00", align 1
@ASRC_WIDTH_16_BIT = common dso_local global i32 0, align 4
@ASRC_WIDTH_24_BIT = common dso_local global i32 0, align 4
@INCLK_NONE = common dso_local global i32 0, align 4
@OUTCLK_ASRCK1_CLK = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"fail to config asrc pair\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @fsl_asrc_dai_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_asrc_dai_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.fsl_asrc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_pcm_runtime*, align 8
  %11 = alloca %struct.fsl_asrc_pair*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.asrc_config, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %18 = call %struct.fsl_asrc* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %17)
  store %struct.fsl_asrc* %18, %struct.fsl_asrc** %8, align 8
  %19 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %20 = call i32 @params_width(%struct.snd_pcm_hw_params* %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 1
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %22, align 8
  store %struct.snd_pcm_runtime* %23, %struct.snd_pcm_runtime** %10, align 8
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %24, i32 0, i32 0
  %26 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %25, align 8
  store %struct.fsl_asrc_pair* %26, %struct.fsl_asrc_pair** %11, align 8
  %27 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %28 = call i32 @params_channels(%struct.snd_pcm_hw_params* %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %30 = call i32 @params_rate(%struct.snd_pcm_hw_params* %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %11, align 8
  %33 = call i32 @fsl_asrc_request_pair(i32 %31, %struct.fsl_asrc_pair* %32)
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %3
  %37 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %38 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %16, align 4
  store i32 %41, i32* %4, align 4
  br label %110

42:                                               ; preds = %3
  %43 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %11, align 8
  %44 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %43, i32 0, i32 1
  store %struct.asrc_config* %14, %struct.asrc_config** %44, align 8
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, 16
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @ASRC_WIDTH_16_BIT, align 4
  store i32 %48, i32* %9, align 4
  br label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @ASRC_WIDTH_24_BIT, align 4
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = load %struct.fsl_asrc*, %struct.fsl_asrc** %8, align 8
  %53 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 16
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @ASRC_WIDTH_16_BIT, align 4
  store i32 %57, i32* %15, align 4
  br label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @ASRC_WIDTH_24_BIT, align 4
  store i32 %59, i32* %15, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %11, align 8
  %62 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.asrc_config, %struct.asrc_config* %14, i32 0, i32 7
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %12, align 4
  %66 = getelementptr inbounds %struct.asrc_config, %struct.asrc_config* %14, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @INCLK_NONE, align 4
  %68 = getelementptr inbounds %struct.asrc_config, %struct.asrc_config* %14, i32 0, i32 6
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @OUTCLK_ASRCK1_CLK, align 4
  %70 = getelementptr inbounds %struct.asrc_config, %struct.asrc_config* %14, i32 0, i32 5
  store i32 %69, i32* %70, align 4
  %71 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %72 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %60
  %77 = load i32, i32* %9, align 4
  %78 = getelementptr inbounds %struct.asrc_config, %struct.asrc_config* %14, i32 0, i32 1
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %15, align 4
  %80 = getelementptr inbounds %struct.asrc_config, %struct.asrc_config* %14, i32 0, i32 2
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %13, align 4
  %82 = getelementptr inbounds %struct.asrc_config, %struct.asrc_config* %14, i32 0, i32 3
  store i32 %81, i32* %82, align 4
  %83 = load %struct.fsl_asrc*, %struct.fsl_asrc** %8, align 8
  %84 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.asrc_config, %struct.asrc_config* %14, i32 0, i32 4
  store i32 %85, i32* %86, align 4
  br label %98

87:                                               ; preds = %60
  %88 = load i32, i32* %15, align 4
  %89 = getelementptr inbounds %struct.asrc_config, %struct.asrc_config* %14, i32 0, i32 1
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* %9, align 4
  %91 = getelementptr inbounds %struct.asrc_config, %struct.asrc_config* %14, i32 0, i32 2
  store i32 %90, i32* %91, align 4
  %92 = load %struct.fsl_asrc*, %struct.fsl_asrc** %8, align 8
  %93 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.asrc_config, %struct.asrc_config* %14, i32 0, i32 3
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %13, align 4
  %97 = getelementptr inbounds %struct.asrc_config, %struct.asrc_config* %14, i32 0, i32 4
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %87, %76
  %99 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %11, align 8
  %100 = call i32 @fsl_asrc_config_pair(%struct.fsl_asrc_pair* %99)
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %105 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @dev_err(i32 %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i32, i32* %16, align 4
  store i32 %108, i32* %4, align 4
  br label %110

109:                                              ; preds = %98
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %103, %36
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.fsl_asrc* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @fsl_asrc_request_pair(i32, %struct.fsl_asrc_pair*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @fsl_asrc_config_pair(%struct.fsl_asrc_pair*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
