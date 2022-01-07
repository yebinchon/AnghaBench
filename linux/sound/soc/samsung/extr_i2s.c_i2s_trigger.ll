; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_i2s_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_i2s_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.samsung_i2s_priv = type { i32 }
%struct.i2s_dai = type { i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FIC_RXFLUSH = common dso_local global i32 0, align 4
@FIC_TXFLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @i2s_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2s_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.samsung_i2s_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %11 = alloca %struct.i2s_dai*, align 8
  %12 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %14 = call %struct.samsung_i2s_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %13)
  store %struct.samsung_i2s_priv* %14, %struct.samsung_i2s_priv** %8, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 1
  %23 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %22, align 8
  store %struct.snd_soc_pcm_runtime* %23, %struct.snd_soc_pcm_runtime** %10, align 8
  %24 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  %25 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.i2s_dai* @to_info(i32 %26)
  store %struct.i2s_dai* %27, %struct.i2s_dai** %11, align 8
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %90 [
    i32 130, label %29
    i32 131, label %29
    i32 132, label %29
    i32 129, label %62
    i32 128, label %62
    i32 133, label %62
  ]

29:                                               ; preds = %3, %3, %3
  %30 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %31 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pm_runtime_get_sync(i32 %32)
  %34 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %8, align 8
  %35 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.i2s_dai*, %struct.i2s_dai** %11, align 8
  %39 = call i32 @config_setup(%struct.i2s_dai* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %29
  %42 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %8, align 8
  %43 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %42, i32 0, i32 0
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %91

48:                                               ; preds = %29
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.i2s_dai*, %struct.i2s_dai** %11, align 8
  %53 = call i32 @i2s_rxctrl(%struct.i2s_dai* %52, i32 1)
  br label %57

54:                                               ; preds = %48
  %55 = load %struct.i2s_dai*, %struct.i2s_dai** %11, align 8
  %56 = call i32 @i2s_txctrl(%struct.i2s_dai* %55, i32 1)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %8, align 8
  %59 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %58, i32 0, i32 0
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  br label %90

62:                                               ; preds = %3, %3, %3
  %63 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %8, align 8
  %64 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %63, i32 0, i32 0
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @spin_lock_irqsave(i32* %64, i64 %65)
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load %struct.i2s_dai*, %struct.i2s_dai** %11, align 8
  %71 = call i32 @i2s_rxctrl(%struct.i2s_dai* %70, i32 0)
  %72 = load %struct.i2s_dai*, %struct.i2s_dai** %11, align 8
  %73 = load i32, i32* @FIC_RXFLUSH, align 4
  %74 = call i32 @i2s_fifo(%struct.i2s_dai* %72, i32 %73)
  br label %81

75:                                               ; preds = %62
  %76 = load %struct.i2s_dai*, %struct.i2s_dai** %11, align 8
  %77 = call i32 @i2s_txctrl(%struct.i2s_dai* %76, i32 0)
  %78 = load %struct.i2s_dai*, %struct.i2s_dai** %11, align 8
  %79 = load i32, i32* @FIC_TXFLUSH, align 4
  %80 = call i32 @i2s_fifo(%struct.i2s_dai* %78, i32 %79)
  br label %81

81:                                               ; preds = %75, %69
  %82 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %8, align 8
  %83 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %82, i32 0, i32 0
  %84 = load i64, i64* %12, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %87 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @pm_runtime_put(i32 %88)
  br label %90

90:                                               ; preds = %3, %81, %57
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %41
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.samsung_i2s_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local %struct.i2s_dai* @to_info(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @config_setup(%struct.i2s_dai*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @i2s_rxctrl(%struct.i2s_dai*, i32) #1

declare dso_local i32 @i2s_txctrl(%struct.i2s_dai*, i32) #1

declare dso_local i32 @i2s_fifo(%struct.i2s_dai*, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
