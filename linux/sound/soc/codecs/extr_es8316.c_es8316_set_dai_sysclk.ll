; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8316.c_es8316_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8316.c_es8316_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.es8316_priv = type { i32, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@NR_SUPPORTED_MCLK_LRCK_RATIOS = common dso_local global i32 0, align 4
@supported_mclk_lrck_ratios = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @es8316_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es8316_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.es8316_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %16, i32 0, i32 0
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %17, align 8
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %10, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %20 = call %struct.es8316_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.es8316_priv* %20, %struct.es8316_priv** %11, align 8
  store i32 0, i32* %14, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.es8316_priv*, %struct.es8316_priv** %11, align 8
  %23 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %4
  %27 = load %struct.es8316_priv*, %struct.es8316_priv** %11, align 8
  %28 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = load %struct.es8316_priv*, %struct.es8316_priv** %11, align 8
  %31 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 0, i32* %32, align 8
  store i32 0, i32* %5, align 4
  br label %84

33:                                               ; preds = %4
  %34 = load %struct.es8316_priv*, %struct.es8316_priv** %11, align 8
  %35 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @clk_set_rate(i32 %36, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %5, align 4
  br label %84

43:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %70, %43
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @NR_SUPPORTED_MCLK_LRCK_RATIOS, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %44
  %49 = load i32*, i32** @supported_mclk_lrck_ratios, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %15, align 4
  %56 = urem i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %48
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %15, align 4
  %61 = udiv i32 %59, %60
  %62 = load %struct.es8316_priv*, %struct.es8316_priv** %11, align 8
  %63 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %14, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  store i32 %61, i32* %68, align 4
  br label %69

69:                                               ; preds = %58, %48
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %44

73:                                               ; preds = %44
  %74 = load %struct.es8316_priv*, %struct.es8316_priv** %11, align 8
  %75 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.es8316_priv*, %struct.es8316_priv** %11, align 8
  %78 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32* %76, i32** %79, align 8
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.es8316_priv*, %struct.es8316_priv** %11, align 8
  %82 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 8
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %73, %41, %26
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local %struct.es8316_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
