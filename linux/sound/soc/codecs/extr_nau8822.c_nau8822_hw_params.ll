; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8822.c_nau8822_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8822.c_nau8822_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.nau8822 = type { i64 }

@NAU8822_REG_CLOCKING = common dso_local global i32 0, align 4
@NAU8822_CLK_MASTER = common dso_local global i32 0, align 4
@NAU8822_BCLKDIV_8 = common dso_local global i32 0, align 4
@NAU8822_BCLKDIV_4 = common dso_local global i32 0, align 4
@NAU8822_BCLKDIV_2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NAU8822_BCLKSEL_MASK = common dso_local global i32 0, align 4
@NAU8822_WLEN_20 = common dso_local global i32 0, align 4
@NAU8822_WLEN_24 = common dso_local global i32 0, align 4
@NAU8822_WLEN_32 = common dso_local global i32 0, align 4
@NAU8822_SMPLR_8K = common dso_local global i32 0, align 4
@NAU8822_SMPLR_12K = common dso_local global i32 0, align 4
@NAU8822_SMPLR_16K = common dso_local global i32 0, align 4
@NAU8822_SMPLR_24K = common dso_local global i32 0, align 4
@NAU8822_SMPLR_32K = common dso_local global i32 0, align 4
@NAU8822_REG_AUDIO_INTERFACE = common dso_local global i32 0, align 4
@NAU8822_WLEN_MASK = common dso_local global i32 0, align 4
@NAU8822_REG_ADDITIONAL_CONTROL = common dso_local global i32 0, align 4
@NAU8822_SMPLR_MASK = common dso_local global i32 0, align 4
@NAU8822_CLK_MCLK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @nau8822_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8822_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.nau8822*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %8, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %19 = call %struct.nau8822* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.nau8822* %19, %struct.nau8822** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %21 = load i32, i32* @NAU8822_REG_CLOCKING, align 4
  %22 = call i32 @snd_soc_component_read(%struct.snd_soc_component* %20, i32 %21, i32* %12)
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @NAU8822_CLK_MASTER, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %3
  %28 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %29 = call i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params* %28)
  %30 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %31 = call i32 @params_rate(%struct.snd_pcm_hw_params* %30)
  %32 = sdiv i32 %29, %31
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ule i32 %33, 32
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @NAU8822_BCLKDIV_8, align 4
  store i32 %36, i32* %14, align 4
  br label %52

37:                                               ; preds = %27
  %38 = load i32, i32* %13, align 4
  %39 = icmp ule i32 %38, 64
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @NAU8822_BCLKDIV_4, align 4
  store i32 %41, i32* %14, align 4
  br label %51

42:                                               ; preds = %37
  %43 = load i32, i32* %13, align 4
  %44 = icmp ule i32 %43, 128
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @NAU8822_BCLKDIV_2, align 4
  store i32 %46, i32* %14, align 4
  br label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %126

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %40
  br label %52

52:                                               ; preds = %51, %35
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %54 = load i32, i32* @NAU8822_REG_CLOCKING, align 4
  %55 = load i32, i32* @NAU8822_BCLKSEL_MASK, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %53, i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %52, %3
  %59 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %60 = call i32 @params_format(%struct.snd_pcm_hw_params* %59)
  switch i32 %60, label %74 [
    i32 131, label %61
    i32 130, label %62
    i32 129, label %66
    i32 128, label %70
  ]

61:                                               ; preds = %58
  br label %77

62:                                               ; preds = %58
  %63 = load i32, i32* @NAU8822_WLEN_20, align 4
  %64 = load i32, i32* %10, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %10, align 4
  br label %77

66:                                               ; preds = %58
  %67 = load i32, i32* @NAU8822_WLEN_24, align 4
  %68 = load i32, i32* %10, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %10, align 4
  br label %77

70:                                               ; preds = %58
  %71 = load i32, i32* @NAU8822_WLEN_32, align 4
  %72 = load i32, i32* %10, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %10, align 4
  br label %77

74:                                               ; preds = %58
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %126

77:                                               ; preds = %70, %66, %62, %61
  %78 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %79 = call i32 @params_rate(%struct.snd_pcm_hw_params* %78)
  switch i32 %79, label %101 [
    i32 8000, label %80
    i32 11025, label %84
    i32 16000, label %88
    i32 22050, label %92
    i32 32000, label %96
    i32 44100, label %100
    i32 48000, label %100
  ]

80:                                               ; preds = %77
  %81 = load i32, i32* @NAU8822_SMPLR_8K, align 4
  %82 = load i32, i32* %11, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %11, align 4
  br label %104

84:                                               ; preds = %77
  %85 = load i32, i32* @NAU8822_SMPLR_12K, align 4
  %86 = load i32, i32* %11, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %11, align 4
  br label %104

88:                                               ; preds = %77
  %89 = load i32, i32* @NAU8822_SMPLR_16K, align 4
  %90 = load i32, i32* %11, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %11, align 4
  br label %104

92:                                               ; preds = %77
  %93 = load i32, i32* @NAU8822_SMPLR_24K, align 4
  %94 = load i32, i32* %11, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %11, align 4
  br label %104

96:                                               ; preds = %77
  %97 = load i32, i32* @NAU8822_SMPLR_32K, align 4
  %98 = load i32, i32* %11, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %11, align 4
  br label %104

100:                                              ; preds = %77, %77
  br label %104

101:                                              ; preds = %77
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %126

104:                                              ; preds = %100, %96, %92, %88, %84, %80
  %105 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %106 = load i32, i32* @NAU8822_REG_AUDIO_INTERFACE, align 4
  %107 = load i32, i32* @NAU8822_WLEN_MASK, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %105, i32 %106, i32 %107, i32 %108)
  %110 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %111 = load i32, i32* @NAU8822_REG_ADDITIONAL_CONTROL, align 4
  %112 = load i32, i32* @NAU8822_SMPLR_MASK, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %110, i32 %111, i32 %112, i32 %113)
  %115 = load %struct.nau8822*, %struct.nau8822** %9, align 8
  %116 = getelementptr inbounds %struct.nau8822, %struct.nau8822* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @NAU8822_CLK_MCLK, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %104
  %121 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %122 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %123 = call i32 @params_rate(%struct.snd_pcm_hw_params* %122)
  %124 = call i32 @nau8822_config_clkdiv(%struct.snd_soc_dai* %121, i32 0, i32 %123)
  br label %125

125:                                              ; preds = %120, %104
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %125, %101, %74, %47
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local %struct.nau8822* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read(%struct.snd_soc_component*, i32, i32*) #1

declare dso_local i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @nau8822_config_clkdiv(%struct.snd_soc_dai*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
