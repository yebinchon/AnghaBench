; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_uda1380.c_uda1380_pcm_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_uda1380.c_uda1380_pcm_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@UDA1380_CLK = common dso_local global i32 0, align 4
@R00_DAC_CLK = common dso_local global i32 0, align 4
@UDA1380_PM = common dso_local global i32 0, align 4
@R02_PON_PLL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@R00_EN_DAC = common dso_local global i32 0, align 4
@R00_EN_INT = common dso_local global i32 0, align 4
@R00_EN_ADC = common dso_local global i32 0, align 4
@R00_EN_DEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @uda1380_pcm_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uda1380_pcm_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %5, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %12 = load i32, i32* @UDA1380_CLK, align 4
  %13 = call i32 @uda1380_read_reg_cache(%struct.snd_soc_component* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @R00_DAC_CLK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %20 = load i32, i32* @UDA1380_PM, align 4
  %21 = call i32 @uda1380_read_reg_cache(%struct.snd_soc_component* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %23 = load i32, i32* @UDA1380_PM, align 4
  %24 = load i32, i32* @R02_PON_PLL, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %25, %26
  %28 = call i32 @uda1380_write(%struct.snd_soc_component* %22, i32 %23, i32 %27)
  br label %29

29:                                               ; preds = %18, %2
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i32, i32* @R00_EN_DAC, align 4
  %37 = load i32, i32* @R00_EN_INT, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %49

42:                                               ; preds = %29
  %43 = load i32, i32* @R00_EN_ADC, align 4
  %44 = load i32, i32* @R00_EN_DEC, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %42, %35
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %51 = load i32, i32* @UDA1380_CLK, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @uda1380_write(%struct.snd_soc_component* %50, i32 %51, i32 %52)
  ret void
}

declare dso_local i32 @uda1380_read_reg_cache(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @uda1380_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
