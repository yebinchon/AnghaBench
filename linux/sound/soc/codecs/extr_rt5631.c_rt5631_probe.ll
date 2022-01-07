; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5631.c_rt5631_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5631.c_rt5631_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5631_priv = type { i32, i64 }

@RT5631_ADDA_MIXER_INTL_REG3 = common dso_local global i32 0, align 4
@RT5631_PWR_MANAG_ADD3 = common dso_local global i32 0, align 4
@RT5631_PWR_VREF = common dso_local global i32 0, align 4
@RT5631_PWR_MAIN_BIAS = common dso_local global i32 0, align 4
@RT5631_PWR_FAST_VREF_CTRL = common dso_local global i32 0, align 4
@RT5631_INT_ST_IRQ_CTRL_2 = common dso_local global i32 0, align 4
@RT5631_GPIO_CTRL = common dso_local global i32 0, align 4
@RT5631_GPIO_PIN_FUN_SEL_MASK = common dso_local global i32 0, align 4
@RT5631_GPIO_DMIC_FUN_SEL_MASK = common dso_local global i32 0, align 4
@RT5631_GPIO_PIN_FUN_SEL_GPIO_DIMC = common dso_local global i32 0, align 4
@RT5631_GPIO_DMIC_FUN_SEL_DIMC = common dso_local global i32 0, align 4
@RT5631_DIG_MIC_CTRL = common dso_local global i32 0, align 4
@RT5631_DMIC_L_CH_LATCH_MASK = common dso_local global i32 0, align 4
@RT5631_DMIC_R_CH_LATCH_MASK = common dso_local global i32 0, align 4
@RT5631_DMIC_L_CH_LATCH_FALLING = common dso_local global i32 0, align 4
@RT5631_DMIC_R_CH_LATCH_RISING = common dso_local global i32 0, align 4
@SND_SOC_BIAS_STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @rt5631_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5631_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.rt5631_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %6 = call %struct.rt5631_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %5)
  store %struct.rt5631_priv* %6, %struct.rt5631_priv** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %8 = load i32, i32* @RT5631_ADDA_MIXER_INTL_REG3, align 4
  %9 = call i32 @rt5631_read_index(%struct.snd_soc_component* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 2
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.rt5631_priv*, %struct.rt5631_priv** %3, align 8
  %15 = getelementptr inbounds %struct.rt5631_priv, %struct.rt5631_priv* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.rt5631_priv*, %struct.rt5631_priv** %3, align 8
  %18 = getelementptr inbounds %struct.rt5631_priv, %struct.rt5631_priv* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  br label %19

19:                                               ; preds = %16, %13
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %21 = call i32 @rt5631_reset(%struct.snd_soc_component* %20)
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %23 = load i32, i32* @RT5631_PWR_MANAG_ADD3, align 4
  %24 = load i32, i32* @RT5631_PWR_VREF, align 4
  %25 = load i32, i32* @RT5631_PWR_MAIN_BIAS, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @RT5631_PWR_VREF, align 4
  %28 = load i32, i32* @RT5631_PWR_MAIN_BIAS, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %22, i32 %23, i32 %26, i32 %29)
  %31 = call i32 @msleep(i32 80)
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %33 = load i32, i32* @RT5631_PWR_MANAG_ADD3, align 4
  %34 = load i32, i32* @RT5631_PWR_FAST_VREF_CTRL, align 4
  %35 = load i32, i32* @RT5631_PWR_FAST_VREF_CTRL, align 4
  %36 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %38 = load i32, i32* @RT5631_INT_ST_IRQ_CTRL_2, align 4
  %39 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %37, i32 %38, i32 3864)
  %40 = load %struct.rt5631_priv*, %struct.rt5631_priv** %3, align 8
  %41 = getelementptr inbounds %struct.rt5631_priv, %struct.rt5631_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %19
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %46 = load i32, i32* @RT5631_INT_ST_IRQ_CTRL_2, align 4
  %47 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %45, i32 %46, i32 8192, i32 8192)
  br label %52

48:                                               ; preds = %19
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %50 = load i32, i32* @RT5631_INT_ST_IRQ_CTRL_2, align 4
  %51 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %49, i32 %50, i32 8192, i32 0)
  br label %52

52:                                               ; preds = %48, %44
  %53 = load %struct.rt5631_priv*, %struct.rt5631_priv** %3, align 8
  %54 = getelementptr inbounds %struct.rt5631_priv, %struct.rt5631_priv* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %52
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %59 = load i32, i32* @RT5631_GPIO_CTRL, align 4
  %60 = load i32, i32* @RT5631_GPIO_PIN_FUN_SEL_MASK, align 4
  %61 = load i32, i32* @RT5631_GPIO_DMIC_FUN_SEL_MASK, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @RT5631_GPIO_PIN_FUN_SEL_GPIO_DIMC, align 4
  %64 = load i32, i32* @RT5631_GPIO_DMIC_FUN_SEL_DIMC, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %58, i32 %59, i32 %62, i32 %65)
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %68 = load i32, i32* @RT5631_DIG_MIC_CTRL, align 4
  %69 = load i32, i32* @RT5631_DMIC_L_CH_LATCH_MASK, align 4
  %70 = load i32, i32* @RT5631_DMIC_R_CH_LATCH_MASK, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @RT5631_DMIC_L_CH_LATCH_FALLING, align 4
  %73 = load i32, i32* @RT5631_DMIC_R_CH_LATCH_RISING, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %67, i32 %68, i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %57, %52
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %78 = load i32, i32* @SND_SOC_BIAS_STANDBY, align 4
  %79 = call i32 @snd_soc_component_init_bias_level(%struct.snd_soc_component* %77, i32 %78)
  ret i32 0
}

declare dso_local %struct.rt5631_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @rt5631_read_index(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @rt5631_reset(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_init_bias_level(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
