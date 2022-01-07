; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_rt5665_set_jack_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_rt5665_set_jack_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.rt5665_priv = type { %struct.snd_soc_jack*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RT5665_GPIO_CTRL_1 = common dso_local global i32 0, align 4
@RT5665_GP1_PIN_MASK = common dso_local global i32 0, align 4
@RT5665_GP1_PIN_IRQ = common dso_local global i32 0, align 4
@RT5665_RC_CLK_CTRL = common dso_local global i32 0, align 4
@RT5665_PWR_ANLG_2 = common dso_local global i32 0, align 4
@RT5665_PWR_JD1 = common dso_local global i32 0, align 4
@RT5665_IRQ_CTRL_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Wrong JD source\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, %struct.snd_soc_jack*, i8*)* @rt5665_set_jack_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5665_set_jack_detect(%struct.snd_soc_component* %0, %struct.snd_soc_jack* %1, i8* %2) #0 {
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.snd_soc_jack*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rt5665_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store %struct.snd_soc_jack* %1, %struct.snd_soc_jack** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.rt5665_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.rt5665_priv* %9, %struct.rt5665_priv** %7, align 8
  %10 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %11 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %40 [
    i32 129, label %14
    i32 128, label %39
  ]

14:                                               ; preds = %3
  %15 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %16 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @RT5665_GPIO_CTRL_1, align 4
  %19 = load i32, i32* @RT5665_GP1_PIN_MASK, align 4
  %20 = load i32, i32* @RT5665_GP1_PIN_IRQ, align 4
  %21 = call i32 @regmap_update_bits(i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %23 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @RT5665_RC_CLK_CTRL, align 4
  %26 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 49152, i32 49152)
  %27 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %28 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @RT5665_PWR_ANLG_2, align 4
  %31 = load i32, i32* @RT5665_PWR_JD1, align 4
  %32 = load i32, i32* @RT5665_PWR_JD1, align 4
  %33 = call i32 @regmap_update_bits(i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %35 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @RT5665_IRQ_CTRL_1, align 4
  %38 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 8, i32 8)
  br label %45

39:                                               ; preds = %3
  br label %45

40:                                               ; preds = %3
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %42 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_warn(i32 %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %39, %14
  %46 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %5, align 8
  %47 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %48 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %47, i32 0, i32 0
  store %struct.snd_soc_jack* %46, %struct.snd_soc_jack** %48, align 8
  ret i32 0
}

declare dso_local %struct.rt5665_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
