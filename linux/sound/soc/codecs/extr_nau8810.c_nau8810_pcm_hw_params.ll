; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8810.c_nau8810_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8810.c_nau8810_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.nau8810 = type { i64, i32, i32 }

@NAU8810_REG_CLOCK = common dso_local global i32 0, align 4
@NAU8810_CLKIO_MASTER = common dso_local global i32 0, align 4
@NAU8810_BCLKDIV_8 = common dso_local global i32 0, align 4
@NAU8810_BCLKDIV_4 = common dso_local global i32 0, align 4
@NAU8810_BCLKDIV_2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NAU8810_BCLKSEL_MASK = common dso_local global i32 0, align 4
@NAU8810_WLEN_20 = common dso_local global i32 0, align 4
@NAU8810_WLEN_24 = common dso_local global i32 0, align 4
@NAU8810_WLEN_32 = common dso_local global i32 0, align 4
@NAU8810_SMPLR_8K = common dso_local global i32 0, align 4
@NAU8810_SMPLR_12K = common dso_local global i32 0, align 4
@NAU8810_SMPLR_16K = common dso_local global i32 0, align 4
@NAU8810_SMPLR_24K = common dso_local global i32 0, align 4
@NAU8810_SMPLR_32K = common dso_local global i32 0, align 4
@NAU8810_REG_IFACE = common dso_local global i32 0, align 4
@NAU8810_WLEN_MASK = common dso_local global i32 0, align 4
@NAU8810_REG_SMPLR = common dso_local global i32 0, align 4
@NAU8810_SMPLR_MASK = common dso_local global i32 0, align 4
@NAU8810_SCLK_MCLK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"MCLK div configuration fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @nau8810_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8810_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.nau8810*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %16, i32 0, i32 0
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %17, align 8
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %8, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %20 = call %struct.nau8810* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.nau8810* %20, %struct.nau8810** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load %struct.nau8810*, %struct.nau8810** %9, align 8
  %22 = getelementptr inbounds %struct.nau8810, %struct.nau8810* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NAU8810_REG_CLOCK, align 4
  %25 = call i32 @regmap_read(i32 %23, i32 %24, i32* %13)
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @NAU8810_CLKIO_MASTER, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %63

30:                                               ; preds = %3
  %31 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %32 = call i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params* %31)
  %33 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %34 = call i32 @params_rate(%struct.snd_pcm_hw_params* %33)
  %35 = sdiv i32 %32, %34
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ule i32 %36, 32
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @NAU8810_BCLKDIV_8, align 4
  store i32 %39, i32* %15, align 4
  br label %55

40:                                               ; preds = %30
  %41 = load i32, i32* %14, align 4
  %42 = icmp ule i32 %41, 64
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @NAU8810_BCLKDIV_4, align 4
  store i32 %44, i32* %15, align 4
  br label %54

45:                                               ; preds = %40
  %46 = load i32, i32* %14, align 4
  %47 = icmp ule i32 %46, 128
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @NAU8810_BCLKDIV_2, align 4
  store i32 %49, i32* %15, align 4
  br label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %138

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53, %43
  br label %55

55:                                               ; preds = %54, %38
  %56 = load %struct.nau8810*, %struct.nau8810** %9, align 8
  %57 = getelementptr inbounds %struct.nau8810, %struct.nau8810* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @NAU8810_REG_CLOCK, align 4
  %60 = load i32, i32* @NAU8810_BCLKSEL_MASK, align 4
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @regmap_update_bits(i32 %58, i32 %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %55, %3
  %64 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %65 = call i32 @params_width(%struct.snd_pcm_hw_params* %64)
  switch i32 %65, label %79 [
    i32 16, label %66
    i32 20, label %67
    i32 24, label %71
    i32 32, label %75
  ]

66:                                               ; preds = %63
  br label %79

67:                                               ; preds = %63
  %68 = load i32, i32* @NAU8810_WLEN_20, align 4
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  br label %79

71:                                               ; preds = %63
  %72 = load i32, i32* @NAU8810_WLEN_24, align 4
  %73 = load i32, i32* %10, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %10, align 4
  br label %79

75:                                               ; preds = %63
  %76 = load i32, i32* @NAU8810_WLEN_32, align 4
  %77 = load i32, i32* %10, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %63, %75, %71, %67, %66
  %80 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %81 = call i32 @params_rate(%struct.snd_pcm_hw_params* %80)
  switch i32 %81, label %103 [
    i32 8000, label %82
    i32 11025, label %86
    i32 16000, label %90
    i32 22050, label %94
    i32 32000, label %98
    i32 44100, label %102
    i32 48000, label %102
  ]

82:                                               ; preds = %79
  %83 = load i32, i32* @NAU8810_SMPLR_8K, align 4
  %84 = load i32, i32* %11, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %11, align 4
  br label %103

86:                                               ; preds = %79
  %87 = load i32, i32* @NAU8810_SMPLR_12K, align 4
  %88 = load i32, i32* %11, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %11, align 4
  br label %103

90:                                               ; preds = %79
  %91 = load i32, i32* @NAU8810_SMPLR_16K, align 4
  %92 = load i32, i32* %11, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %11, align 4
  br label %103

94:                                               ; preds = %79
  %95 = load i32, i32* @NAU8810_SMPLR_24K, align 4
  %96 = load i32, i32* %11, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %11, align 4
  br label %103

98:                                               ; preds = %79
  %99 = load i32, i32* @NAU8810_SMPLR_32K, align 4
  %100 = load i32, i32* %11, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %11, align 4
  br label %103

102:                                              ; preds = %79, %79
  br label %103

103:                                              ; preds = %79, %102, %98, %94, %90, %86, %82
  %104 = load %struct.nau8810*, %struct.nau8810** %9, align 8
  %105 = getelementptr inbounds %struct.nau8810, %struct.nau8810* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @NAU8810_REG_IFACE, align 4
  %108 = load i32, i32* @NAU8810_WLEN_MASK, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @regmap_update_bits(i32 %106, i32 %107, i32 %108, i32 %109)
  %111 = load %struct.nau8810*, %struct.nau8810** %9, align 8
  %112 = getelementptr inbounds %struct.nau8810, %struct.nau8810* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @NAU8810_REG_SMPLR, align 4
  %115 = load i32, i32* @NAU8810_SMPLR_MASK, align 4
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @regmap_update_bits(i32 %113, i32 %114, i32 %115, i32 %116)
  %118 = load %struct.nau8810*, %struct.nau8810** %9, align 8
  %119 = getelementptr inbounds %struct.nau8810, %struct.nau8810* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @NAU8810_SCLK_MCLK, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %136

123:                                              ; preds = %103
  %124 = load %struct.nau8810*, %struct.nau8810** %9, align 8
  %125 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %126 = call i32 @params_rate(%struct.snd_pcm_hw_params* %125)
  %127 = call i32 @nau8810_mclk_clkdiv(%struct.nau8810* %124, i32 %126)
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %123
  %131 = load %struct.nau8810*, %struct.nau8810** %9, align 8
  %132 = getelementptr inbounds %struct.nau8810, %struct.nau8810* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @dev_err(i32 %133, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %135

135:                                              ; preds = %130, %123
  br label %136

136:                                              ; preds = %135, %103
  %137 = load i32, i32* %12, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %136, %50
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local %struct.nau8810* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @nau8810_mclk_clkdiv(%struct.nau8810*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
