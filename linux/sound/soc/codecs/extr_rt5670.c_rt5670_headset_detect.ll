; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5670.c_rt5670_headset_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5670.c_rt5670_headset_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.rt5670_priv = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Mic Det Power\00", align 1
@RT5670_GEN_CTRL3 = common dso_local global i32 0, align 4
@RT5670_CJ_CTRL2 = common dso_local global i32 0, align 4
@RT5670_CBJ_DET_MODE = common dso_local global i32 0, align 4
@RT5670_CBJ_MN_JD = common dso_local global i32 0, align 4
@RT5670_GPIO_CTRL2 = common dso_local global i32 0, align 4
@RT5670_GPIO_CTRL1 = common dso_local global i32 0, align 4
@RT5670_GP1_PIN_MASK = common dso_local global i32 0, align 4
@RT5670_GP1_PIN_IRQ = common dso_local global i32 0, align 4
@RT5670_CJ_CTRL1 = common dso_local global i32 0, align 4
@RT5670_CBJ_BST1_EN = common dso_local global i32 0, align 4
@RT5670_JD_CTRL3 = common dso_local global i32 0, align 4
@RT5670_CJ_CTRL3 = common dso_local global i32 0, align 4
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@RT5670_INT_IRQ_ST = common dso_local global i32 0, align 4
@RT5670_IL_CMD = common dso_local global i32 0, align 4
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @rt5670_headset_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5670_headset_detect(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca %struct.rt5670_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %8)
  store %struct.snd_soc_dapm_context* %9, %struct.snd_soc_dapm_context** %6, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = call %struct.rt5670_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.rt5670_priv* %11, %struct.rt5670_priv** %7, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %89

14:                                               ; preds = %2
  %15 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %16 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %18 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %17)
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %20 = load i32, i32* @RT5670_GEN_CTRL3, align 4
  %21 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %19, i32 %20, i32 4, i32 0)
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %23 = load i32, i32* @RT5670_CJ_CTRL2, align 4
  %24 = load i32, i32* @RT5670_CBJ_DET_MODE, align 4
  %25 = load i32, i32* @RT5670_CBJ_MN_JD, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @RT5670_CBJ_MN_JD, align 4
  %28 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %22, i32 %23, i32 %26, i32 %27)
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %30 = load i32, i32* @RT5670_GPIO_CTRL2, align 4
  %31 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %29, i32 %30, i32 4)
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %33 = load i32, i32* @RT5670_GPIO_CTRL1, align 4
  %34 = load i32, i32* @RT5670_GP1_PIN_MASK, align 4
  %35 = load i32, i32* @RT5670_GP1_PIN_IRQ, align 4
  %36 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %38 = load i32, i32* @RT5670_CJ_CTRL1, align 4
  %39 = load i32, i32* @RT5670_CBJ_BST1_EN, align 4
  %40 = load i32, i32* @RT5670_CBJ_BST1_EN, align 4
  %41 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %43 = load i32, i32* @RT5670_JD_CTRL3, align 4
  %44 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %42, i32 %43, i32 240)
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %46 = load i32, i32* @RT5670_CJ_CTRL2, align 4
  %47 = load i32, i32* @RT5670_CBJ_MN_JD, align 4
  %48 = load i32, i32* @RT5670_CBJ_MN_JD, align 4
  %49 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %51 = load i32, i32* @RT5670_CJ_CTRL2, align 4
  %52 = load i32, i32* @RT5670_CBJ_MN_JD, align 4
  %53 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %50, i32 %51, i32 %52, i32 0)
  %54 = call i32 @msleep(i32 300)
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %56 = load i32, i32* @RT5670_CJ_CTRL3, align 4
  %57 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %55, i32 %56)
  %58 = and i32 %57, 7
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %64, label %61

61:                                               ; preds = %14
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %77

64:                                               ; preds = %61, %14
  %65 = load i32, i32* @SND_JACK_HEADSET, align 4
  %66 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %67 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %69 = load i32, i32* @RT5670_INT_IRQ_ST, align 4
  %70 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %68, i32 %69, i32 8, i32 8)
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %72 = load i32, i32* @RT5670_IL_CMD, align 4
  %73 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %71, i32 %72, i32 64, i32 64)
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %75 = load i32, i32* @RT5670_IL_CMD, align 4
  %76 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %74, i32 %75)
  br label %88

77:                                               ; preds = %61
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %79 = load i32, i32* @RT5670_GEN_CTRL3, align 4
  %80 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %78, i32 %79, i32 4, i32 4)
  %81 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %82 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %83 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %85 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %84, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %86 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %87 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %86)
  br label %88

88:                                               ; preds = %77, %64
  br label %102

89:                                               ; preds = %2
  %90 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %91 = load i32, i32* @RT5670_INT_IRQ_ST, align 4
  %92 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %90, i32 %91, i32 8, i32 0)
  %93 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %94 = load i32, i32* @RT5670_GEN_CTRL3, align 4
  %95 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %93, i32 %94, i32 4, i32 4)
  %96 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %97 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %96, i32 0, i32 0
  store i32 0, i32* %97, align 4
  %98 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %99 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %100 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %101 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %100)
  br label %102

102:                                              ; preds = %89, %88
  %103 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %104 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  ret i32 %105
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.rt5670_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
