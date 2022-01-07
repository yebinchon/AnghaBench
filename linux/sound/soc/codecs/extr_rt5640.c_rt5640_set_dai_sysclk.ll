; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt5640_priv = type { i32, i32 }

@RT5640_SCLK_SRC_MCLK = common dso_local global i32 0, align 4
@RT5640_SCLK_SRC_PLL1 = common dso_local global i32 0, align 4
@RT5640_PWR_PLL = common dso_local global i32 0, align 4
@RT5640_SCLK_SRC_RCCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid clock id (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RT5640_PWR_ANLG2 = common dso_local global i32 0, align 4
@RT5640_GLB_CLK = common dso_local global i32 0, align 4
@RT5640_SCLK_SRC_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Sysclk is %dHz and clock id is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @rt5640_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5640_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.rt5640_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %10, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %18 = call %struct.rt5640_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.rt5640_priv* %18, %struct.rt5640_priv** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.rt5640_priv*, %struct.rt5640_priv** %11, align 8
  %21 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.rt5640_priv*, %struct.rt5640_priv** %11, align 8
  %27 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %79

31:                                               ; preds = %24, %4
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %48 [
    i32 130, label %33
    i32 129, label %37
    i32 128, label %44
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* @RT5640_SCLK_SRC_MCLK, align 4
  %35 = load i32, i32* %12, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %12, align 4
  br label %56

37:                                               ; preds = %31
  %38 = load i32, i32* @RT5640_SCLK_SRC_PLL1, align 4
  %39 = load i32, i32* %12, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* @RT5640_PWR_PLL, align 4
  %42 = load i32, i32* %13, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %13, align 4
  br label %56

44:                                               ; preds = %31
  %45 = load i32, i32* @RT5640_SCLK_SRC_RCCLK, align 4
  %46 = load i32, i32* %12, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %12, align 4
  br label %56

48:                                               ; preds = %31
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %50 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %79

56:                                               ; preds = %44, %37, %33
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %58 = load i32, i32* @RT5640_PWR_ANLG2, align 4
  %59 = load i32, i32* @RT5640_PWR_PLL, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %63 = load i32, i32* @RT5640_GLB_CLK, align 4
  %64 = load i32, i32* @RT5640_SCLK_SRC_MASK, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %62, i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.rt5640_priv*, %struct.rt5640_priv** %11, align 8
  %69 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.rt5640_priv*, %struct.rt5640_priv** %11, align 8
  %72 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %74 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @dev_dbg(i32 %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %77)
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %56, %48, %30
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local %struct.rt5640_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
