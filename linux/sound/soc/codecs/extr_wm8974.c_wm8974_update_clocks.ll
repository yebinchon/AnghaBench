; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8974.c_wm8974_update_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8974.c_wm8974_update_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8974_priv = type { i32, i32 }

@WM8974_MCLKDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @wm8974_update_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8974_update_clocks(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.wm8974_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %4, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %14 = call %struct.wm8974_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.wm8974_priv* %14, %struct.wm8974_priv** %5, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.wm8974_priv*, %struct.wm8974_priv** %5, align 8
  %16 = getelementptr inbounds %struct.wm8974_priv, %struct.wm8974_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.wm8974_priv*, %struct.wm8974_priv** %5, align 8
  %21 = getelementptr inbounds %struct.wm8974_priv, %struct.wm8974_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %1
  store i32 0, i32* %2, align 4
  br label %54

25:                                               ; preds = %19
  %26 = load %struct.wm8974_priv*, %struct.wm8974_priv** %5, align 8
  %27 = getelementptr inbounds %struct.wm8974_priv, %struct.wm8974_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 256, %28
  store i32 %29, i32* %6, align 4
  %30 = load %struct.wm8974_priv*, %struct.wm8974_priv** %5, align 8
  %31 = getelementptr inbounds %struct.wm8974_priv, %struct.wm8974_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @wm8974_get_mclkdiv(i32 %32, i32 %33, i32* %9)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.wm8974_priv*, %struct.wm8974_priv** %5, align 8
  %37 = getelementptr inbounds %struct.wm8974_priv, %struct.wm8974_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %25
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @wm8974_get_mclkdiv(i32 22500000, i32 %41, i32* %9)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %40, %25
  %44 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %45 = load %struct.wm8974_priv*, %struct.wm8974_priv** %5, align 8
  %46 = getelementptr inbounds %struct.wm8974_priv, %struct.wm8974_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @wm8974_set_dai_pll(%struct.snd_soc_dai* %44, i32 0, i32 0, i32 %47, i32 %48)
  %50 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %51 = load i32, i32* @WM8974_MCLKDIV, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @wm8974_set_dai_clkdiv(%struct.snd_soc_dai* %50, i32 %51, i32 %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %43, %24
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.wm8974_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @wm8974_get_mclkdiv(i32, i32, i32*) #1

declare dso_local i32 @wm8974_set_dai_pll(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

declare dso_local i32 @wm8974_set_dai_clkdiv(%struct.snd_soc_dai*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
