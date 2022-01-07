; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5660.c_rt5660_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5660.c_rt5660_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5660_priv = type { i32 }

@RT5660_GEN_CTRL1 = common dso_local global i32 0, align 4
@RT5660_DIG_GATE_CTRL = common dso_local global i32 0, align 4
@RT5660_PWR_ANLG1 = common dso_local global i32 0, align 4
@RT5660_PWR_VREF1 = common dso_local global i32 0, align 4
@RT5660_PWR_MB = common dso_local global i32 0, align 4
@RT5660_PWR_BG = common dso_local global i32 0, align 4
@RT5660_PWR_VREF2 = common dso_local global i32 0, align 4
@RT5660_PWR_FV1 = common dso_local global i32 0, align 4
@RT5660_PWR_FV2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @rt5660_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5660_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rt5660_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.rt5660_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.rt5660_priv* %9, %struct.rt5660_priv** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %82 [
    i32 130, label %11
    i32 129, label %12
    i32 128, label %44
    i32 131, label %77
  ]

11:                                               ; preds = %2
  br label %83

12:                                               ; preds = %2
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %14 = load i32, i32* @RT5660_GEN_CTRL1, align 4
  %15 = load i32, i32* @RT5660_DIG_GATE_CTRL, align 4
  %16 = load i32, i32* @RT5660_DIG_GATE_CTRL, align 4
  %17 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.rt5660_priv*, %struct.rt5660_priv** %6, align 8
  %19 = getelementptr inbounds %struct.rt5660_priv, %struct.rt5660_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @IS_ERR(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %83

24:                                               ; preds = %12
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %26 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %25)
  %27 = icmp eq i32 %26, 130
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.rt5660_priv*, %struct.rt5660_priv** %6, align 8
  %30 = getelementptr inbounds %struct.rt5660_priv, %struct.rt5660_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clk_disable_unprepare(i32 %31)
  br label %43

33:                                               ; preds = %24
  %34 = load %struct.rt5660_priv*, %struct.rt5660_priv** %6, align 8
  %35 = getelementptr inbounds %struct.rt5660_priv, %struct.rt5660_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @clk_prepare_enable(i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %84

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %28
  br label %83

44:                                               ; preds = %2
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %46 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %45)
  %47 = icmp eq i32 %46, 131
  br i1 %47, label %48, label %76

48:                                               ; preds = %44
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %50 = load i32, i32* @RT5660_PWR_ANLG1, align 4
  %51 = load i32, i32* @RT5660_PWR_VREF1, align 4
  %52 = load i32, i32* @RT5660_PWR_MB, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @RT5660_PWR_BG, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @RT5660_PWR_VREF2, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @RT5660_PWR_VREF1, align 4
  %59 = load i32, i32* @RT5660_PWR_MB, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @RT5660_PWR_BG, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @RT5660_PWR_VREF2, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %49, i32 %50, i32 %57, i32 %64)
  %66 = call i32 @usleep_range(i32 10000, i32 15000)
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %68 = load i32, i32* @RT5660_PWR_ANLG1, align 4
  %69 = load i32, i32* @RT5660_PWR_FV1, align 4
  %70 = load i32, i32* @RT5660_PWR_FV2, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @RT5660_PWR_FV1, align 4
  %73 = load i32, i32* @RT5660_PWR_FV2, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %67, i32 %68, i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %48, %44
  br label %83

77:                                               ; preds = %2
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %79 = load i32, i32* @RT5660_GEN_CTRL1, align 4
  %80 = load i32, i32* @RT5660_DIG_GATE_CTRL, align 4
  %81 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %78, i32 %79, i32 %80, i32 0)
  br label %83

82:                                               ; preds = %2
  br label %83

83:                                               ; preds = %82, %77, %76, %43, %23, %11
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %40
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.rt5660_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
