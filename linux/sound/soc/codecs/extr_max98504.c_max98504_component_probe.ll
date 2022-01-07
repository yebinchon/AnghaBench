; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98504.c_max98504_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98504.c_max98504_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.max98504_priv = type { i32, i32, i32, i32, i32, i32, i32, %struct.regmap* }
%struct.regmap = type { i32 }

@MAX98504_NUM_SUPPLIES = common dso_local global i32 0, align 4
@MAX98504_SOFTWARE_RESET = common dso_local global i32 0, align 4
@MAX98504_PVDD_BROWNOUT_ENABLE = common dso_local global i32 0, align 4
@MAX98504_PVDD_BROWNOUT_CONFIG_1 = common dso_local global i32 0, align 4
@MAX98504_PVDD_BROWNOUT_CONFIG_2 = common dso_local global i32 0, align 4
@MAX98504_PVDD_BROWNOUT_CONFIG_3 = common dso_local global i32 0, align 4
@MAX98504_PVDD_BROWNOUT_CONFIG_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @max98504_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98504_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.max98504_priv*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.max98504_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.max98504_priv* %8, %struct.max98504_priv** %4, align 8
  %9 = load %struct.max98504_priv*, %struct.max98504_priv** %4, align 8
  %10 = getelementptr inbounds %struct.max98504_priv, %struct.max98504_priv* %9, i32 0, i32 7
  %11 = load %struct.regmap*, %struct.regmap** %10, align 8
  store %struct.regmap* %11, %struct.regmap** %5, align 8
  %12 = load i32, i32* @MAX98504_NUM_SUPPLIES, align 4
  %13 = load %struct.max98504_priv*, %struct.max98504_priv** %4, align 8
  %14 = getelementptr inbounds %struct.max98504_priv, %struct.max98504_priv* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @regulator_bulk_enable(i32 %12, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %69

21:                                               ; preds = %1
  %22 = load %struct.regmap*, %struct.regmap** %5, align 8
  %23 = load i32, i32* @MAX98504_SOFTWARE_RESET, align 4
  %24 = call i32 @regmap_write(%struct.regmap* %22, i32 %23, i32 1)
  %25 = call i32 @msleep(i32 20)
  %26 = load %struct.max98504_priv*, %struct.max98504_priv** %4, align 8
  %27 = getelementptr inbounds %struct.max98504_priv, %struct.max98504_priv* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %69

31:                                               ; preds = %21
  %32 = load %struct.regmap*, %struct.regmap** %5, align 8
  %33 = load i32, i32* @MAX98504_PVDD_BROWNOUT_ENABLE, align 4
  %34 = call i32 @regmap_write(%struct.regmap* %32, i32 %33, i32 1)
  %35 = load %struct.regmap*, %struct.regmap** %5, align 8
  %36 = load i32, i32* @MAX98504_PVDD_BROWNOUT_CONFIG_1, align 4
  %37 = load %struct.max98504_priv*, %struct.max98504_priv** %4, align 8
  %38 = getelementptr inbounds %struct.max98504_priv, %struct.max98504_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, 31
  %41 = shl i32 %40, 3
  %42 = load %struct.max98504_priv*, %struct.max98504_priv** %4, align 8
  %43 = getelementptr inbounds %struct.max98504_priv, %struct.max98504_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 3
  %46 = or i32 %41, %45
  %47 = call i32 @regmap_write(%struct.regmap* %35, i32 %36, i32 %46)
  %48 = load %struct.regmap*, %struct.regmap** %5, align 8
  %49 = load i32, i32* @MAX98504_PVDD_BROWNOUT_CONFIG_2, align 4
  %50 = load %struct.max98504_priv*, %struct.max98504_priv** %4, align 8
  %51 = getelementptr inbounds %struct.max98504_priv, %struct.max98504_priv* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, 255
  %54 = call i32 @regmap_write(%struct.regmap* %48, i32 %49, i32 %53)
  %55 = load %struct.regmap*, %struct.regmap** %5, align 8
  %56 = load i32, i32* @MAX98504_PVDD_BROWNOUT_CONFIG_3, align 4
  %57 = load %struct.max98504_priv*, %struct.max98504_priv** %4, align 8
  %58 = getelementptr inbounds %struct.max98504_priv, %struct.max98504_priv* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 255
  %61 = call i32 @regmap_write(%struct.regmap* %55, i32 %56, i32 %60)
  %62 = load %struct.regmap*, %struct.regmap** %5, align 8
  %63 = load i32, i32* @MAX98504_PVDD_BROWNOUT_CONFIG_4, align 4
  %64 = load %struct.max98504_priv*, %struct.max98504_priv** %4, align 8
  %65 = getelementptr inbounds %struct.max98504_priv, %struct.max98504_priv* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, 255
  %68 = call i32 @regmap_write(%struct.regmap* %62, i32 %63, i32 %67)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %31, %30, %19
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.max98504_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
