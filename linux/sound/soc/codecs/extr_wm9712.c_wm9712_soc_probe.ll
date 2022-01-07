; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9712.c_wm9712_soc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9712.c_wm9712_soc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm9712_priv = type { %struct.regmap*, %struct.TYPE_2__* }
%struct.regmap = type { i32 }
%struct.TYPE_2__ = type { %struct.regmap*, %struct.regmap* }

@CONFIG_SND_SOC_AC97_BUS = common dso_local global i32 0, align 4
@WM9712_VENDOR_ID = common dso_local global i32 0, align 4
@WM9712_VENDOR_ID_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to register AC97 codec: %d\0A\00", align 1
@wm9712_regmap_config = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@AC97_VIDEO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm9712_soc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9712_soc_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.wm9712_priv*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.wm9712_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.wm9712_priv* %8, %struct.wm9712_priv** %4, align 8
  %9 = load %struct.wm9712_priv*, %struct.wm9712_priv** %4, align 8
  %10 = getelementptr inbounds %struct.wm9712_priv, %struct.wm9712_priv* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.wm9712_priv*, %struct.wm9712_priv** %4, align 8
  %15 = getelementptr inbounds %struct.wm9712_priv, %struct.wm9712_priv* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.regmap*, %struct.regmap** %17, align 8
  %19 = load %struct.wm9712_priv*, %struct.wm9712_priv** %4, align 8
  %20 = getelementptr inbounds %struct.wm9712_priv, %struct.wm9712_priv* %19, i32 0, i32 0
  store %struct.regmap* %18, %struct.regmap** %20, align 8
  %21 = load %struct.wm9712_priv*, %struct.wm9712_priv** %4, align 8
  %22 = getelementptr inbounds %struct.wm9712_priv, %struct.wm9712_priv* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.regmap*, %struct.regmap** %24, align 8
  store %struct.regmap* %25, %struct.regmap** %5, align 8
  br label %73

26:                                               ; preds = %1
  %27 = load i32, i32* @CONFIG_SND_SOC_AC97_BUS, align 4
  %28 = call i64 @IS_ENABLED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %69

30:                                               ; preds = %26
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %32 = load i32, i32* @WM9712_VENDOR_ID, align 4
  %33 = load i32, i32* @WM9712_VENDOR_ID_MASK, align 4
  %34 = call %struct.regmap* @snd_soc_new_ac97_component(%struct.snd_soc_component* %31, i32 %32, i32 %33)
  %35 = load %struct.wm9712_priv*, %struct.wm9712_priv** %4, align 8
  %36 = getelementptr inbounds %struct.wm9712_priv, %struct.wm9712_priv* %35, i32 0, i32 0
  store %struct.regmap* %34, %struct.regmap** %36, align 8
  %37 = load %struct.wm9712_priv*, %struct.wm9712_priv** %4, align 8
  %38 = getelementptr inbounds %struct.wm9712_priv, %struct.wm9712_priv* %37, i32 0, i32 0
  %39 = load %struct.regmap*, %struct.regmap** %38, align 8
  %40 = call i64 @IS_ERR(%struct.regmap* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %30
  %43 = load %struct.wm9712_priv*, %struct.wm9712_priv** %4, align 8
  %44 = getelementptr inbounds %struct.wm9712_priv, %struct.wm9712_priv* %43, i32 0, i32 0
  %45 = load %struct.regmap*, %struct.regmap** %44, align 8
  %46 = call i32 @PTR_ERR(%struct.regmap* %45)
  store i32 %46, i32* %6, align 4
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %48 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %80

53:                                               ; preds = %30
  %54 = load %struct.wm9712_priv*, %struct.wm9712_priv** %4, align 8
  %55 = getelementptr inbounds %struct.wm9712_priv, %struct.wm9712_priv* %54, i32 0, i32 0
  %56 = load %struct.regmap*, %struct.regmap** %55, align 8
  %57 = call %struct.regmap* @regmap_init_ac97(%struct.regmap* %56, i32* @wm9712_regmap_config)
  store %struct.regmap* %57, %struct.regmap** %5, align 8
  %58 = load %struct.regmap*, %struct.regmap** %5, align 8
  %59 = call i64 @IS_ERR(%struct.regmap* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %53
  %62 = load %struct.wm9712_priv*, %struct.wm9712_priv** %4, align 8
  %63 = getelementptr inbounds %struct.wm9712_priv, %struct.wm9712_priv* %62, i32 0, i32 0
  %64 = load %struct.regmap*, %struct.regmap** %63, align 8
  %65 = call i32 @snd_soc_free_ac97_component(%struct.regmap* %64)
  %66 = load %struct.regmap*, %struct.regmap** %5, align 8
  %67 = call i32 @PTR_ERR(%struct.regmap* %66)
  store i32 %67, i32* %2, align 4
  br label %80

68:                                               ; preds = %53
  br label %72

69:                                               ; preds = %26
  %70 = load i32, i32* @ENXIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %80

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %72, %13
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %75 = load %struct.regmap*, %struct.regmap** %5, align 8
  %76 = call i32 @snd_soc_component_init_regmap(%struct.snd_soc_component* %74, %struct.regmap* %75)
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %78 = load i32, i32* @AC97_VIDEO, align 4
  %79 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %77, i32 %78, i32 12288, i32 12288)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %73, %69, %61, %42
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.wm9712_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local %struct.regmap* @snd_soc_new_ac97_component(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

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
