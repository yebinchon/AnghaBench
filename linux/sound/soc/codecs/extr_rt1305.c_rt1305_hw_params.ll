; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1305.c_rt1305_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1305.c_rt1305_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt1305_priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Force using PLL \00", align 1
@RT1305_PLL1_S_BCLK = common dso_local global i32 0, align 4
@RT1305_FS_SYS_PRE_S_PLL1 = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unsupported frame size: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"bclk_ms is %d and pre_div is %d for iis %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"lrck is %dHz and pre_div is %d for iis %d\0A\00", align 1
@RT1305_I2S_DL_SEL_16B = common dso_local global i32 0, align 4
@RT1305_I2S_DL_SEL_20B = common dso_local global i32 0, align 4
@RT1305_I2S_DL_SEL_24B = common dso_local global i32 0, align 4
@RT1305_I2S_DL_SEL_8B = common dso_local global i32 0, align 4
@RT1305_DIV_FS_SYS_MASK = common dso_local global i32 0, align 4
@RT1305_DIV_FS_SYS_SFT = common dso_local global i32 0, align 4
@RT1305_I2S_SET_2 = common dso_local global i32 0, align 4
@RT1305_I2S_DL_SEL_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Invalid dai->id: %d\0A\00", align 1
@RT1305_CLK_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @rt1305_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1305_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.rt1305_priv*, align 8
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
  %17 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %16, i32 0, i32 1
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %17, align 8
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %8, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %20 = call %struct.rt1305_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.rt1305_priv* %20, %struct.rt1305_priv** %9, align 8
  store i32 0, i32* %10, align 4
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %22 = call i32 @params_rate(%struct.snd_pcm_hw_params* %21)
  %23 = load %struct.rt1305_priv*, %struct.rt1305_priv** %9, align 8
  %24 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.rt1305_priv*, %struct.rt1305_priv** %9, align 8
  %26 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rt1305_priv*, %struct.rt1305_priv** %9, align 8
  %29 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @rt1305_get_clk_info(i32 %27, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %3
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %36 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_warn(i32 %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %40 = load i32, i32* @RT1305_PLL1_S_BCLK, align 4
  %41 = load %struct.rt1305_priv*, %struct.rt1305_priv** %9, align 8
  %42 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 64
  %45 = load %struct.rt1305_priv*, %struct.rt1305_priv** %9, align 8
  %46 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, 256
  %49 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %39, i32 0, i32 %40, i32 %44, i32 %48)
  %50 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %51 = load i32, i32* @RT1305_FS_SYS_PRE_S_PLL1, align 4
  %52 = load %struct.rt1305_priv*, %struct.rt1305_priv** %9, align 8
  %53 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 256
  %56 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %57 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %50, i32 %51, i32 %55, i32 %56)
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %34, %3
  %59 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %60 = call i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params* %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %65 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %154

71:                                               ; preds = %58
  %72 = load i32, i32* %15, align 4
  %73 = icmp sgt i32 %72, 32
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %14, align 4
  %75 = load %struct.rt1305_priv*, %struct.rt1305_priv** %9, align 8
  %76 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %14, align 4
  %79 = shl i32 32, %78
  %80 = mul nsw i32 %77, %79
  %81 = load %struct.rt1305_priv*, %struct.rt1305_priv** %9, align 8
  %82 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %84 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %89 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @dev_dbg(i32 %85, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %87, i32 %90)
  %92 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %93 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.rt1305_priv*, %struct.rt1305_priv** %9, align 8
  %96 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %100 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @dev_dbg(i32 %94, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %97, i32 %98, i32 %101)
  %103 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %104 = call i32 @params_width(%struct.snd_pcm_hw_params* %103)
  switch i32 %104, label %121 [
    i32 16, label %105
    i32 20, label %109
    i32 24, label %113
    i32 8, label %117
  ]

105:                                              ; preds = %71
  %106 = load i32, i32* @RT1305_I2S_DL_SEL_16B, align 4
  %107 = load i32, i32* %10, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %10, align 4
  br label %124

109:                                              ; preds = %71
  %110 = load i32, i32* @RT1305_I2S_DL_SEL_20B, align 4
  %111 = load i32, i32* %10, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %10, align 4
  br label %124

113:                                              ; preds = %71
  %114 = load i32, i32* @RT1305_I2S_DL_SEL_24B, align 4
  %115 = load i32, i32* %10, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %10, align 4
  br label %124

117:                                              ; preds = %71
  %118 = load i32, i32* @RT1305_I2S_DL_SEL_8B, align 4
  %119 = load i32, i32* %10, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %10, align 4
  br label %124

121:                                              ; preds = %71
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %154

124:                                              ; preds = %117, %113, %109, %105
  %125 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %126 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  switch i32 %127, label %138 [
    i32 128, label %128
  ]

128:                                              ; preds = %124
  %129 = load i32, i32* @RT1305_DIV_FS_SYS_MASK, align 4
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* @RT1305_DIV_FS_SYS_SFT, align 4
  %132 = shl i32 %130, %131
  store i32 %132, i32* %11, align 4
  %133 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %134 = load i32, i32* @RT1305_I2S_SET_2, align 4
  %135 = load i32, i32* @RT1305_I2S_DL_SEL_MASK, align 4
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %133, i32 %134, i32 %135, i32 %136)
  br label %148

138:                                              ; preds = %124
  %139 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %140 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %143 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @dev_err(i32 %141, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %4, align 4
  br label %154

148:                                              ; preds = %128
  %149 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %150 = load i32, i32* @RT1305_CLK_2, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %11, align 4
  %153 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %149, i32 %150, i32 %151, i32 %152)
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %148, %138, %121, %63
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local %struct.rt1305_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @rt1305_get_clk_info(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
