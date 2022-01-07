; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5663.c_rt5663_v2_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5663.c_rt5663_v2_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt5663_priv = type { i32 }

@RT5663_BIAS_CUR_8 = common dso_local global i32 0, align 4
@RT5663_PWR_DIG_1 = common dso_local global i32 0, align 4
@RT5663_RECMIX = common dso_local global i32 0, align 4
@RT5663_DIG_MISC = common dso_local global i32 0, align 4
@RT5663_RC_CLK = common dso_local global i32 0, align 4
@RT5663_GLB_CLK = common dso_local global i32 0, align 4
@RT5663_ADDA_CLK_1 = common dso_local global i32 0, align 4
@RT5663_CHOP_DAC_L = common dso_local global i32 0, align 4
@RT5663_CALIB_ADC = common dso_local global i32 0, align 4
@RT5663_PWR_ANLG_1 = common dso_local global i32 0, align 4
@RT5663_HP_CALIB_2 = common dso_local global i32 0, align 4
@RT5663_HP_CALIB_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt5663_priv*)* @rt5663_v2_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt5663_v2_calibrate(%struct.rt5663_priv* %0) #0 {
  %2 = alloca %struct.rt5663_priv*, align 8
  store %struct.rt5663_priv* %0, %struct.rt5663_priv** %2, align 8
  %3 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %4 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @RT5663_BIAS_CUR_8, align 4
  %7 = call i32 @regmap_write(i32 %5, i32 %6, i32 41986)
  %8 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %9 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @RT5663_PWR_DIG_1, align 4
  %12 = call i32 @regmap_write(i32 %10, i32 %11, i32 256)
  %13 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %14 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RT5663_RECMIX, align 4
  %17 = call i32 @regmap_write(i32 %15, i32 %16, i32 16448)
  %18 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %19 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RT5663_DIG_MISC, align 4
  %22 = call i32 @regmap_write(i32 %20, i32 %21, i32 1)
  %23 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %24 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RT5663_RC_CLK, align 4
  %27 = call i32 @regmap_write(i32 %25, i32 %26, i32 896)
  %28 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %29 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @RT5663_GLB_CLK, align 4
  %32 = call i32 @regmap_write(i32 %30, i32 %31, i32 32768)
  %33 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %34 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RT5663_ADDA_CLK_1, align 4
  %37 = call i32 @regmap_write(i32 %35, i32 %36, i32 4096)
  %38 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %39 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RT5663_CHOP_DAC_L, align 4
  %42 = call i32 @regmap_write(i32 %40, i32 %41, i32 12336)
  %43 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %44 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @RT5663_CALIB_ADC, align 4
  %47 = call i32 @regmap_write(i32 %45, i32 %46, i32 15365)
  %48 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %49 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RT5663_PWR_ANLG_1, align 4
  %52 = call i32 @regmap_write(i32 %50, i32 %51, i32 41534)
  %53 = call i32 @msleep(i32 40)
  %54 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %55 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @RT5663_PWR_ANLG_1, align 4
  %58 = call i32 @regmap_write(i32 %56, i32 %57, i32 62014)
  %59 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %60 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @RT5663_HP_CALIB_2, align 4
  %63 = call i32 @regmap_write(i32 %61, i32 %62, i32 801)
  %64 = load %struct.rt5663_priv*, %struct.rt5663_priv** %2, align 8
  %65 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @RT5663_HP_CALIB_1, align 4
  %68 = call i32 @regmap_write(i32 %66, i32 %67, i32 64512)
  %69 = call i32 @msleep(i32 500)
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
