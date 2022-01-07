; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98926.c_max98926_set_sense_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98926.c_max98926_set_sense_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max98926_priv = type { i32, i32, i32, i32 }

@MAX98926_DOUT_CFG_VMON = common dso_local global i32 0, align 4
@MAX98926_DAI_VMON_EN_MASK = common dso_local global i32 0, align 4
@MAX98926_DOUT_CFG_IMON = common dso_local global i32 0, align 4
@MAX98926_DAI_IMON_EN_MASK = common dso_local global i32 0, align 4
@MAX98926_DAI_VMON_SLOT_MASK = common dso_local global i32 0, align 4
@MAX98926_DAI_IMON_SLOT_MASK = common dso_local global i32 0, align 4
@MAX98926_FORMAT = common dso_local global i32 0, align 4
@MAX98926_DAI_INTERLEAVE_MASK = common dso_local global i32 0, align 4
@MAX98926_DOUT_CFG_VBAT = common dso_local global i32 0, align 4
@MAX98926_DAI_INTERLEAVE_SLOT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max98926_priv*)* @max98926_set_sense_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max98926_set_sense_data(%struct.max98926_priv* %0) #0 {
  %2 = alloca %struct.max98926_priv*, align 8
  store %struct.max98926_priv* %0, %struct.max98926_priv** %2, align 8
  %3 = load %struct.max98926_priv*, %struct.max98926_priv** %2, align 8
  %4 = getelementptr inbounds %struct.max98926_priv, %struct.max98926_priv* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @MAX98926_DOUT_CFG_VMON, align 4
  %7 = load i32, i32* @MAX98926_DAI_VMON_EN_MASK, align 4
  %8 = load i32, i32* @MAX98926_DAI_VMON_EN_MASK, align 4
  %9 = call i32 @regmap_update_bits(i32 %5, i32 %6, i32 %7, i32 %8)
  %10 = load %struct.max98926_priv*, %struct.max98926_priv** %2, align 8
  %11 = getelementptr inbounds %struct.max98926_priv, %struct.max98926_priv* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MAX98926_DOUT_CFG_IMON, align 4
  %14 = load i32, i32* @MAX98926_DAI_IMON_EN_MASK, align 4
  %15 = load i32, i32* @MAX98926_DAI_IMON_EN_MASK, align 4
  %16 = call i32 @regmap_update_bits(i32 %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.max98926_priv*, %struct.max98926_priv** %2, align 8
  %18 = getelementptr inbounds %struct.max98926_priv, %struct.max98926_priv* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %1
  %22 = load %struct.max98926_priv*, %struct.max98926_priv** %2, align 8
  %23 = getelementptr inbounds %struct.max98926_priv, %struct.max98926_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MAX98926_DOUT_CFG_VMON, align 4
  %26 = load i32, i32* @MAX98926_DAI_VMON_SLOT_MASK, align 4
  %27 = load %struct.max98926_priv*, %struct.max98926_priv** %2, align 8
  %28 = getelementptr inbounds %struct.max98926_priv, %struct.max98926_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 %26, i32 %29)
  %31 = load %struct.max98926_priv*, %struct.max98926_priv** %2, align 8
  %32 = getelementptr inbounds %struct.max98926_priv, %struct.max98926_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MAX98926_DOUT_CFG_IMON, align 4
  %35 = load i32, i32* @MAX98926_DAI_IMON_SLOT_MASK, align 4
  %36 = load %struct.max98926_priv*, %struct.max98926_priv** %2, align 8
  %37 = getelementptr inbounds %struct.max98926_priv, %struct.max98926_priv* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @regmap_update_bits(i32 %33, i32 %34, i32 %35, i32 %38)
  br label %57

40:                                               ; preds = %1
  %41 = load %struct.max98926_priv*, %struct.max98926_priv** %2, align 8
  %42 = getelementptr inbounds %struct.max98926_priv, %struct.max98926_priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MAX98926_FORMAT, align 4
  %45 = load i32, i32* @MAX98926_DAI_INTERLEAVE_MASK, align 4
  %46 = load i32, i32* @MAX98926_DAI_INTERLEAVE_MASK, align 4
  %47 = call i32 @regmap_update_bits(i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.max98926_priv*, %struct.max98926_priv** %2, align 8
  %49 = getelementptr inbounds %struct.max98926_priv, %struct.max98926_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MAX98926_DOUT_CFG_VBAT, align 4
  %52 = load i32, i32* @MAX98926_DAI_INTERLEAVE_SLOT_MASK, align 4
  %53 = load %struct.max98926_priv*, %struct.max98926_priv** %2, align 8
  %54 = getelementptr inbounds %struct.max98926_priv, %struct.max98926_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @regmap_update_bits(i32 %50, i32 %51, i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %40, %21
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
