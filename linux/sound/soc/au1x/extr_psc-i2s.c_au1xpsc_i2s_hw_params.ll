; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/au1x/extr_psc-i2s.c_au1xpsc_i2s_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/au1x/extr_psc-i2s.c_au1xpsc_i2s_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.au1xpsc_audio_data = type { i64, i32 }

@PSC_I2SSTAT_TB = common dso_local global i64 0, align 8
@PSC_I2SSTAT_RB = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @au1xpsc_i2s_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xpsc_i2s_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.au1xpsc_audio_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %12 = call %struct.au1xpsc_audio_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %11)
  store %struct.au1xpsc_audio_data* %12, %struct.au1xpsc_audio_data** %8, align 8
  %13 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %8, align 8
  %14 = call i32 @I2S_STAT(%struct.au1xpsc_audio_data* %13)
  %15 = call i8* @__raw_readl(i32 %14)
  %16 = ptrtoint i8* %15 to i64
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* @PSC_I2SSTAT_TB, align 8
  %19 = load i64, i64* @PSC_I2SSTAT_RB, align 8
  %20 = or i64 %18, %19
  %21 = and i64 %17, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %3
  %24 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %8, align 8
  %25 = call i32 @I2S_CFG(%struct.au1xpsc_audio_data* %24)
  %26 = call i8* @__raw_readl(i32 %25)
  %27 = ptrtoint i8* %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @PSC_I2SCFG_GET_LEN(i32 %28)
  %30 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %23
  %35 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %36 = call i64 @params_rate(%struct.snd_pcm_hw_params* %35)
  %37 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %8, align 8
  %38 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %34, %23
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %63

44:                                               ; preds = %34
  br label %62

45:                                               ; preds = %3
  %46 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %8, align 8
  %47 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, -497
  store i32 %49, i32* %47, align 8
  %50 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @PSC_I2SCFG_SET_LEN(i64 %52)
  %54 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %8, align 8
  %55 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %59 = call i64 @params_rate(%struct.snd_pcm_hw_params* %58)
  %60 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %8, align 8
  %61 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %45, %44
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %41
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.au1xpsc_audio_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i8* @__raw_readl(i32) #1

declare dso_local i32 @I2S_STAT(%struct.au1xpsc_audio_data*) #1

declare dso_local i32 @I2S_CFG(%struct.au1xpsc_audio_data*) #1

declare dso_local i64 @PSC_I2SCFG_GET_LEN(i32) #1

declare dso_local i64 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @PSC_I2SCFG_SET_LEN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
