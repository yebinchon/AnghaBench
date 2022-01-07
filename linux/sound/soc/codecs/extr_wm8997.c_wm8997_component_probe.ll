; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8997.c_wm8997_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8997.c_wm8997_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.wm8997_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.arizona* }
%struct.arizona = type { %struct.snd_soc_dapm_context*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"HAPTICS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8997_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8997_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca %struct.wm8997_priv*, align 8
  %6 = alloca %struct.arizona*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %8)
  store %struct.snd_soc_dapm_context* %9, %struct.snd_soc_dapm_context** %4, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = call %struct.wm8997_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.wm8997_priv* %11, %struct.wm8997_priv** %5, align 8
  %12 = load %struct.wm8997_priv*, %struct.wm8997_priv** %5, align 8
  %13 = getelementptr inbounds %struct.wm8997_priv, %struct.wm8997_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.arizona*, %struct.arizona** %14, align 8
  store %struct.arizona* %15, %struct.arizona** %6, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %17 = load %struct.arizona*, %struct.arizona** %6, align 8
  %18 = getelementptr inbounds %struct.arizona, %struct.arizona* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @snd_soc_component_init_regmap(%struct.snd_soc_component* %16, i32 %19)
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %22 = call i32 @arizona_init_spk(%struct.snd_soc_component* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %36

27:                                               ; preds = %1
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %29 = call i32 @snd_soc_component_disable_pin(%struct.snd_soc_component* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %31 = load %struct.wm8997_priv*, %struct.wm8997_priv** %5, align 8
  %32 = getelementptr inbounds %struct.wm8997_priv, %struct.wm8997_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.arizona*, %struct.arizona** %33, align 8
  %35 = getelementptr inbounds %struct.arizona, %struct.arizona* %34, i32 0, i32 0
  store %struct.snd_soc_dapm_context* %30, %struct.snd_soc_dapm_context** %35, align 8
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %27, %25
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.wm8997_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_init_regmap(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @arizona_init_spk(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_disable_pin(%struct.snd_soc_component*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
