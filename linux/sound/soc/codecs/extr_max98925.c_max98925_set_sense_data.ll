; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98925.c_max98925_set_sense_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98925.c_max98925_set_sense_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max98925_priv = type { i32, i32, i32 }

@MAX98925_DOUT_CFG_VMON = common dso_local global i32 0, align 4
@M98925_DAI_VMON_EN_MASK = common dso_local global i32 0, align 4
@M98925_DAI_VMON_SLOT_MASK = common dso_local global i32 0, align 4
@M98925_DAI_VMON_SLOT_SHIFT = common dso_local global i32 0, align 4
@MAX98925_DOUT_CFG_IMON = common dso_local global i32 0, align 4
@M98925_DAI_IMON_EN_MASK = common dso_local global i32 0, align 4
@M98925_DAI_IMON_SLOT_MASK = common dso_local global i32 0, align 4
@M98925_DAI_IMON_SLOT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max98925_priv*)* @max98925_set_sense_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max98925_set_sense_data(%struct.max98925_priv* %0) #0 {
  %2 = alloca %struct.max98925_priv*, align 8
  store %struct.max98925_priv* %0, %struct.max98925_priv** %2, align 8
  %3 = load %struct.max98925_priv*, %struct.max98925_priv** %2, align 8
  %4 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @MAX98925_DOUT_CFG_VMON, align 4
  %7 = load i32, i32* @M98925_DAI_VMON_EN_MASK, align 4
  %8 = load i32, i32* @M98925_DAI_VMON_EN_MASK, align 4
  %9 = call i32 @regmap_update_bits(i32 %5, i32 %6, i32 %7, i32 %8)
  %10 = load %struct.max98925_priv*, %struct.max98925_priv** %2, align 8
  %11 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MAX98925_DOUT_CFG_VMON, align 4
  %14 = load i32, i32* @M98925_DAI_VMON_SLOT_MASK, align 4
  %15 = load %struct.max98925_priv*, %struct.max98925_priv** %2, align 8
  %16 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @M98925_DAI_VMON_SLOT_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = call i32 @regmap_update_bits(i32 %12, i32 %13, i32 %14, i32 %19)
  %21 = load %struct.max98925_priv*, %struct.max98925_priv** %2, align 8
  %22 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MAX98925_DOUT_CFG_IMON, align 4
  %25 = load i32, i32* @M98925_DAI_IMON_EN_MASK, align 4
  %26 = load i32, i32* @M98925_DAI_IMON_EN_MASK, align 4
  %27 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.max98925_priv*, %struct.max98925_priv** %2, align 8
  %29 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MAX98925_DOUT_CFG_IMON, align 4
  %32 = load i32, i32* @M98925_DAI_IMON_SLOT_MASK, align 4
  %33 = load %struct.max98925_priv*, %struct.max98925_priv** %2, align 8
  %34 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @M98925_DAI_IMON_SLOT_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = call i32 @regmap_update_bits(i32 %30, i32 %31, i32 %32, i32 %37)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
