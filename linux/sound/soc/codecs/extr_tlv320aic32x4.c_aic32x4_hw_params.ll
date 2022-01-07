; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4.c_aic32x4_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4.c_aic32x4_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.aic32x4_priv = type { i64 }

@AIC32X4_WORD_LEN_16BITS = common dso_local global i32 0, align 4
@AIC32X4_IFACE1_DATALEN_SHIFT = common dso_local global i32 0, align 4
@AIC32X4_WORD_LEN_20BITS = common dso_local global i32 0, align 4
@AIC32X4_WORD_LEN_24BITS = common dso_local global i32 0, align 4
@AIC32X4_WORD_LEN_32BITS = common dso_local global i32 0, align 4
@AIC32X4_IFACE1 = common dso_local global i32 0, align 4
@AIC32X4_IFACE1_DATALEN_MASK = common dso_local global i32 0, align 4
@AIC32X4_RDAC2LCHN = common dso_local global i32 0, align 4
@AIC32X4_LDAC2LCHN = common dso_local global i32 0, align 4
@AIC32X4_LDAC2RCHN = common dso_local global i32 0, align 4
@AIC32X4_RDAC2RCHN = common dso_local global i32 0, align 4
@AIC32X4_DACSETUP = common dso_local global i32 0, align 4
@AIC32X4_DAC_CHAN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @aic32x4_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic32x4_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.aic32x4_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %7, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %15 = call %struct.aic32x4_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.aic32x4_priv* %15, %struct.aic32x4_priv** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %18 = call i32 @params_rate(%struct.snd_pcm_hw_params* %17)
  %19 = call i32 @aic32x4_setup_clocks(%struct.snd_soc_component* %16, i32 %18)
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %21 = call i32 @params_width(%struct.snd_pcm_hw_params* %20)
  switch i32 %21, label %46 [
    i32 16, label %22
    i32 20, label %28
    i32 24, label %34
    i32 32, label %40
  ]

22:                                               ; preds = %3
  %23 = load i32, i32* @AIC32X4_WORD_LEN_16BITS, align 4
  %24 = load i32, i32* @AIC32X4_IFACE1_DATALEN_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  br label %46

28:                                               ; preds = %3
  %29 = load i32, i32* @AIC32X4_WORD_LEN_20BITS, align 4
  %30 = load i32, i32* @AIC32X4_IFACE1_DATALEN_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %9, align 4
  br label %46

34:                                               ; preds = %3
  %35 = load i32, i32* @AIC32X4_WORD_LEN_24BITS, align 4
  %36 = load i32, i32* @AIC32X4_IFACE1_DATALEN_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %46

40:                                               ; preds = %3
  %41 = load i32, i32* @AIC32X4_WORD_LEN_32BITS, align 4
  %42 = load i32, i32* @AIC32X4_IFACE1_DATALEN_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %3, %40, %34, %28, %22
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %48 = load i32, i32* @AIC32X4_IFACE1, align 4
  %49 = load i32, i32* @AIC32X4_IFACE1_DATALEN_MASK, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %53 = call i32 @params_channels(%struct.snd_pcm_hw_params* %52)
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load i32, i32* @AIC32X4_RDAC2LCHN, align 4
  %57 = load i32, i32* @AIC32X4_LDAC2LCHN, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %10, align 4
  br label %73

59:                                               ; preds = %46
  %60 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %8, align 8
  %61 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @AIC32X4_RDAC2LCHN, align 4
  %66 = load i32, i32* @AIC32X4_LDAC2RCHN, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %10, align 4
  br label %72

68:                                               ; preds = %59
  %69 = load i32, i32* @AIC32X4_LDAC2LCHN, align 4
  %70 = load i32, i32* @AIC32X4_RDAC2RCHN, align 4
  %71 = or i32 %69, %70
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %68, %64
  br label %73

73:                                               ; preds = %72, %55
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %75 = load i32, i32* @AIC32X4_DACSETUP, align 4
  %76 = load i32, i32* @AIC32X4_DAC_CHAN_MASK, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %74, i32 %75, i32 %76, i32 %77)
  ret i32 0
}

declare dso_local %struct.aic32x4_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @aic32x4_setup_clocks(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
