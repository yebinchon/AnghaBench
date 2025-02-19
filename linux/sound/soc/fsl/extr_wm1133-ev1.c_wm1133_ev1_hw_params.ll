; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_wm1133-ev1.c_wm1133_ev1_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_wm1133-ev1.c_wm1133_ev1_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai*, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@wm8350_audio = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@WM8350_MCLK_SEL_PLL_MCLK = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@WM8350_BCLK_CLKDIV = common dso_local global i32 0, align 4
@WM8350_DACLR_CLKDIV = common dso_local global i32 0, align 4
@WM8350_ADCLR_CLKDIV = common dso_local global i32 0, align 4
@WM8350_DAC_CLKDIV = common dso_local global i32 0, align 4
@WM8350_ADC_CLKDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @wm1133_ev1_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm1133_ev1_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_dai*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %15, align 8
  store %struct.snd_soc_pcm_runtime* %16, %struct.snd_soc_pcm_runtime** %6, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 1
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %18, align 8
  store %struct.snd_soc_dai* %19, %struct.snd_soc_dai** %7, align 8
  %20 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %21 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %20, i32 0, i32 0
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %21, align 8
  store %struct.snd_soc_dai* %22, %struct.snd_soc_dai** %8, align 8
  store i32 0, i32* %10, align 4
  %23 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %24 = call i64 @params_format(%struct.snd_pcm_hw_params* %23)
  store i64 %24, i64* %11, align 8
  %25 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %26 = call i32 @params_rate(%struct.snd_pcm_hw_params* %25)
  store i32 %26, i32* %12, align 4
  %27 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %28 = call i32 @params_channels(%struct.snd_pcm_hw_params* %27)
  store i32 %28, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %63, %2
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm8350_audio, align 8
  %32 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %66

34:                                               ; preds = %29
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm8350_audio, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %35, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %34
  %44 = load i64, i64* %11, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm8350_audio, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %44, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %43
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm8350_audio, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %53, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store i32 1, i32* %10, align 4
  br label %66

62:                                               ; preds = %52, %43, %34
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %29

66:                                               ; preds = %61, %29
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %147

72:                                               ; preds = %66
  %73 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm8350_audio, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %73, i32 0, i32 0, i32 14750000, i32 %79)
  %81 = load i32, i32* %13, align 4
  switch i32 %81, label %88 [
    i32 2, label %82
    i32 1, label %85
  ]

82:                                               ; preds = %72
  %83 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %84 = call i32 @snd_soc_dai_set_tdm_slot(%struct.snd_soc_dai* %83, i32 3, i32 3, i32 2, i32 0)
  br label %91

85:                                               ; preds = %72
  %86 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %87 = call i32 @snd_soc_dai_set_tdm_slot(%struct.snd_soc_dai* %86, i32 1, i32 1, i32 1, i32 0)
  br label %91

88:                                               ; preds = %72
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %147

91:                                               ; preds = %85, %82
  %92 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %93 = load i32, i32* @WM8350_MCLK_SEL_PLL_MCLK, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm8350_audio, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %101 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %92, i32 %93, i32 %99, i32 %100)
  %102 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %103 = load i32, i32* @WM8350_BCLK_CLKDIV, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm8350_audio, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai* %102, i32 %103, i32 %109)
  %111 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %112 = load i32, i32* @WM8350_DACLR_CLKDIV, align 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm8350_audio, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai* %111, i32 %112, i32 %118)
  %120 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %121 = load i32, i32* @WM8350_ADCLR_CLKDIV, align 4
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm8350_audio, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai* %120, i32 %121, i32 %127)
  %129 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %130 = load i32, i32* @WM8350_DAC_CLKDIV, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm8350_audio, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai* %129, i32 %130, i32 %136)
  %138 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %139 = load i32, i32* @WM8350_ADC_CLKDIV, align 4
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm8350_audio, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai* %138, i32 %139, i32 %145)
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %91, %88, %69
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i64 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_tdm_slot(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
