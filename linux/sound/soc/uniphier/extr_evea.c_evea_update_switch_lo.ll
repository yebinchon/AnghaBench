; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_evea.c_evea_update_switch_lo.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_evea.c_evea_update_switch_lo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evea_priv = type { i64, %struct.regmap* }
%struct.regmap = type { i32 }

@ADACSEQ1_MMUTE = common dso_local global i32 0, align 4
@ALO1OUTPOW = common dso_local global i32 0, align 4
@ALO1OUTPOW_LO1_ON = common dso_local global i32 0, align 4
@ALO2OUTPOW = common dso_local global i32 0, align 4
@ALO2OUTPOW_ADAC2_MUTE = common dso_local global i32 0, align 4
@ALO2OUTPOW_LO2_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evea_priv*)* @evea_update_switch_lo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evea_update_switch_lo(%struct.evea_priv* %0) #0 {
  %2 = alloca %struct.evea_priv*, align 8
  %3 = alloca %struct.regmap*, align 8
  store %struct.evea_priv* %0, %struct.evea_priv** %2, align 8
  %4 = load %struct.evea_priv*, %struct.evea_priv** %2, align 8
  %5 = getelementptr inbounds %struct.evea_priv, %struct.evea_priv* %4, i32 0, i32 1
  %6 = load %struct.regmap*, %struct.regmap** %5, align 8
  store %struct.regmap* %6, %struct.regmap** %3, align 8
  %7 = load %struct.evea_priv*, %struct.evea_priv** %2, align 8
  %8 = getelementptr inbounds %struct.evea_priv, %struct.evea_priv* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %1
  %12 = load %struct.regmap*, %struct.regmap** %3, align 8
  %13 = call i32 @ADACSEQ1(i32 0)
  %14 = load i32, i32* @ADACSEQ1_MMUTE, align 4
  %15 = call i32 @regmap_update_bits(%struct.regmap* %12, i32 %13, i32 %14, i32 0)
  %16 = load %struct.regmap*, %struct.regmap** %3, align 8
  %17 = call i32 @ADACSEQ1(i32 2)
  %18 = load i32, i32* @ADACSEQ1_MMUTE, align 4
  %19 = call i32 @regmap_update_bits(%struct.regmap* %16, i32 %17, i32 %18, i32 0)
  %20 = load %struct.regmap*, %struct.regmap** %3, align 8
  %21 = load i32, i32* @ALO1OUTPOW, align 4
  %22 = load i32, i32* @ALO1OUTPOW_LO1_ON, align 4
  %23 = load i32, i32* @ALO1OUTPOW_LO1_ON, align 4
  %24 = call i32 @regmap_update_bits(%struct.regmap* %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.regmap*, %struct.regmap** %3, align 8
  %26 = load i32, i32* @ALO2OUTPOW, align 4
  %27 = load i32, i32* @ALO2OUTPOW_ADAC2_MUTE, align 4
  %28 = load i32, i32* @ALO2OUTPOW_LO2_ON, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @ALO2OUTPOW_ADAC2_MUTE, align 4
  %31 = load i32, i32* @ALO2OUTPOW_LO2_ON, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @regmap_update_bits(%struct.regmap* %25, i32 %26, i32 %29, i32 %32)
  br label %55

34:                                               ; preds = %1
  %35 = load %struct.regmap*, %struct.regmap** %3, align 8
  %36 = call i32 @ADACSEQ1(i32 0)
  %37 = load i32, i32* @ADACSEQ1_MMUTE, align 4
  %38 = load i32, i32* @ADACSEQ1_MMUTE, align 4
  %39 = call i32 @regmap_update_bits(%struct.regmap* %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.regmap*, %struct.regmap** %3, align 8
  %41 = call i32 @ADACSEQ1(i32 2)
  %42 = load i32, i32* @ADACSEQ1_MMUTE, align 4
  %43 = load i32, i32* @ADACSEQ1_MMUTE, align 4
  %44 = call i32 @regmap_update_bits(%struct.regmap* %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.regmap*, %struct.regmap** %3, align 8
  %46 = load i32, i32* @ALO1OUTPOW, align 4
  %47 = load i32, i32* @ALO1OUTPOW_LO1_ON, align 4
  %48 = call i32 @regmap_update_bits(%struct.regmap* %45, i32 %46, i32 %47, i32 0)
  %49 = load %struct.regmap*, %struct.regmap** %3, align 8
  %50 = load i32, i32* @ALO2OUTPOW, align 4
  %51 = load i32, i32* @ALO2OUTPOW_ADAC2_MUTE, align 4
  %52 = load i32, i32* @ALO2OUTPOW_LO2_ON, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @regmap_update_bits(%struct.regmap* %49, i32 %50, i32 %53, i32 0)
  br label %55

55:                                               ; preds = %34, %11
  ret i32 0
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @ADACSEQ1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
