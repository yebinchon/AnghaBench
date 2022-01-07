; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98925.c_max98925_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98925.c_max98925_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.max98925_priv = type { i32, %struct.snd_soc_component* }

@MAX98925_GLOBAL_ENABLE = common dso_local global i32 0, align 4
@MAX98925_FORMAT = common dso_local global i32 0, align 4
@M98925_DAI_DLY_MASK = common dso_local global i32 0, align 4
@MAX98925_TDM_SLOT_SELECT = common dso_local global i32 0, align 4
@MAX98925_DOUT_HIZ_CFG1 = common dso_local global i32 0, align 4
@MAX98925_DOUT_HIZ_CFG2 = common dso_local global i32 0, align 4
@MAX98925_DOUT_HIZ_CFG3 = common dso_local global i32 0, align 4
@MAX98925_DOUT_HIZ_CFG4 = common dso_local global i32 0, align 4
@MAX98925_FILTERS = common dso_local global i32 0, align 4
@MAX98925_ALC_CONFIGURATION = common dso_local global i32 0, align 4
@MAX98925_CONFIGURATION = common dso_local global i32 0, align 4
@MAX98925_BOOST_LIMITER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @max98925_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98925_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.max98925_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.max98925_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.max98925_priv* %5, %struct.max98925_priv** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = load %struct.max98925_priv*, %struct.max98925_priv** %3, align 8
  %8 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %7, i32 0, i32 1
  store %struct.snd_soc_component* %6, %struct.snd_soc_component** %8, align 8
  %9 = load %struct.max98925_priv*, %struct.max98925_priv** %3, align 8
  %10 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MAX98925_GLOBAL_ENABLE, align 4
  %13 = call i32 @regmap_write(i32 %11, i32 %12, i32 0)
  %14 = load %struct.max98925_priv*, %struct.max98925_priv** %3, align 8
  %15 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MAX98925_FORMAT, align 4
  %18 = load i32, i32* @M98925_DAI_DLY_MASK, align 4
  %19 = call i32 @regmap_write(i32 %16, i32 %17, i32 %18)
  %20 = load %struct.max98925_priv*, %struct.max98925_priv** %3, align 8
  %21 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MAX98925_TDM_SLOT_SELECT, align 4
  %24 = call i32 @regmap_write(i32 %22, i32 %23, i32 200)
  %25 = load %struct.max98925_priv*, %struct.max98925_priv** %3, align 8
  %26 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MAX98925_DOUT_HIZ_CFG1, align 4
  %29 = call i32 @regmap_write(i32 %27, i32 %28, i32 255)
  %30 = load %struct.max98925_priv*, %struct.max98925_priv** %3, align 8
  %31 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MAX98925_DOUT_HIZ_CFG2, align 4
  %34 = call i32 @regmap_write(i32 %32, i32 %33, i32 255)
  %35 = load %struct.max98925_priv*, %struct.max98925_priv** %3, align 8
  %36 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MAX98925_DOUT_HIZ_CFG3, align 4
  %39 = call i32 @regmap_write(i32 %37, i32 %38, i32 255)
  %40 = load %struct.max98925_priv*, %struct.max98925_priv** %3, align 8
  %41 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MAX98925_DOUT_HIZ_CFG4, align 4
  %44 = call i32 @regmap_write(i32 %42, i32 %43, i32 240)
  %45 = load %struct.max98925_priv*, %struct.max98925_priv** %3, align 8
  %46 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MAX98925_FILTERS, align 4
  %49 = call i32 @regmap_write(i32 %47, i32 %48, i32 216)
  %50 = load %struct.max98925_priv*, %struct.max98925_priv** %3, align 8
  %51 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @MAX98925_ALC_CONFIGURATION, align 4
  %54 = call i32 @regmap_write(i32 %52, i32 %53, i32 248)
  %55 = load %struct.max98925_priv*, %struct.max98925_priv** %3, align 8
  %56 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @MAX98925_CONFIGURATION, align 4
  %59 = call i32 @regmap_write(i32 %57, i32 %58, i32 240)
  %60 = load %struct.max98925_priv*, %struct.max98925_priv** %3, align 8
  %61 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MAX98925_BOOST_LIMITER, align 4
  %64 = call i32 @regmap_write(i32 %62, i32 %63, i32 248)
  ret i32 0
}

declare dso_local %struct.max98925_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
