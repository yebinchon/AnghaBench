; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_alc5632.c_alc5632_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_alc5632.c_alc5632_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@ALC5632_DAI_CONTROL = common dso_local global i32 0, align 4
@ALC5632_DAI_I2S_DL_MASK = common dso_local global i32 0, align 4
@ALC5632_DAI_I2S_DL_16 = common dso_local global i32 0, align 4
@ALC5632_DAI_I2S_DL_20 = common dso_local global i32 0, align 4
@ALC5632_DAI_I2S_DL_24 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@coeff_div = common dso_local global %struct.TYPE_2__* null, align 8
@ALC5632_DAC_CLK_CTRL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @alc5632_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc5632_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %8, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = load i32, i32* @ALC5632_DAI_CONTROL, align 4
  %17 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @ALC5632_DAI_I2S_DL_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %11, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %11, align 4
  %22 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %23 = call i32 @params_width(%struct.snd_pcm_hw_params* %22)
  switch i32 %23, label %36 [
    i32 16, label %24
    i32 20, label %28
    i32 24, label %32
  ]

24:                                               ; preds = %3
  %25 = load i32, i32* @ALC5632_DAI_I2S_DL_16, align 4
  %26 = load i32, i32* %11, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %11, align 4
  br label %39

28:                                               ; preds = %3
  %29 = load i32, i32* @ALC5632_DAI_I2S_DL_20, align 4
  %30 = load i32, i32* %11, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %11, align 4
  br label %39

32:                                               ; preds = %3
  %33 = load i32, i32* @ALC5632_DAI_I2S_DL_24, align 4
  %34 = load i32, i32* %11, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %11, align 4
  br label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %65

39:                                               ; preds = %32, %28, %24
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %41 = load i32, i32* @ALC5632_DAI_CONTROL, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %40, i32 %41, i32 %42)
  %44 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %45 = call i32 @params_rate(%struct.snd_pcm_hw_params* %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @get_coeff(%struct.snd_soc_component* %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %65

54:                                               ; preds = %39
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coeff_div, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %9, align 4
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %62 = load i32, i32* @ALC5632_DAC_CLK_CTRL1, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %61, i32 %62, i32 %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %54, %51, %36
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @get_coeff(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
