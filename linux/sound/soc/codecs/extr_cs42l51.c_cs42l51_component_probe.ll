; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l51.c_cs42l51_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l51.c_cs42l51_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.cs42l51_private = type { i64 }

@cs42l51_dapm_mclk_widgets = common dso_local global i32 0, align 4
@CS42L51_DAC_CTL_AMUTE = common dso_local global i32 0, align 4
@CS42L51_DAC_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @cs42l51_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs42l51_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca %struct.cs42l51_private*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.cs42l51_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.cs42l51_private* %9, %struct.cs42l51_private** %7, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %10)
  store %struct.snd_soc_dapm_context* %11, %struct.snd_soc_dapm_context** %6, align 8
  %12 = load %struct.cs42l51_private*, %struct.cs42l51_private** %7, align 8
  %13 = getelementptr inbounds %struct.cs42l51_private, %struct.cs42l51_private* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %18 = load i32, i32* @cs42l51_dapm_mclk_widgets, align 4
  %19 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %17, i32 %18, i32 1)
  br label %20

20:                                               ; preds = %16, %1
  %21 = call i32 @CS42L51_DAC_CTL_DATA_SEL(i32 1)
  %22 = load i32, i32* @CS42L51_DAC_CTL_AMUTE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @CS42L51_DAC_CTL_DACSZ(i32 0)
  %25 = or i32 %23, %24
  store i32 %25, i32* %5, align 4
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %27 = load i32, i32* @CS42L51_DAC_CTL, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %26, i32 %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %32
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.cs42l51_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @CS42L51_DAC_CTL_DATA_SEL(i32) #1

declare dso_local i32 @CS42L51_DAC_CTL_DACSZ(i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
