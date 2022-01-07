; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic31xx.c_aic31xx_clk_off.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic31xx.c_aic31xx_clk_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@AIC31XX_PM_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"codec clock -> off\0A\00", align 1
@AIC31XX_BCLKN = common dso_local global i32 0, align 4
@AIC31XX_MADC = common dso_local global i32 0, align 4
@AIC31XX_NADC = common dso_local global i32 0, align 4
@AIC31XX_MDAC = common dso_local global i32 0, align 4
@AIC31XX_NDAC = common dso_local global i32 0, align 4
@AIC31XX_PLLPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @aic31xx_clk_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aic31xx_clk_off(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %5 = load i32, i32* @AIC31XX_PM_MASK, align 4
  store i32 %5, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dev_dbg(i32 %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %11 = load i32, i32* @AIC31XX_BCLKN, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %10, i32 %11, i32 %12, i32 %13)
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %16 = load i32, i32* @AIC31XX_MADC, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %21 = load i32, i32* @AIC31XX_NADC, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %26 = load i32, i32* @AIC31XX_MDAC, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %31 = load i32, i32* @AIC31XX_NDAC, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %36 = load i32, i32* @AIC31XX_PLLPR, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %35, i32 %36, i32 %37, i32 %38)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
