; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9713.c_wm9713_soc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9713.c_wm9713_soc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm9713_priv = type { %struct.regmap*, %struct.TYPE_2__* }
%struct.regmap = type { i32 }
%struct.TYPE_2__ = type { %struct.regmap*, %struct.regmap* }

@CONFIG_SND_SOC_AC97_BUS = common dso_local global i32 0, align 4
@WM9713_VENDOR_ID = common dso_local global i32 0, align 4
@WM9713_VENDOR_ID_MASK = common dso_local global i32 0, align 4
@wm9713_regmap_config = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@AC97_CD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm9713_soc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9713_soc_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.wm9713_priv*, align 8
  %5 = alloca %struct.regmap*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.wm9713_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.wm9713_priv* %7, %struct.wm9713_priv** %4, align 8
  store %struct.regmap* null, %struct.regmap** %5, align 8
  %8 = load %struct.wm9713_priv*, %struct.wm9713_priv** %4, align 8
  %9 = getelementptr inbounds %struct.wm9713_priv, %struct.wm9713_priv* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load %struct.wm9713_priv*, %struct.wm9713_priv** %4, align 8
  %14 = getelementptr inbounds %struct.wm9713_priv, %struct.wm9713_priv* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.regmap*, %struct.regmap** %16, align 8
  %18 = load %struct.wm9713_priv*, %struct.wm9713_priv** %4, align 8
  %19 = getelementptr inbounds %struct.wm9713_priv, %struct.wm9713_priv* %18, i32 0, i32 0
  store %struct.regmap* %17, %struct.regmap** %19, align 8
  %20 = load %struct.wm9713_priv*, %struct.wm9713_priv** %4, align 8
  %21 = getelementptr inbounds %struct.wm9713_priv, %struct.wm9713_priv* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.regmap*, %struct.regmap** %23, align 8
  store %struct.regmap* %24, %struct.regmap** %5, align 8
  br label %66

25:                                               ; preds = %1
  %26 = load i32, i32* @CONFIG_SND_SOC_AC97_BUS, align 4
  %27 = call i64 @IS_ENABLED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %25
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %31 = load i32, i32* @WM9713_VENDOR_ID, align 4
  %32 = load i32, i32* @WM9713_VENDOR_ID_MASK, align 4
  %33 = call %struct.regmap* @snd_soc_new_ac97_component(%struct.snd_soc_component* %30, i32 %31, i32 %32)
  %34 = load %struct.wm9713_priv*, %struct.wm9713_priv** %4, align 8
  %35 = getelementptr inbounds %struct.wm9713_priv, %struct.wm9713_priv* %34, i32 0, i32 0
  store %struct.regmap* %33, %struct.regmap** %35, align 8
  %36 = load %struct.wm9713_priv*, %struct.wm9713_priv** %4, align 8
  %37 = getelementptr inbounds %struct.wm9713_priv, %struct.wm9713_priv* %36, i32 0, i32 0
  %38 = load %struct.regmap*, %struct.regmap** %37, align 8
  %39 = call i64 @IS_ERR(%struct.regmap* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %29
  %42 = load %struct.wm9713_priv*, %struct.wm9713_priv** %4, align 8
  %43 = getelementptr inbounds %struct.wm9713_priv, %struct.wm9713_priv* %42, i32 0, i32 0
  %44 = load %struct.regmap*, %struct.regmap** %43, align 8
  %45 = call i32 @PTR_ERR(%struct.regmap* %44)
  store i32 %45, i32* %2, align 4
  br label %73

46:                                               ; preds = %29
  %47 = load %struct.wm9713_priv*, %struct.wm9713_priv** %4, align 8
  %48 = getelementptr inbounds %struct.wm9713_priv, %struct.wm9713_priv* %47, i32 0, i32 0
  %49 = load %struct.regmap*, %struct.regmap** %48, align 8
  %50 = call %struct.regmap* @regmap_init_ac97(%struct.regmap* %49, i32* @wm9713_regmap_config)
  store %struct.regmap* %50, %struct.regmap** %5, align 8
  %51 = load %struct.regmap*, %struct.regmap** %5, align 8
  %52 = call i64 @IS_ERR(%struct.regmap* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load %struct.wm9713_priv*, %struct.wm9713_priv** %4, align 8
  %56 = getelementptr inbounds %struct.wm9713_priv, %struct.wm9713_priv* %55, i32 0, i32 0
  %57 = load %struct.regmap*, %struct.regmap** %56, align 8
  %58 = call i32 @snd_soc_free_ac97_component(%struct.regmap* %57)
  %59 = load %struct.regmap*, %struct.regmap** %5, align 8
  %60 = call i32 @PTR_ERR(%struct.regmap* %59)
  store i32 %60, i32* %2, align 4
  br label %73

61:                                               ; preds = %46
  br label %65

62:                                               ; preds = %25
  %63 = load i32, i32* @ENXIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %73

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %65, %12
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %68 = load %struct.regmap*, %struct.regmap** %5, align 8
  %69 = call i32 @snd_soc_component_init_regmap(%struct.snd_soc_component* %67, %struct.regmap* %68)
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %71 = load i32, i32* @AC97_CD, align 4
  %72 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %70, i32 %71, i32 32767, i32 0)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %66, %62, %54, %41
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.wm9713_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local %struct.regmap* @snd_soc_new_ac97_component(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.regmap* @regmap_init_ac97(%struct.regmap*, i32*) #1

declare dso_local i32 @snd_soc_free_ac97_component(%struct.regmap*) #1

declare dso_local i32 @snd_soc_component_init_regmap(%struct.snd_soc_component*, %struct.regmap*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
