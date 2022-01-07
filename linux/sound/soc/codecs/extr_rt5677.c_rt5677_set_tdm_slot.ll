; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt5677_priv = type { i32 }

@RT5677_TDM1_CTRL1 = common dso_local global i32 0, align 4
@RT5677_DIG_MISC = common dso_local global i32 0, align 4
@RT5677_TDM2_CTRL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @rt5677_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5677_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_soc_component*, align 8
  %12 = alloca %struct.rt5677_priv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 1
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %11, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %19 = call %struct.rt5677_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.rt5677_priv* %19, %struct.rt5677_priv** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %5
  %26 = load i32, i32* %13, align 4
  %27 = or i32 %26, 4096
  store i32 %27, i32* %13, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %9, align 4
  switch i32 %29, label %40 [
    i32 4, label %30
    i32 6, label %33
    i32 8, label %36
    i32 2, label %39
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* %13, align 4
  %32 = or i32 %31, 1024
  store i32 %32, i32* %13, align 4
  br label %41

33:                                               ; preds = %28
  %34 = load i32, i32* %13, align 4
  %35 = or i32 %34, 2048
  store i32 %35, i32* %13, align 4
  br label %41

36:                                               ; preds = %28
  %37 = load i32, i32* %13, align 4
  %38 = or i32 %37, 3072
  store i32 %38, i32* %13, align 4
  br label %41

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %28, %39
  br label %41

41:                                               ; preds = %40, %36, %33, %30
  %42 = load i32, i32* %10, align 4
  switch i32 %42, label %54 [
    i32 20, label %43
    i32 25, label %46
    i32 24, label %47
    i32 32, label %50
    i32 16, label %53
  ]

43:                                               ; preds = %41
  %44 = load i32, i32* %13, align 4
  %45 = or i32 %44, 256
  store i32 %45, i32* %13, align 4
  br label %55

46:                                               ; preds = %41
  store i32 32896, i32* %14, align 4
  br label %47

47:                                               ; preds = %41, %46
  %48 = load i32, i32* %13, align 4
  %49 = or i32 %48, 512
  store i32 %49, i32* %13, align 4
  br label %55

50:                                               ; preds = %41
  %51 = load i32, i32* %13, align 4
  %52 = or i32 %51, 768
  store i32 %52, i32* %13, align 4
  br label %55

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %41, %53
  br label %55

55:                                               ; preds = %54, %50, %47, %43
  %56 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %57 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %85 [
    i32 129, label %59
    i32 128, label %72
  ]

59:                                               ; preds = %55
  %60 = load %struct.rt5677_priv*, %struct.rt5677_priv** %12, align 8
  %61 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @RT5677_TDM1_CTRL1, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @regmap_update_bits(i32 %62, i32 %63, i32 7936, i32 %64)
  %66 = load %struct.rt5677_priv*, %struct.rt5677_priv** %12, align 8
  %67 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @RT5677_DIG_MISC, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @regmap_update_bits(i32 %68, i32 %69, i32 32768, i32 %70)
  br label %86

72:                                               ; preds = %55
  %73 = load %struct.rt5677_priv*, %struct.rt5677_priv** %12, align 8
  %74 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @RT5677_TDM2_CTRL1, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @regmap_update_bits(i32 %75, i32 %76, i32 7936, i32 %77)
  %79 = load %struct.rt5677_priv*, %struct.rt5677_priv** %12, align 8
  %80 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @RT5677_DIG_MISC, align 4
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @regmap_update_bits(i32 %81, i32 %82, i32 128, i32 %83)
  br label %86

85:                                               ; preds = %55
  br label %86

86:                                               ; preds = %85, %72, %59
  ret i32 0
}

declare dso_local %struct.rt5677_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
