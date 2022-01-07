; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_i2s_delay.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_i2s_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.samsung_i2s_priv = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.i2s_dai = type { i32 }

@I2SFIC = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@I2SFICS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @i2s_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2s_delay(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.samsung_i2s_priv*, align 8
  %6 = alloca %struct.i2s_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = call %struct.samsung_i2s_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %9)
  store %struct.samsung_i2s_priv* %10, %struct.samsung_i2s_priv** %5, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %12 = call %struct.i2s_dai* @to_info(%struct.snd_soc_dai* %11)
  store %struct.i2s_dai* %12, %struct.i2s_dai** %6, align 8
  %13 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %14 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @I2SFIC, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %20 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pm_runtime_active(i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @FIC_RXCOUNT(i32 %33)
  store i32 %34, i32* %8, align 4
  br label %57

35:                                               ; preds = %2
  %36 = load %struct.i2s_dai*, %struct.i2s_dai** %6, align 8
  %37 = call i64 @is_secondary(%struct.i2s_dai* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %41 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @I2SFICS, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @readl(i64 %44)
  %46 = call i32 @FICS_TXCOUNT(i32 %45)
  store i32 %46, i32* %8, align 4
  br label %56

47:                                               ; preds = %35
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %50 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %48, %53
  %55 = and i32 %54, 127
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %47, %39
  br label %57

57:                                               ; preds = %56, %32
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local %struct.samsung_i2s_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local %struct.i2s_dai* @to_info(%struct.snd_soc_dai*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pm_runtime_active(i32) #1

declare dso_local i32 @FIC_RXCOUNT(i32) #1

declare dso_local i64 @is_secondary(%struct.i2s_dai*) #1

declare dso_local i32 @FICS_TXCOUNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
