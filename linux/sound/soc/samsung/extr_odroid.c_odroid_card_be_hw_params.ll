; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_odroid.c_odroid_card_be_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_odroid.c_odroid_card_be_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32, %struct.snd_soc_dai**, i32 }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.odroid_priv = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @odroid_card_be_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @odroid_card_be_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.odroid_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_soc_dai*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %15, align 8
  store %struct.snd_soc_pcm_runtime* %16, %struct.snd_soc_pcm_runtime** %6, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.odroid_priv* @snd_soc_card_get_drvdata(i32 %19)
  store %struct.odroid_priv* %20, %struct.odroid_priv** %7, align 8
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %22 = call i32 @params_rate(%struct.snd_pcm_hw_params* %21)
  switch i32 %22, label %26 [
    i32 64000, label %23
    i32 44100, label %24
    i32 88200, label %24
    i32 32000, label %25
    i32 48000, label %25
    i32 96000, label %25
  ]

23:                                               ; preds = %2
  store i32 196608001, i32* %8, align 4
  store i32 384, i32* %10, align 4
  br label %29

24:                                               ; preds = %2, %2
  store i32 180633609, i32* %8, align 4
  store i32 512, i32* %10, align 4
  br label %29

25:                                               ; preds = %2, %2, %2
  store i32 196608001, i32* %8, align 4
  store i32 512, i32* %10, align 4
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %89

29:                                               ; preds = %25, %24, %23
  %30 = load %struct.odroid_priv*, %struct.odroid_priv** %7, align 8
  %31 = getelementptr inbounds %struct.odroid_priv, %struct.odroid_priv* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = udiv i32 %33, 2
  %35 = add i32 %34, 1
  %36 = call i32 @clk_set_rate(i32 %32, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %3, align 4
  br label %89

41:                                               ; preds = %29
  %42 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %43 = call i32 @params_rate(%struct.snd_pcm_hw_params* %42)
  %44 = load i32, i32* %10, align 4
  %45 = mul i32 %43, %44
  %46 = add i32 %45, 2
  store i32 %46, i32* %9, align 4
  %47 = load %struct.odroid_priv*, %struct.odroid_priv** %7, align 8
  %48 = getelementptr inbounds %struct.odroid_priv, %struct.odroid_priv* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @clk_set_rate(i32 %49, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %3, align 4
  br label %89

56:                                               ; preds = %41
  %57 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %58 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %76

61:                                               ; preds = %56
  %62 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %63 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %62, i32 0, i32 1
  %64 = load %struct.snd_soc_dai**, %struct.snd_soc_dai*** %63, align 8
  %65 = getelementptr inbounds %struct.snd_soc_dai*, %struct.snd_soc_dai** %64, i64 1
  %66 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %65, align 8
  store %struct.snd_soc_dai* %66, %struct.snd_soc_dai** %13, align 8
  %67 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %13, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %70 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %67, i32 0, i32 %68, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %3, align 4
  br label %89

75:                                               ; preds = %61
  br label %76

76:                                               ; preds = %75, %56
  %77 = load %struct.odroid_priv*, %struct.odroid_priv** %7, align 8
  %78 = getelementptr inbounds %struct.odroid_priv, %struct.odroid_priv* %77, i32 0, i32 1
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @spin_lock_irqsave(i32* %78, i64 %79)
  %81 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %82 = call i32 @params_rate(%struct.snd_pcm_hw_params* %81)
  %83 = load %struct.odroid_priv*, %struct.odroid_priv** %7, align 8
  %84 = getelementptr inbounds %struct.odroid_priv, %struct.odroid_priv* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.odroid_priv*, %struct.odroid_priv** %7, align 8
  %86 = getelementptr inbounds %struct.odroid_priv, %struct.odroid_priv* %85, i32 0, i32 1
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %76, %73, %54, %39, %26
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.odroid_priv* @snd_soc_card_get_drvdata(i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
