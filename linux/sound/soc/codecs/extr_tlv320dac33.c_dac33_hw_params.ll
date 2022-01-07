; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.tlv320dac33_priv = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"unsupported rate %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DAC33_FIFO_SIZE_16BIT = common dso_local global i32 0, align 4
@DAC33_FIFO_SIZE_24BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"unsupported width %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @dac33_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dac33_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.tlv320dac33_priv*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %8, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %14 = call %struct.tlv320dac33_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.tlv320dac33_priv* %14, %struct.tlv320dac33_priv** %9, align 8
  %15 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %16 = call i32 @params_rate(%struct.snd_pcm_hw_params* %15)
  switch i32 %16, label %18 [
    i32 44100, label %17
    i32 48000, label %17
  ]

17:                                               ; preds = %3, %3
  br label %27

18:                                               ; preds = %3
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %20 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %23 = call i32 @params_rate(%struct.snd_pcm_hw_params* %22)
  %24 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %60

27:                                               ; preds = %17
  %28 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %29 = call i32 @params_width(%struct.snd_pcm_hw_params* %28)
  switch i32 %29, label %50 [
    i32 16, label %30
    i32 32, label %40
  ]

30:                                               ; preds = %27
  %31 = load i32, i32* @DAC33_FIFO_SIZE_16BIT, align 4
  %32 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %9, align 8
  %33 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %9, align 8
  %35 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @CALC_BURST_RATE(i32 %36, i32 32)
  %38 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %9, align 8
  %39 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  br label %59

40:                                               ; preds = %27
  %41 = load i32, i32* @DAC33_FIFO_SIZE_24BIT, align 4
  %42 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %9, align 8
  %43 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %9, align 8
  %45 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @CALC_BURST_RATE(i32 %46, i32 64)
  %48 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %9, align 8
  %49 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  br label %59

50:                                               ; preds = %27
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %52 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %55 = call i32 @params_width(%struct.snd_pcm_hw_params* %54)
  %56 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %60

59:                                               ; preds = %40, %30
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %50, %18
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.tlv320dac33_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i8* @CALC_BURST_RATE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
