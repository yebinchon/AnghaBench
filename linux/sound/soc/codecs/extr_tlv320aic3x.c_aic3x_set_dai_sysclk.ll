; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.aic3x_priv = type { i32 }

@AIC3X_CLKGEN_CTRL_REG = common dso_local global i32 0, align 4
@PLLCLK_IN_MASK = common dso_local global i32 0, align 4
@PLLCLK_IN_SHIFT = common dso_local global i32 0, align 4
@CLKDIV_IN_MASK = common dso_local global i32 0, align 4
@CLKDIV_IN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @aic3x_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic3x_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_soc_component*, align 8
  %10 = alloca %struct.aic3x_priv*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %9, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %15 = call %struct.aic3x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.aic3x_priv* %15, %struct.aic3x_priv** %10, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %17 = load i32, i32* @AIC3X_CLKGEN_CTRL_REG, align 4
  %18 = load i32, i32* @PLLCLK_IN_MASK, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PLLCLK_IN_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %16, i32 %17, i32 %18, i32 %21)
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %24 = load i32, i32* @AIC3X_CLKGEN_CTRL_REG, align 4
  %25 = load i32, i32* @CLKDIV_IN_MASK, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @CLKDIV_IN_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %23, i32 %24, i32 %25, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.aic3x_priv*, %struct.aic3x_priv** %10, align 8
  %32 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  ret i32 0
}

declare dso_local %struct.aic3x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
