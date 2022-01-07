; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5668.c_rt5668_set_jack_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5668.c_rt5668_set_jack_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.rt5668_priv = type { %struct.snd_soc_jack*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RT5668_CBJ_CTRL_2 = common dso_local global i32 0, align 4
@RT5668_EXT_JD_SRC = common dso_local global i32 0, align 4
@RT5668_EXT_JD_SRC_MANUAL = common dso_local global i32 0, align 4
@RT5668_CBJ_CTRL_1 = common dso_local global i32 0, align 4
@RT5668_CBJ_CTRL_3 = common dso_local global i32 0, align 4
@RT5668_CBJ_IN_BUF_EN = common dso_local global i32 0, align 4
@RT5668_SAR_IL_CMD_1 = common dso_local global i32 0, align 4
@RT5668_SAR_POW_MASK = common dso_local global i32 0, align 4
@RT5668_SAR_POW_EN = common dso_local global i32 0, align 4
@RT5668_GPIO_CTRL_1 = common dso_local global i32 0, align 4
@RT5668_GP1_PIN_MASK = common dso_local global i32 0, align 4
@RT5668_GP1_PIN_IRQ = common dso_local global i32 0, align 4
@RT5668_RC_CLK_CTRL = common dso_local global i32 0, align 4
@RT5668_POW_IRQ = common dso_local global i32 0, align 4
@RT5668_POW_JDH = common dso_local global i32 0, align 4
@RT5668_POW_ANA = common dso_local global i32 0, align 4
@RT5668_PWR_ANLG_2 = common dso_local global i32 0, align 4
@RT5668_PWR_JDH = common dso_local global i32 0, align 4
@RT5668_PWR_JDL = common dso_local global i32 0, align 4
@RT5668_IRQ_CTRL_2 = common dso_local global i32 0, align 4
@RT5668_JD1_EN_MASK = common dso_local global i32 0, align 4
@RT5668_JD1_POL_MASK = common dso_local global i32 0, align 4
@RT5668_JD1_EN = common dso_local global i32 0, align 4
@RT5668_JD1_POL_NOR = common dso_local global i32 0, align 4
@system_power_efficient_wq = common dso_local global i32 0, align 4
@RT5668_JD1_DIS = common dso_local global i32 0, align 4
@RT5668_POW_JDL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Wrong JD source\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, %struct.snd_soc_jack*, i8*)* @rt5668_set_jack_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5668_set_jack_detect(%struct.snd_soc_component* %0, %struct.snd_soc_jack* %1, i8* %2) #0 {
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.snd_soc_jack*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rt5668_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store %struct.snd_soc_jack* %1, %struct.snd_soc_jack** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.rt5668_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.rt5668_priv* %9, %struct.rt5668_priv** %7, align 8
  %10 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %11 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %98 [
    i32 129, label %14
    i32 128, label %82
  ]

14:                                               ; preds = %3
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %16 = load i32, i32* @RT5668_CBJ_CTRL_2, align 4
  %17 = load i32, i32* @RT5668_EXT_JD_SRC, align 4
  %18 = load i32, i32* @RT5668_EXT_JD_SRC_MANUAL, align 4
  %19 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %21 = load i32, i32* @RT5668_CBJ_CTRL_1, align 4
  %22 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %20, i32 %21, i32 53250)
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %24 = load i32, i32* @RT5668_CBJ_CTRL_3, align 4
  %25 = load i32, i32* @RT5668_CBJ_IN_BUF_EN, align 4
  %26 = load i32, i32* @RT5668_CBJ_IN_BUF_EN, align 4
  %27 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %29 = load i32, i32* @RT5668_SAR_IL_CMD_1, align 4
  %30 = load i32, i32* @RT5668_SAR_POW_MASK, align 4
  %31 = load i32, i32* @RT5668_SAR_POW_EN, align 4
  %32 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %34 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @RT5668_GPIO_CTRL_1, align 4
  %37 = load i32, i32* @RT5668_GP1_PIN_MASK, align 4
  %38 = load i32, i32* @RT5668_GP1_PIN_IRQ, align 4
  %39 = call i32 @regmap_update_bits(i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %41 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @RT5668_RC_CLK_CTRL, align 4
  %44 = load i32, i32* @RT5668_POW_IRQ, align 4
  %45 = load i32, i32* @RT5668_POW_JDH, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @RT5668_POW_ANA, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @RT5668_POW_IRQ, align 4
  %50 = load i32, i32* @RT5668_POW_JDH, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @RT5668_POW_ANA, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @regmap_update_bits(i32 %42, i32 %43, i32 %48, i32 %53)
  %55 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %56 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @RT5668_PWR_ANLG_2, align 4
  %59 = load i32, i32* @RT5668_PWR_JDH, align 4
  %60 = load i32, i32* @RT5668_PWR_JDL, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @RT5668_PWR_JDH, align 4
  %63 = load i32, i32* @RT5668_PWR_JDL, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @regmap_update_bits(i32 %57, i32 %58, i32 %61, i32 %64)
  %66 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %67 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @RT5668_IRQ_CTRL_2, align 4
  %70 = load i32, i32* @RT5668_JD1_EN_MASK, align 4
  %71 = load i32, i32* @RT5668_JD1_POL_MASK, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @RT5668_JD1_EN, align 4
  %74 = load i32, i32* @RT5668_JD1_POL_NOR, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @regmap_update_bits(i32 %68, i32 %69, i32 %72, i32 %75)
  %77 = load i32, i32* @system_power_efficient_wq, align 4
  %78 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %79 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %78, i32 0, i32 2
  %80 = call i32 @msecs_to_jiffies(i32 250)
  %81 = call i32 @mod_delayed_work(i32 %77, i32* %79, i32 %80)
  br label %103

82:                                               ; preds = %3
  %83 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %84 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @RT5668_IRQ_CTRL_2, align 4
  %87 = load i32, i32* @RT5668_JD1_EN_MASK, align 4
  %88 = load i32, i32* @RT5668_JD1_DIS, align 4
  %89 = call i32 @regmap_update_bits(i32 %85, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %91 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @RT5668_RC_CLK_CTRL, align 4
  %94 = load i32, i32* @RT5668_POW_JDH, align 4
  %95 = load i32, i32* @RT5668_POW_JDL, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @regmap_update_bits(i32 %92, i32 %93, i32 %96, i32 0)
  br label %103

98:                                               ; preds = %3
  %99 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %100 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @dev_warn(i32 %101, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %103

103:                                              ; preds = %98, %82, %14
  %104 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %5, align 8
  %105 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %106 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %105, i32 0, i32 0
  store %struct.snd_soc_jack* %104, %struct.snd_soc_jack** %106, align 8
  ret i32 0
}

declare dso_local %struct.rt5668_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
