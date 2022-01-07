; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8822.c_nau8822_config_clkdiv.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8822.c_nau8822_config_clkdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.nau8822 = type { i32, i32, %struct.nau8822_pll }
%struct.nau8822_pll = type { i32 }

@nau8822_mclk_scaler = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"master clock prescaler %x for fs %d\0A\00", align 1
@NAU8822_REG_CLOCKING = common dso_local global i32 0, align 4
@NAU8822_MCLKSEL_MASK = common dso_local global i32 0, align 4
@NAU8822_MCLKSEL_SFT = common dso_local global i32 0, align 4
@NAU8822_CLKM_MASK = common dso_local global i32 0, align 4
@NAU8822_CLKM_MCLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"master clock prescaler not meet PLL parameters\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NAU8822_CLKM_PLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32)* @nau8822_config_clkdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8822_config_clkdiv(%struct.snd_soc_dai* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.nau8822*, align 8
  %10 = alloca %struct.nau8822_pll*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %8, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %18 = call %struct.nau8822* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.nau8822* %18, %struct.nau8822** %9, align 8
  %19 = load %struct.nau8822*, %struct.nau8822** %9, align 8
  %20 = getelementptr inbounds %struct.nau8822, %struct.nau8822* %19, i32 0, i32 2
  store %struct.nau8822_pll* %20, %struct.nau8822_pll** %10, align 8
  %21 = load %struct.nau8822*, %struct.nau8822** %9, align 8
  %22 = getelementptr inbounds %struct.nau8822, %struct.nau8822* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %97 [
    i32 129, label %24
    i32 128, label %71
  ]

24:                                               ; preds = %3
  store i32 0, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 %25, 256
  store i32 %26, i32* %13, align 4
  store i32 1, i32* %11, align 4
  br label %27

27:                                               ; preds = %49, %24
  %28 = load i32, i32* %11, align 4
  %29 = load i32*, i32** @nau8822_mclk_scaler, align 8
  %30 = call i32 @ARRAY_SIZE(i32* %29)
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %27
  %33 = load %struct.nau8822*, %struct.nau8822** %9, align 8
  %34 = getelementptr inbounds %struct.nau8822, %struct.nau8822* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 10
  %37 = load i32*, i32** @nau8822_mclk_scaler, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %36, %41
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  br label %52

47:                                               ; preds = %32
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %47
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %27

52:                                               ; preds = %46, %27
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %54 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @dev_dbg(i32 %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %60 = load i32, i32* @NAU8822_REG_CLOCKING, align 4
  %61 = load i32, i32* @NAU8822_MCLKSEL_MASK, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @NAU8822_MCLKSEL_SFT, align 4
  %64 = shl i32 %62, %63
  %65 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %59, i32 %60, i32 %61, i32 %64)
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %67 = load i32, i32* @NAU8822_REG_CLOCKING, align 4
  %68 = load i32, i32* @NAU8822_CLKM_MASK, align 4
  %69 = load i32, i32* @NAU8822_CLKM_MCLK, align 4
  %70 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %66, i32 %67, i32 %68, i32 %69)
  br label %100

71:                                               ; preds = %3
  %72 = load %struct.nau8822_pll*, %struct.nau8822_pll** %10, align 8
  %73 = getelementptr inbounds %struct.nau8822_pll, %struct.nau8822_pll* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %79 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %101

84:                                               ; preds = %71
  %85 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %86 = load i32, i32* @NAU8822_REG_CLOCKING, align 4
  %87 = load i32, i32* @NAU8822_MCLKSEL_MASK, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @NAU8822_MCLKSEL_SFT, align 4
  %90 = shl i32 %88, %89
  %91 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %85, i32 %86, i32 %87, i32 %90)
  %92 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %93 = load i32, i32* @NAU8822_REG_CLOCKING, align 4
  %94 = load i32, i32* @NAU8822_CLKM_MASK, align 4
  %95 = load i32, i32* @NAU8822_CLKM_PLL, align 4
  %96 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %92, i32 %93, i32 %94, i32 %95)
  br label %100

97:                                               ; preds = %3
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %101

100:                                              ; preds = %84, %52
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %97, %77
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.nau8822* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
