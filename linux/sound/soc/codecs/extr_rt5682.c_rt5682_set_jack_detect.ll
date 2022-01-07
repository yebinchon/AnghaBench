; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5682.c_rt5682_set_jack_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5682.c_rt5682_set_jack_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.rt5682_priv = type { i32, i32, %struct.TYPE_2__, %struct.snd_soc_jack* }
%struct.TYPE_2__ = type { i32 }

@RT5682_IRQ_CTRL_2 = common dso_local global i32 0, align 4
@RT5682_JD1_EN_MASK = common dso_local global i32 0, align 4
@RT5682_JD1_DIS = common dso_local global i32 0, align 4
@RT5682_RC_CLK_CTRL = common dso_local global i32 0, align 4
@RT5682_POW_JDH = common dso_local global i32 0, align 4
@RT5682_POW_JDL = common dso_local global i32 0, align 4
@RT5682_CBJ_CTRL_2 = common dso_local global i32 0, align 4
@RT5682_EXT_JD_SRC = common dso_local global i32 0, align 4
@RT5682_EXT_JD_SRC_MANUAL = common dso_local global i32 0, align 4
@RT5682_CBJ_CTRL_1 = common dso_local global i32 0, align 4
@RT5682_CBJ_CTRL_3 = common dso_local global i32 0, align 4
@RT5682_CBJ_IN_BUF_EN = common dso_local global i32 0, align 4
@RT5682_SAR_IL_CMD_1 = common dso_local global i32 0, align 4
@RT5682_SAR_POW_MASK = common dso_local global i32 0, align 4
@RT5682_SAR_POW_EN = common dso_local global i32 0, align 4
@RT5682_GPIO_CTRL_1 = common dso_local global i32 0, align 4
@RT5682_GP1_PIN_MASK = common dso_local global i32 0, align 4
@RT5682_GP1_PIN_IRQ = common dso_local global i32 0, align 4
@RT5682_POW_IRQ = common dso_local global i32 0, align 4
@RT5682_POW_ANA = common dso_local global i32 0, align 4
@RT5682_PWR_ANLG_2 = common dso_local global i32 0, align 4
@RT5682_PWR_JDH = common dso_local global i32 0, align 4
@RT5682_PWR_JDL = common dso_local global i32 0, align 4
@RT5682_JD1_POL_MASK = common dso_local global i32 0, align 4
@RT5682_JD1_EN = common dso_local global i32 0, align 4
@RT5682_JD1_POL_NOR = common dso_local global i32 0, align 4
@system_power_efficient_wq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Wrong JD source\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, %struct.snd_soc_jack*, i8*)* @rt5682_set_jack_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5682_set_jack_detect(%struct.snd_soc_component* %0, %struct.snd_soc_jack* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.snd_soc_jack*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rt5682_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store %struct.snd_soc_jack* %1, %struct.snd_soc_jack** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %10 = call %struct.rt5682_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.rt5682_priv* %10, %struct.rt5682_priv** %8, align 8
  %11 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %6, align 8
  %12 = load %struct.rt5682_priv*, %struct.rt5682_priv** %8, align 8
  %13 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %12, i32 0, i32 3
  store %struct.snd_soc_jack* %11, %struct.snd_soc_jack** %13, align 8
  %14 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %6, align 8
  %15 = icmp ne %struct.snd_soc_jack* %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %3
  %17 = load %struct.rt5682_priv*, %struct.rt5682_priv** %8, align 8
  %18 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RT5682_IRQ_CTRL_2, align 4
  %21 = load i32, i32* @RT5682_JD1_EN_MASK, align 4
  %22 = load i32, i32* @RT5682_JD1_DIS, align 4
  %23 = call i32 @regmap_update_bits(i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.rt5682_priv*, %struct.rt5682_priv** %8, align 8
  %25 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @RT5682_RC_CLK_CTRL, align 4
  %28 = load i32, i32* @RT5682_POW_JDH, align 4
  %29 = load i32, i32* @RT5682_POW_JDL, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @regmap_update_bits(i32 %26, i32 %27, i32 %30, i32 0)
  store i32 0, i32* %4, align 4
  br label %127

32:                                               ; preds = %3
  %33 = load %struct.rt5682_priv*, %struct.rt5682_priv** %8, align 8
  %34 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %121 [
    i32 129, label %37
    i32 128, label %105
  ]

37:                                               ; preds = %32
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %39 = load i32, i32* @RT5682_CBJ_CTRL_2, align 4
  %40 = load i32, i32* @RT5682_EXT_JD_SRC, align 4
  %41 = load i32, i32* @RT5682_EXT_JD_SRC_MANUAL, align 4
  %42 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %44 = load i32, i32* @RT5682_CBJ_CTRL_1, align 4
  %45 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %43, i32 %44, i32 53314)
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %47 = load i32, i32* @RT5682_CBJ_CTRL_3, align 4
  %48 = load i32, i32* @RT5682_CBJ_IN_BUF_EN, align 4
  %49 = load i32, i32* @RT5682_CBJ_IN_BUF_EN, align 4
  %50 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %52 = load i32, i32* @RT5682_SAR_IL_CMD_1, align 4
  %53 = load i32, i32* @RT5682_SAR_POW_MASK, align 4
  %54 = load i32, i32* @RT5682_SAR_POW_EN, align 4
  %55 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.rt5682_priv*, %struct.rt5682_priv** %8, align 8
  %57 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @RT5682_GPIO_CTRL_1, align 4
  %60 = load i32, i32* @RT5682_GP1_PIN_MASK, align 4
  %61 = load i32, i32* @RT5682_GP1_PIN_IRQ, align 4
  %62 = call i32 @regmap_update_bits(i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.rt5682_priv*, %struct.rt5682_priv** %8, align 8
  %64 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @RT5682_RC_CLK_CTRL, align 4
  %67 = load i32, i32* @RT5682_POW_IRQ, align 4
  %68 = load i32, i32* @RT5682_POW_JDH, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @RT5682_POW_ANA, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @RT5682_POW_IRQ, align 4
  %73 = load i32, i32* @RT5682_POW_JDH, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @RT5682_POW_ANA, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @regmap_update_bits(i32 %65, i32 %66, i32 %71, i32 %76)
  %78 = load %struct.rt5682_priv*, %struct.rt5682_priv** %8, align 8
  %79 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @RT5682_PWR_ANLG_2, align 4
  %82 = load i32, i32* @RT5682_PWR_JDH, align 4
  %83 = load i32, i32* @RT5682_PWR_JDL, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @RT5682_PWR_JDH, align 4
  %86 = load i32, i32* @RT5682_PWR_JDL, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @regmap_update_bits(i32 %80, i32 %81, i32 %84, i32 %87)
  %89 = load %struct.rt5682_priv*, %struct.rt5682_priv** %8, align 8
  %90 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @RT5682_IRQ_CTRL_2, align 4
  %93 = load i32, i32* @RT5682_JD1_EN_MASK, align 4
  %94 = load i32, i32* @RT5682_JD1_POL_MASK, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @RT5682_JD1_EN, align 4
  %97 = load i32, i32* @RT5682_JD1_POL_NOR, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @regmap_update_bits(i32 %91, i32 %92, i32 %95, i32 %98)
  %100 = load i32, i32* @system_power_efficient_wq, align 4
  %101 = load %struct.rt5682_priv*, %struct.rt5682_priv** %8, align 8
  %102 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %101, i32 0, i32 1
  %103 = call i32 @msecs_to_jiffies(i32 250)
  %104 = call i32 @mod_delayed_work(i32 %100, i32* %102, i32 %103)
  br label %126

105:                                              ; preds = %32
  %106 = load %struct.rt5682_priv*, %struct.rt5682_priv** %8, align 8
  %107 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @RT5682_IRQ_CTRL_2, align 4
  %110 = load i32, i32* @RT5682_JD1_EN_MASK, align 4
  %111 = load i32, i32* @RT5682_JD1_DIS, align 4
  %112 = call i32 @regmap_update_bits(i32 %108, i32 %109, i32 %110, i32 %111)
  %113 = load %struct.rt5682_priv*, %struct.rt5682_priv** %8, align 8
  %114 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @RT5682_RC_CLK_CTRL, align 4
  %117 = load i32, i32* @RT5682_POW_JDH, align 4
  %118 = load i32, i32* @RT5682_POW_JDL, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @regmap_update_bits(i32 %115, i32 %116, i32 %119, i32 0)
  br label %126

121:                                              ; preds = %32
  %122 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %123 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @dev_warn(i32 %124, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %126

126:                                              ; preds = %121, %105, %37
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %16
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local %struct.rt5682_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
