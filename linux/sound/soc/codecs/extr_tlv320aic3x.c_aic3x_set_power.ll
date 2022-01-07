; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.aic3x_priv = type { i32, i32, i32, i32 }

@AIC3X_PLL_PROGC_REG = common dso_local global i64 0, align 8
@AIC3X_PLL_PROGD_REG = common dso_local global i64 0, align 8
@aic3x_reg = common dso_local global %struct.TYPE_2__* null, align 8
@AIC3X_RESET = common dso_local global i64 0, align 8
@SOFT_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @aic3x_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic3x_set_power(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aic3x_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call %struct.aic3x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.aic3x_priv* %10, %struct.aic3x_priv** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %80

13:                                               ; preds = %2
  %14 = load %struct.aic3x_priv*, %struct.aic3x_priv** %5, align 8
  %15 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ARRAY_SIZE(i32 %16)
  %18 = load %struct.aic3x_priv*, %struct.aic3x_priv** %5, align 8
  %19 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @regulator_bulk_enable(i32 %17, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %104

25:                                               ; preds = %13
  %26 = load %struct.aic3x_priv*, %struct.aic3x_priv** %5, align 8
  %27 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load %struct.aic3x_priv*, %struct.aic3x_priv** %5, align 8
  %29 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @gpio_is_valid(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = call i32 @udelay(i32 1)
  %35 = load %struct.aic3x_priv*, %struct.aic3x_priv** %5, align 8
  %36 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @gpio_set_value(i32 %37, i32 1)
  br label %39

39:                                               ; preds = %33, %25
  %40 = load %struct.aic3x_priv*, %struct.aic3x_priv** %5, align 8
  %41 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @regcache_cache_only(i32 %42, i32 0)
  %44 = load %struct.aic3x_priv*, %struct.aic3x_priv** %5, align 8
  %45 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @regcache_sync(i32 %46)
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %49 = load i64, i64* @AIC3X_PLL_PROGC_REG, align 8
  %50 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %48, i64 %49)
  store i32 %50, i32* %6, align 4
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %52 = load i64, i64* @AIC3X_PLL_PROGD_REG, align 8
  %53 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %51, i64 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @aic3x_reg, align 8
  %56 = load i64, i64* @AIC3X_PLL_PROGC_REG, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %54, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %39
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @aic3x_reg, align 8
  %64 = load i64, i64* @AIC3X_PLL_PROGD_REG, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %62, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %61, %39
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %71 = load i64, i64* @AIC3X_PLL_PROGC_REG, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %70, i64 %71, i32 %72)
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %75 = load i64, i64* @AIC3X_PLL_PROGD_REG, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %74, i64 %75, i32 %76)
  br label %78

78:                                               ; preds = %69, %61
  %79 = call i32 @mdelay(i32 50)
  br label %103

80:                                               ; preds = %2
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %82 = load i64, i64* @AIC3X_RESET, align 8
  %83 = load i32, i32* @SOFT_RESET, align 4
  %84 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %81, i64 %82, i32 %83)
  %85 = load %struct.aic3x_priv*, %struct.aic3x_priv** %5, align 8
  %86 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @regcache_mark_dirty(i32 %87)
  %89 = load %struct.aic3x_priv*, %struct.aic3x_priv** %5, align 8
  %90 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %89, i32 0, i32 0
  store i32 0, i32* %90, align 4
  %91 = load %struct.aic3x_priv*, %struct.aic3x_priv** %5, align 8
  %92 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @regcache_cache_only(i32 %93, i32 1)
  %95 = load %struct.aic3x_priv*, %struct.aic3x_priv** %5, align 8
  %96 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ARRAY_SIZE(i32 %97)
  %99 = load %struct.aic3x_priv*, %struct.aic3x_priv** %5, align 8
  %100 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @regulator_bulk_disable(i32 %98, i32 %101)
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %80, %78
  br label %104

104:                                              ; preds = %103, %24
  %105 = load i32, i32* %8, align 4
  ret i32 %105
}

declare dso_local %struct.aic3x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i64) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i64, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
