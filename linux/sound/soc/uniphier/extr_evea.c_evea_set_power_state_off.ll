; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_evea.c_evea_set_power_state_off.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_evea.c_evea_set_power_state_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evea_priv = type { %struct.regmap* }
%struct.regmap = type { i32 }

@ADAC1ODC = common dso_local global i32 0, align 4
@ADAC1ODC_HP_DIS_RES_MASK = common dso_local global i32 0, align 4
@ADAC1ODC_HP_DIS_RES_ON = common dso_local global i32 0, align 4
@ADACSEQ1_MMUTE = common dso_local global i32 0, align 4
@ALO1OUTPOW = common dso_local global i32 0, align 4
@ALO1OUTPOW_LO1_ON = common dso_local global i32 0, align 4
@ALO2OUTPOW = common dso_local global i32 0, align 4
@ALO2OUTPOW_LO2_ON = common dso_local global i32 0, align 4
@AHPOUTPOW = common dso_local global i32 0, align 4
@AHPOUTPOW_HP_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evea_priv*)* @evea_set_power_state_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evea_set_power_state_off(%struct.evea_priv* %0) #0 {
  %2 = alloca %struct.evea_priv*, align 8
  %3 = alloca %struct.regmap*, align 8
  store %struct.evea_priv* %0, %struct.evea_priv** %2, align 8
  %4 = load %struct.evea_priv*, %struct.evea_priv** %2, align 8
  %5 = getelementptr inbounds %struct.evea_priv, %struct.evea_priv* %4, i32 0, i32 0
  %6 = load %struct.regmap*, %struct.regmap** %5, align 8
  store %struct.regmap* %6, %struct.regmap** %3, align 8
  %7 = load %struct.regmap*, %struct.regmap** %3, align 8
  %8 = load i32, i32* @ADAC1ODC, align 4
  %9 = load i32, i32* @ADAC1ODC_HP_DIS_RES_MASK, align 4
  %10 = load i32, i32* @ADAC1ODC_HP_DIS_RES_ON, align 4
  %11 = call i32 @regmap_update_bits(%struct.regmap* %7, i32 %8, i32 %9, i32 %10)
  %12 = load %struct.regmap*, %struct.regmap** %3, align 8
  %13 = call i32 @ADACSEQ1(i32 0)
  %14 = load i32, i32* @ADACSEQ1_MMUTE, align 4
  %15 = load i32, i32* @ADACSEQ1_MMUTE, align 4
  %16 = call i32 @regmap_update_bits(%struct.regmap* %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.regmap*, %struct.regmap** %3, align 8
  %18 = call i32 @ADACSEQ1(i32 1)
  %19 = load i32, i32* @ADACSEQ1_MMUTE, align 4
  %20 = load i32, i32* @ADACSEQ1_MMUTE, align 4
  %21 = call i32 @regmap_update_bits(%struct.regmap* %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.regmap*, %struct.regmap** %3, align 8
  %23 = call i32 @ADACSEQ1(i32 2)
  %24 = load i32, i32* @ADACSEQ1_MMUTE, align 4
  %25 = load i32, i32* @ADACSEQ1_MMUTE, align 4
  %26 = call i32 @regmap_update_bits(%struct.regmap* %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.regmap*, %struct.regmap** %3, align 8
  %28 = load i32, i32* @ALO1OUTPOW, align 4
  %29 = load i32, i32* @ALO1OUTPOW_LO1_ON, align 4
  %30 = call i32 @regmap_update_bits(%struct.regmap* %27, i32 %28, i32 %29, i32 0)
  %31 = load %struct.regmap*, %struct.regmap** %3, align 8
  %32 = load i32, i32* @ALO2OUTPOW, align 4
  %33 = load i32, i32* @ALO2OUTPOW_LO2_ON, align 4
  %34 = call i32 @regmap_update_bits(%struct.regmap* %31, i32 %32, i32 %33, i32 0)
  %35 = load %struct.regmap*, %struct.regmap** %3, align 8
  %36 = load i32, i32* @AHPOUTPOW, align 4
  %37 = load i32, i32* @AHPOUTPOW_HP_ON, align 4
  %38 = call i32 @regmap_update_bits(%struct.regmap* %35, i32 %36, i32 %37, i32 0)
  ret void
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @ADACSEQ1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
