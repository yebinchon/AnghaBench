; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_fsl_spdif_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_fsl_spdif_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.fsl_spdif_priv = type { i32, i32, i32, i32*, %struct.regmap* }
%struct.regmap = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SCR_TXFIFO_AUTOSYNC_MASK = common dso_local global i64 0, align 8
@SCR_TXFIFO_CTRL_MASK = common dso_local global i64 0, align 8
@SCR_TXSEL_MASK = common dso_local global i64 0, align 8
@SCR_USRC_SEL_MASK = common dso_local global i64 0, align 8
@SCR_TXFIFO_FSEL_MASK = common dso_local global i64 0, align 8
@SPDIF_TXRATE_MAX = common dso_local global i64 0, align 8
@SCR_RXFIFO_OFF = common dso_local global i64 0, align 8
@SCR_RXFIFO_CTL_ZERO = common dso_local global i64 0, align 8
@SCR_RXFIFO_FSEL_MASK = common dso_local global i64 0, align 8
@SCR_RXFIFO_AUTOSYNC_MASK = common dso_local global i64 0, align 8
@SCR_RXFIFO_CTL_MASK = common dso_local global i64 0, align 8
@SCR_RXFIFO_OFF_MASK = common dso_local global i64 0, align 8
@REG_SPDIF_SCR = common dso_local global i32 0, align 4
@SCR_LOW_POWER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @fsl_spdif_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_spdif_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.fsl_spdif_priv*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 1
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %12, align 8
  store %struct.snd_soc_pcm_runtime* %13, %struct.snd_soc_pcm_runtime** %5, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.fsl_spdif_priv* @snd_soc_dai_get_drvdata(i32 %16)
  store %struct.fsl_spdif_priv* %17, %struct.fsl_spdif_priv** %6, align 8
  %18 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %6, align 8
  %19 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %18, i32 0, i32 4
  %20 = load %struct.regmap*, %struct.regmap** %19, align 8
  store %struct.regmap* %20, %struct.regmap** %7, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  %27 = load i64, i64* @SCR_TXFIFO_AUTOSYNC_MASK, align 8
  %28 = load i64, i64* @SCR_TXFIFO_CTRL_MASK, align 8
  %29 = or i64 %27, %28
  %30 = load i64, i64* @SCR_TXSEL_MASK, align 8
  %31 = or i64 %29, %30
  %32 = load i64, i64* @SCR_USRC_SEL_MASK, align 8
  %33 = or i64 %31, %32
  %34 = load i64, i64* @SCR_TXFIFO_FSEL_MASK, align 8
  %35 = or i64 %33, %34
  store i64 %35, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %36

36:                                               ; preds = %48, %26
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @SPDIF_TXRATE_MAX, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %6, align 8
  %42 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @clk_disable_unprepare(i32 %46)
  br label %48

48:                                               ; preds = %40
  %49 = load i64, i64* %10, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %10, align 8
  br label %36

51:                                               ; preds = %36
  br label %67

52:                                               ; preds = %2
  %53 = load i64, i64* @SCR_RXFIFO_OFF, align 8
  %54 = load i64, i64* @SCR_RXFIFO_CTL_ZERO, align 8
  %55 = or i64 %53, %54
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* @SCR_RXFIFO_FSEL_MASK, align 8
  %57 = load i64, i64* @SCR_RXFIFO_AUTOSYNC_MASK, align 8
  %58 = or i64 %56, %57
  %59 = load i64, i64* @SCR_RXFIFO_CTL_MASK, align 8
  %60 = or i64 %58, %59
  %61 = load i64, i64* @SCR_RXFIFO_OFF_MASK, align 8
  %62 = or i64 %60, %61
  store i64 %62, i64* %9, align 8
  %63 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %6, align 8
  %64 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @clk_disable_unprepare(i32 %65)
  br label %67

67:                                               ; preds = %52, %51
  %68 = load %struct.regmap*, %struct.regmap** %7, align 8
  %69 = load i32, i32* @REG_SPDIF_SCR, align 4
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @regmap_update_bits(%struct.regmap* %68, i32 %69, i64 %70, i64 %71)
  %73 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %74 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %100, label %77

77:                                               ; preds = %67
  %78 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %6, align 8
  %79 = call i32 @spdif_intr_status_clear(%struct.fsl_spdif_priv* %78)
  %80 = load %struct.regmap*, %struct.regmap** %7, align 8
  %81 = load i32, i32* @REG_SPDIF_SCR, align 4
  %82 = load i64, i64* @SCR_LOW_POWER, align 8
  %83 = load i64, i64* @SCR_LOW_POWER, align 8
  %84 = call i32 @regmap_update_bits(%struct.regmap* %80, i32 %81, i64 %82, i64 %83)
  %85 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %6, align 8
  %86 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @IS_ERR(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %77
  %91 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %6, align 8
  %92 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @clk_disable_unprepare(i32 %93)
  br label %95

95:                                               ; preds = %90, %77
  %96 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %6, align 8
  %97 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @clk_disable_unprepare(i32 %98)
  br label %100

100:                                              ; preds = %95, %67
  ret void
}

declare dso_local %struct.fsl_spdif_priv* @snd_soc_dai_get_drvdata(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i64, i64) #1

declare dso_local i32 @spdif_intr_status_clear(%struct.fsl_spdif_priv*) #1

declare dso_local i32 @IS_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
