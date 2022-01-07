; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1977.c_adau1977_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1977.c_adau1977_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.adau1977 = type { i32 }

@adau1977_micbias_dapm_widgets = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @adau1977_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1977_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca %struct.adau1977*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %7)
  store %struct.snd_soc_dapm_context* %8, %struct.snd_soc_dapm_context** %4, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call %struct.adau1977* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.adau1977* %10, %struct.adau1977** %5, align 8
  %11 = load %struct.adau1977*, %struct.adau1977** %5, align 8
  %12 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %25 [
    i32 128, label %14
  ]

14:                                               ; preds = %1
  %15 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %16 = load i32, i32* @adau1977_micbias_dapm_widgets, align 4
  %17 = load i32, i32* @adau1977_micbias_dapm_widgets, align 4
  %18 = call i32 @ARRAY_SIZE(i32 %17)
  %19 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %15, i32 %16, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %27

24:                                               ; preds = %14
  br label %26

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %25, %24
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %22
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.adau1977* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
