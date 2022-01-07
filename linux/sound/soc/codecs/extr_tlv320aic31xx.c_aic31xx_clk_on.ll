; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic31xx.c_aic31xx_clk_on.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic31xx.c_aic31xx_clk_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.snd_soc_component = type { i32 }
%struct.aic31xx_priv = type { i64 }

@AIC31XX_PM_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"codec clock -> on (rate %d)\0A\00", align 1
@aic31xx_divs = common dso_local global %struct.TYPE_2__* null, align 8
@AIC31XX_PLLPR = common dso_local global i32 0, align 4
@AIC31XX_NDAC = common dso_local global i32 0, align 4
@AIC31XX_MDAC = common dso_local global i32 0, align 4
@AIC31XX_NADC = common dso_local global i32 0, align 4
@AIC31XX_MADC = common dso_local global i32 0, align 4
@AIC31XX_BCLKN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @aic31xx_clk_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aic31xx_clk_on(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.aic31xx_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = call %struct.aic31xx_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.aic31xx_priv* %7, %struct.aic31xx_priv** %3, align 8
  %8 = load i32, i32* @AIC31XX_PM_MASK, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @AIC31XX_PM_MASK, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %11 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @aic31xx_divs, align 8
  %14 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %3, align 8
  %15 = getelementptr inbounds %struct.aic31xx_priv, %struct.aic31xx_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %22 = load i32, i32* @AIC31XX_PLLPR, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %21, i32 %22, i32 %23, i32 %24)
  %26 = call i32 @mdelay(i32 10)
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %28 = load i32, i32* @AIC31XX_NDAC, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %33 = load i32, i32* @AIC31XX_MDAC, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @aic31xx_divs, align 8
  %38 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %3, align 8
  %39 = getelementptr inbounds %struct.aic31xx_priv, %struct.aic31xx_priv* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %1
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %47 = load i32, i32* @AIC31XX_NADC, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %46, i32 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @aic31xx_divs, align 8
  %53 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %3, align 8
  %54 = getelementptr inbounds %struct.aic31xx_priv, %struct.aic31xx_priv* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %51
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %62 = load i32, i32* @AIC31XX_MADC, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %61, i32 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %60, %51
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %68 = load i32, i32* @AIC31XX_BCLKN, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %67, i32 %68, i32 %69, i32 %70)
  ret void
}

declare dso_local %struct.aic31xx_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
