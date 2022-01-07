; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_rt5665_set_verf.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_rt5665_set_verf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@RT5665_PWR_ANLG_1 = common dso_local global i32 0, align 4
@RT5665_PWR_FV1 = common dso_local global i32 0, align 4
@RT5665_PWR_FV2 = common dso_local global i32 0, align 4
@RT5665_PWR_FV3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @rt5665_set_verf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5665_set_verf(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %8, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %60 [
    i32 128, label %14
    i32 129, label %35
  ]

14:                                               ; preds = %3
  %15 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %33 [
    i32 132, label %18
    i32 131, label %23
    i32 130, label %28
  ]

18:                                               ; preds = %14
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %20 = load i32, i32* @RT5665_PWR_ANLG_1, align 4
  %21 = load i32, i32* @RT5665_PWR_FV1, align 4
  %22 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %19, i32 %20, i32 %21, i32 0)
  br label %34

23:                                               ; preds = %14
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %25 = load i32, i32* @RT5665_PWR_ANLG_1, align 4
  %26 = load i32, i32* @RT5665_PWR_FV2, align 4
  %27 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %24, i32 %25, i32 %26, i32 0)
  br label %34

28:                                               ; preds = %14
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %30 = load i32, i32* @RT5665_PWR_ANLG_1, align 4
  %31 = load i32, i32* @RT5665_PWR_FV3, align 4
  %32 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %29, i32 %30, i32 %31, i32 0)
  br label %34

33:                                               ; preds = %14
  br label %34

34:                                               ; preds = %33, %28, %23, %18
  br label %61

35:                                               ; preds = %3
  %36 = call i32 @usleep_range(i32 15000, i32 20000)
  %37 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %38 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %58 [
    i32 132, label %40
    i32 131, label %46
    i32 130, label %52
  ]

40:                                               ; preds = %35
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %42 = load i32, i32* @RT5665_PWR_ANLG_1, align 4
  %43 = load i32, i32* @RT5665_PWR_FV1, align 4
  %44 = load i32, i32* @RT5665_PWR_FV1, align 4
  %45 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %41, i32 %42, i32 %43, i32 %44)
  br label %59

46:                                               ; preds = %35
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %48 = load i32, i32* @RT5665_PWR_ANLG_1, align 4
  %49 = load i32, i32* @RT5665_PWR_FV2, align 4
  %50 = load i32, i32* @RT5665_PWR_FV2, align 4
  %51 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %47, i32 %48, i32 %49, i32 %50)
  br label %59

52:                                               ; preds = %35
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %54 = load i32, i32* @RT5665_PWR_ANLG_1, align 4
  %55 = load i32, i32* @RT5665_PWR_FV3, align 4
  %56 = load i32, i32* @RT5665_PWR_FV3, align 4
  %57 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %53, i32 %54, i32 %55, i32 %56)
  br label %59

58:                                               ; preds = %35
  br label %59

59:                                               ; preds = %58, %52, %46, %40
  br label %61

60:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

61:                                               ; preds = %59, %34
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %60
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
