; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4642.c_ak4642_dai_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4642.c_ak4642_dai_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.ak4642_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PLL2 = common dso_local global i32 0, align 4
@PLL0 = common dso_local global i32 0, align 4
@PLL1 = common dso_local global i32 0, align 4
@PLL3 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MD_CTL1 = common dso_local global i32 0, align 4
@PLL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @ak4642_dai_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4642_dai_set_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.ak4642_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %10, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %18 = call %struct.ak4642_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.ak4642_priv* %18, %struct.ak4642_priv** %11, align 8
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %62 [
    i32 11289600, label %20
    i32 12288000, label %22
    i32 12000000, label %26
    i32 24000000, label %30
    i32 13500000, label %36
    i32 27000000, label %40
    i32 19200000, label %46
    i32 13000000, label %48
    i32 26000000, label %54
  ]

20:                                               ; preds = %4
  %21 = load i32, i32* @PLL2, align 4
  store i32 %21, i32* %12, align 4
  br label %65

22:                                               ; preds = %4
  %23 = load i32, i32* @PLL2, align 4
  %24 = load i32, i32* @PLL0, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %12, align 4
  br label %65

26:                                               ; preds = %4
  %27 = load i32, i32* @PLL2, align 4
  %28 = load i32, i32* @PLL1, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %12, align 4
  br label %65

30:                                               ; preds = %4
  %31 = load i32, i32* @PLL2, align 4
  %32 = load i32, i32* @PLL1, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @PLL0, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %12, align 4
  br label %65

36:                                               ; preds = %4
  %37 = load i32, i32* @PLL3, align 4
  %38 = load i32, i32* @PLL2, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %12, align 4
  br label %65

40:                                               ; preds = %4
  %41 = load i32, i32* @PLL3, align 4
  %42 = load i32, i32* @PLL2, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @PLL0, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %12, align 4
  br label %65

46:                                               ; preds = %4
  %47 = load i32, i32* @PLL3, align 4
  store i32 %47, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %65

48:                                               ; preds = %4
  %49 = load i32, i32* @PLL3, align 4
  %50 = load i32, i32* @PLL2, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @PLL1, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %65

54:                                               ; preds = %4
  %55 = load i32, i32* @PLL3, align 4
  %56 = load i32, i32* @PLL2, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @PLL1, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @PLL0, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %65

62:                                               ; preds = %4
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %84

65:                                               ; preds = %54, %48, %46, %40, %36, %30, %26, %22, %20
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load %struct.ak4642_priv*, %struct.ak4642_priv** %11, align 8
  %70 = getelementptr inbounds %struct.ak4642_priv, %struct.ak4642_priv* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %84

78:                                               ; preds = %68, %65
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %80 = load i32, i32* @MD_CTL1, align 4
  %81 = load i32, i32* @PLL_MASK, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %79, i32 %80, i32 %81, i32 %82)
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %78, %75, %62
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local %struct.ak4642_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
