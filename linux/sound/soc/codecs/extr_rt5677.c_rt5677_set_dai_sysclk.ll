; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt5677_priv = type { i32, i32, i32 }

@RT5677_SCLK_SRC_MCLK = common dso_local global i32 0, align 4
@RT5677_SCLK_SRC_PLL1 = common dso_local global i32 0, align 4
@RT5677_SCLK_SRC_RCCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid clock id (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RT5677_GLB_CLK1 = common dso_local global i32 0, align 4
@RT5677_SCLK_SRC_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Sysclk is %dHz and clock id is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @rt5677_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5677_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.rt5677_priv*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 1
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %10, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %17 = call %struct.rt5677_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.rt5677_priv* %17, %struct.rt5677_priv** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.rt5677_priv*, %struct.rt5677_priv** %11, align 8
  %20 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.rt5677_priv*, %struct.rt5677_priv** %11, align 8
  %26 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %72

30:                                               ; preds = %23, %4
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %44 [
    i32 130, label %32
    i32 129, label %36
    i32 128, label %40
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* @RT5677_SCLK_SRC_MCLK, align 4
  %34 = load i32, i32* %12, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %12, align 4
  br label %52

36:                                               ; preds = %30
  %37 = load i32, i32* @RT5677_SCLK_SRC_PLL1, align 4
  %38 = load i32, i32* %12, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %12, align 4
  br label %52

40:                                               ; preds = %30
  %41 = load i32, i32* @RT5677_SCLK_SRC_RCCLK, align 4
  %42 = load i32, i32* %12, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %12, align 4
  br label %52

44:                                               ; preds = %30
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %46 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %72

52:                                               ; preds = %40, %36, %32
  %53 = load %struct.rt5677_priv*, %struct.rt5677_priv** %11, align 8
  %54 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @RT5677_GLB_CLK1, align 4
  %57 = load i32, i32* @RT5677_SCLK_SRC_MASK, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @regmap_update_bits(i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.rt5677_priv*, %struct.rt5677_priv** %11, align 8
  %62 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.rt5677_priv*, %struct.rt5677_priv** %11, align 8
  %65 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %67 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @dev_dbg(i32 %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70)
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %52, %44, %29
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.rt5677_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
