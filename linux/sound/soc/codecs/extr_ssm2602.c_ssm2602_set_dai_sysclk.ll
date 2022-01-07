; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ssm2602.c_ssm2602_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ssm2602.c_ssm2602_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.ssm2602_priv = type { i32, i32, i32, i32* }

@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@SSM2602_SYSCLK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ssm2602_constraints_12288000 = common dso_local global i32 0, align 4
@ssm2602_constraints_11289600 = common dso_local global i32 0, align 4
@PWR_CLK_OUT_PDN = common dso_local global i32 0, align 4
@PWR_OSC_PDN = common dso_local global i32 0, align 4
@SSM2602_PWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @ssm2602_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssm2602_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.ssm2602_priv*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %10, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %17 = call %struct.ssm2602_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.ssm2602_priv* %17, %struct.ssm2602_priv** %11, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @SSM2602_SYSCLK, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %84

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  switch i32 %29, label %39 [
    i32 12288000, label %30
    i32 18432000, label %30
    i32 11289600, label %33
    i32 16934400, label %33
    i32 12000000, label %36
  ]

30:                                               ; preds = %28, %28
  %31 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %11, align 8
  %32 = getelementptr inbounds %struct.ssm2602_priv, %struct.ssm2602_priv* %31, i32 0, i32 3
  store i32* @ssm2602_constraints_12288000, i32** %32, align 8
  br label %42

33:                                               ; preds = %28, %28
  %34 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %11, align 8
  %35 = getelementptr inbounds %struct.ssm2602_priv, %struct.ssm2602_priv* %34, i32 0, i32 3
  store i32* @ssm2602_constraints_11289600, i32** %35, align 8
  br label %42

36:                                               ; preds = %28
  %37 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %11, align 8
  %38 = getelementptr inbounds %struct.ssm2602_priv, %struct.ssm2602_priv* %37, i32 0, i32 3
  store i32* null, i32** %38, align 8
  br label %42

39:                                               ; preds = %28
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %84

42:                                               ; preds = %36, %33, %30
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %11, align 8
  %45 = getelementptr inbounds %struct.ssm2602_priv, %struct.ssm2602_priv* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %83

46:                                               ; preds = %4
  %47 = load i32, i32* %7, align 4
  switch i32 %47, label %52 [
    i32 129, label %48
    i32 128, label %50
  ]

48:                                               ; preds = %46
  %49 = load i32, i32* @PWR_CLK_OUT_PDN, align 4
  store i32 %49, i32* %12, align 4
  br label %55

50:                                               ; preds = %46
  %51 = load i32, i32* @PWR_OSC_PDN, align 4
  store i32 %51, i32* %12, align 4
  br label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %84

55:                                               ; preds = %50, %48
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %11, align 8
  %61 = getelementptr inbounds %struct.ssm2602_priv, %struct.ssm2602_priv* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %71

64:                                               ; preds = %55
  %65 = load i32, i32* %12, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %11, align 8
  %68 = getelementptr inbounds %struct.ssm2602_priv, %struct.ssm2602_priv* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %64, %58
  %72 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %11, align 8
  %73 = getelementptr inbounds %struct.ssm2602_priv, %struct.ssm2602_priv* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @SSM2602_PWR, align 4
  %76 = load i32, i32* @PWR_CLK_OUT_PDN, align 4
  %77 = load i32, i32* @PWR_OSC_PDN, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %11, align 8
  %80 = getelementptr inbounds %struct.ssm2602_priv, %struct.ssm2602_priv* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @regmap_update_bits(i32 %74, i32 %75, i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %71, %42
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %52, %39, %25
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local %struct.ssm2602_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
