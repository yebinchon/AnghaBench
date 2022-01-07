; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5514.c_rt5514_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5514.c_rt5514_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5514_priv = type { i32, i32, i32, i32 }

@SND_SOC_BIAS_ON = common dso_local global i32 0, align 4
@SND_SOC_BIAS_OFF = common dso_local global i32 0, align 4
@rt5514_i2c_patch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @rt5514_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5514_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rt5514_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.rt5514_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.rt5514_priv* %9, %struct.rt5514_priv** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %69 [
    i32 129, label %11
    i32 128, label %39
  ]

11:                                               ; preds = %2
  %12 = load %struct.rt5514_priv*, %struct.rt5514_priv** %6, align 8
  %13 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @IS_ERR(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %70

18:                                               ; preds = %11
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %20 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %19)
  %21 = load i32, i32* @SND_SOC_BIAS_ON, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.rt5514_priv*, %struct.rt5514_priv** %6, align 8
  %25 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clk_disable_unprepare(i32 %26)
  br label %38

28:                                               ; preds = %18
  %29 = load %struct.rt5514_priv*, %struct.rt5514_priv** %6, align 8
  %30 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clk_prepare_enable(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %71

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %23
  br label %70

39:                                               ; preds = %2
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %41 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %40)
  %42 = load i32, i32* @SND_SOC_BIAS_OFF, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %68

44:                                               ; preds = %39
  %45 = load %struct.rt5514_priv*, %struct.rt5514_priv** %6, align 8
  %46 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %44
  %50 = load %struct.rt5514_priv*, %struct.rt5514_priv** %6, align 8
  %51 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %50, i32 0, i32 2
  store i32 0, i32* %51, align 4
  %52 = load %struct.rt5514_priv*, %struct.rt5514_priv** %6, align 8
  %53 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @rt5514_i2c_patch, align 4
  %56 = load i32, i32* @rt5514_i2c_patch, align 4
  %57 = call i32 @ARRAY_SIZE(i32 %56)
  %58 = call i32 @regmap_multi_reg_write(i32 %54, i32 %55, i32 %57)
  %59 = load %struct.rt5514_priv*, %struct.rt5514_priv** %6, align 8
  %60 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @regcache_mark_dirty(i32 %61)
  %63 = load %struct.rt5514_priv*, %struct.rt5514_priv** %6, align 8
  %64 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @regcache_sync(i32 %65)
  br label %67

67:                                               ; preds = %49, %44
  br label %68

68:                                               ; preds = %67, %39
  br label %70

69:                                               ; preds = %2
  br label %70

70:                                               ; preds = %69, %68, %38, %17
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %35
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.rt5514_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regmap_multi_reg_write(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

declare dso_local i32 @regcache_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
