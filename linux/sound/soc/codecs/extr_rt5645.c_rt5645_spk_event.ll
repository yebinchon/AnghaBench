; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_spk_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_spk_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@RT5645_PWR_DIG1 = common dso_local global i32 0, align 4
@RT5645_PWR_CLS_D = common dso_local global i32 0, align 4
@RT5645_PWR_CLS_D_R = common dso_local global i32 0, align 4
@RT5645_PWR_CLS_D_L = common dso_local global i32 0, align 4
@RT5645_GEN_CTRL3 = common dso_local global i32 0, align 4
@RT5645_DET_CLK_MASK = common dso_local global i32 0, align 4
@RT5645_DET_CLK_MODE1 = common dso_local global i32 0, align 4
@RT5645_DET_CLK_DIS = common dso_local global i32 0, align 4
@RT5645_EQ_CTRL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @rt5645_spk_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5645_spk_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %8, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %52 [
    i32 129, label %14
    i32 128, label %35
  ]

14:                                               ; preds = %3
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = call i32 @rt5645_enable_hweq(%struct.snd_soc_component* %15)
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %18 = load i32, i32* @RT5645_PWR_DIG1, align 4
  %19 = load i32, i32* @RT5645_PWR_CLS_D, align 4
  %20 = load i32, i32* @RT5645_PWR_CLS_D_R, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @RT5645_PWR_CLS_D_L, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @RT5645_PWR_CLS_D, align 4
  %25 = load i32, i32* @RT5645_PWR_CLS_D_R, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @RT5645_PWR_CLS_D_L, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %17, i32 %18, i32 %23, i32 %28)
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %31 = load i32, i32* @RT5645_GEN_CTRL3, align 4
  %32 = load i32, i32* @RT5645_DET_CLK_MASK, align 4
  %33 = load i32, i32* @RT5645_DET_CLK_MODE1, align 4
  %34 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %30, i32 %31, i32 %32, i32 %33)
  br label %53

35:                                               ; preds = %3
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %37 = load i32, i32* @RT5645_GEN_CTRL3, align 4
  %38 = load i32, i32* @RT5645_DET_CLK_MASK, align 4
  %39 = load i32, i32* @RT5645_DET_CLK_DIS, align 4
  %40 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %36, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %42 = load i32, i32* @RT5645_EQ_CTRL2, align 4
  %43 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %41, i32 %42, i32 0)
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %45 = load i32, i32* @RT5645_PWR_DIG1, align 4
  %46 = load i32, i32* @RT5645_PWR_CLS_D, align 4
  %47 = load i32, i32* @RT5645_PWR_CLS_D_R, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @RT5645_PWR_CLS_D_L, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %44, i32 %45, i32 %50, i32 0)
  br label %53

52:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %54

53:                                               ; preds = %35, %14
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %52
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @rt5645_enable_hweq(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
