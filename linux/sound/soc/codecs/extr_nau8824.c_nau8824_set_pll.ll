; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_set_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_set_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.nau8824 = type { i32, i32 }
%struct.nau8824_fll = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Unsupported input clock %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"mclk_src=%x ratio=%x fll_frac=%x fll_int=%x clk_ref_div=%x\0A\00", align 1
@NAU8824_REG_CLK_DIVIDER = common dso_local global i32 0, align 4
@NAU8824_CLK_SRC_MASK = common dso_local global i32 0, align 4
@NAU8824_CLK_SRC_VCO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @nau8824_set_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8824_set_pll(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nau8824*, align 8
  %13 = alloca %struct.nau8824_fll, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %17 = call %struct.nau8824* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.nau8824* %17, %struct.nau8824** %12, align 8
  %18 = load i32, i32* %11, align 4
  %19 = udiv i32 %18, 256
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %15, align 4
  %22 = call i32 @nau8824_calc_fll_param(i32 %20, i32 %21, %struct.nau8824_fll* %13)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %5
  %26 = load %struct.nau8824*, %struct.nau8824** %12, align 8
  %27 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %6, align 4
  br label %59

32:                                               ; preds = %5
  %33 = load %struct.nau8824*, %struct.nau8824** %12, align 8
  %34 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.nau8824_fll, %struct.nau8824_fll* %13, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.nau8824_fll, %struct.nau8824_fll* %13, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.nau8824_fll, %struct.nau8824_fll* %13, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.nau8824_fll, %struct.nau8824_fll* %13, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.nau8824_fll, %struct.nau8824_fll* %13, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_dbg(i32 %35, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %39, i32 %41, i32 %43, i32 %45)
  %47 = load %struct.nau8824*, %struct.nau8824** %12, align 8
  %48 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @nau8824_fll_apply(i32 %49, %struct.nau8824_fll* %13)
  %51 = call i32 @mdelay(i32 2)
  %52 = load %struct.nau8824*, %struct.nau8824** %12, align 8
  %53 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @NAU8824_REG_CLK_DIVIDER, align 4
  %56 = load i32, i32* @NAU8824_CLK_SRC_MASK, align 4
  %57 = load i32, i32* @NAU8824_CLK_SRC_VCO, align 4
  %58 = call i32 @regmap_update_bits(i32 %54, i32 %55, i32 %56, i32 %57)
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %32, %25
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local %struct.nau8824* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @nau8824_calc_fll_param(i32, i32, %struct.nau8824_fll*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nau8824_fll_apply(i32, %struct.nau8824_fll*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
