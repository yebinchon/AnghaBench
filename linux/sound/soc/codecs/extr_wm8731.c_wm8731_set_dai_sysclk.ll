; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8731.c_wm8731_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8731.c_wm8731_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.wm8731_priv = type { i32, i32, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@wm8731_constraints_12000000 = common dso_local global i32 0, align 4
@wm8731_constraints_12288000_18432000 = common dso_local global i32 0, align 4
@wm8731_constraints_11289600_16934400 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @wm8731_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8731_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.snd_soc_dapm_context*, align 8
  %12 = alloca %struct.wm8731_priv*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %10, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %17 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %16)
  store %struct.snd_soc_dapm_context* %17, %struct.snd_soc_dapm_context** %11, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %19 = call %struct.wm8731_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.wm8731_priv* %19, %struct.wm8731_priv** %12, align 8
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %40 [
    i32 128, label %21
    i32 129, label %21
  ]

21:                                               ; preds = %4, %4
  %22 = load %struct.wm8731_priv*, %struct.wm8731_priv** %12, align 8
  %23 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.wm8731_priv*, %struct.wm8731_priv** %12, align 8
  %28 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @clk_set_rate(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %66

36:                                               ; preds = %26, %21
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.wm8731_priv*, %struct.wm8731_priv** %12, align 8
  %39 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %43

40:                                               ; preds = %4
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %66

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  switch i32 %44, label %57 [
    i32 0, label %45
    i32 12000000, label %48
    i32 12288000, label %51
    i32 18432000, label %51
    i32 16934400, label %54
    i32 11289600, label %54
  ]

45:                                               ; preds = %43
  %46 = load %struct.wm8731_priv*, %struct.wm8731_priv** %12, align 8
  %47 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %46, i32 0, i32 2
  store i32* null, i32** %47, align 8
  br label %60

48:                                               ; preds = %43
  %49 = load %struct.wm8731_priv*, %struct.wm8731_priv** %12, align 8
  %50 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %49, i32 0, i32 2
  store i32* @wm8731_constraints_12000000, i32** %50, align 8
  br label %60

51:                                               ; preds = %43, %43
  %52 = load %struct.wm8731_priv*, %struct.wm8731_priv** %12, align 8
  %53 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %52, i32 0, i32 2
  store i32* @wm8731_constraints_12288000_18432000, i32** %53, align 8
  br label %60

54:                                               ; preds = %43, %43
  %55 = load %struct.wm8731_priv*, %struct.wm8731_priv** %12, align 8
  %56 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %55, i32 0, i32 2
  store i32* @wm8731_constraints_11289600_16934400, i32** %56, align 8
  br label %60

57:                                               ; preds = %43
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %66

60:                                               ; preds = %54, %51, %48, %45
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.wm8731_priv*, %struct.wm8731_priv** %12, align 8
  %63 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %11, align 8
  %65 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %64)
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %60, %57, %40, %33
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.wm8731_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
