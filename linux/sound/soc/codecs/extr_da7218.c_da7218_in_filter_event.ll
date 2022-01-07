; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_in_filter_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_in_filter_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.da7218_priv = type { i32, i32 }

@DA7218_LVL_DET_EN_CHAN1L_SHIFT = common dso_local global i32 0, align 4
@DA7218_LVL_DET_EN_CHAN1R_SHIFT = common dso_local global i32 0, align 4
@DA7218_LVL_DET_EN_CHAN2L_SHIFT = common dso_local global i32 0, align 4
@DA7218_LVL_DET_EN_CHAN2R_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DA7218_MIC_LVL_DET_DELAY = common dso_local global i32 0, align 4
@DA7218_LVL_DET_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @da7218_in_filter_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7218_in_filter_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.da7218_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %13)
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %8, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = call %struct.da7218_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.da7218_priv* %16, %struct.da7218_priv** %9, align 8
  %17 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %32 [
    i32 133, label %20
    i32 132, label %23
    i32 131, label %26
    i32 130, label %29
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* @DA7218_LVL_DET_EN_CHAN1L_SHIFT, align 4
  %22 = shl i32 1, %21
  store i32 %22, i32* %10, align 4
  br label %35

23:                                               ; preds = %3
  %24 = load i32, i32* @DA7218_LVL_DET_EN_CHAN1R_SHIFT, align 4
  %25 = shl i32 1, %24
  store i32 %25, i32* %10, align 4
  br label %35

26:                                               ; preds = %3
  %27 = load i32, i32* @DA7218_LVL_DET_EN_CHAN2L_SHIFT, align 4
  %28 = shl i32 1, %27
  store i32 %28, i32* %10, align 4
  br label %35

29:                                               ; preds = %3
  %30 = load i32, i32* @DA7218_LVL_DET_EN_CHAN2R_SHIFT, align 4
  %31 = shl i32 1, %30
  store i32 %31, i32* %10, align 4
  br label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %74

35:                                               ; preds = %29, %26, %23, %20
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %60 [
    i32 129, label %37
    i32 128, label %53
  ]

37:                                               ; preds = %35
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.da7218_priv*, %struct.da7218_priv** %9, align 8
  %40 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.da7218_priv*, %struct.da7218_priv** %9, align 8
  %45 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load i32, i32* @DA7218_MIC_LVL_DET_DELAY, align 4
  %51 = call i32 @msleep(i32 %50)
  br label %52

52:                                               ; preds = %49, %37
  br label %63

53:                                               ; preds = %35
  %54 = load i32, i32* %10, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.da7218_priv*, %struct.da7218_priv** %9, align 8
  %57 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %63

60:                                               ; preds = %35
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %74

63:                                               ; preds = %53, %52
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %65 = load i32, i32* @DA7218_LVL_DET_CTRL, align 4
  %66 = load %struct.da7218_priv*, %struct.da7218_priv** %9, align 8
  %67 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.da7218_priv*, %struct.da7218_priv** %9, align 8
  %70 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %68, %71
  %73 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %64, i32 %65, i32 %72)
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %63, %60, %32
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.da7218_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
