; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2200.c_wm2200_dai_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2200.c_wm2200_dai_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm2200_priv = type { i32 }

@WM2200_GPIO_CTRL_1 = common dso_local global i32 0, align 4
@WM2200_GP1_FN_MASK = common dso_local global i32 0, align 4
@WM2200_AIF1TX_LRCLK_SRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to read GPIO 1 config: %d\0A\00", align 1
@WM2200_AUDIO_IF_1_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @wm2200_dai_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm2200_dai_probe(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca %struct.snd_soc_dai*, align 8
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.wm2200_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %2, align 8
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %7, i32 0, i32 0
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  store %struct.snd_soc_component* %9, %struct.snd_soc_component** %3, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = call %struct.wm2200_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.wm2200_priv* %11, %struct.wm2200_priv** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = load i32, i32* @WM2200_GPIO_CTRL_1, align 4
  %14 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @WM2200_GP1_FN_MASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.wm2200_priv*, %struct.wm2200_priv** %4, align 8
  %24 = getelementptr inbounds %struct.wm2200_priv, %struct.wm2200_priv* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* @WM2200_AIF1TX_LRCLK_SRC, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %17
  br label %33

27:                                               ; preds = %1
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %29 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %27, %26
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %35 = load i32, i32* @WM2200_AUDIO_IF_1_2, align 4
  %36 = load i32, i32* @WM2200_AIF1TX_LRCLK_SRC, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %34, i32 %35, i32 %36, i32 %37)
  ret i32 0
}

declare dso_local %struct.wm2200_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
