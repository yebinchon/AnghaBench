; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7213.c_da7213_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7213.c_da7213_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.da7213_priv = type { i32, i32, i64 }

@.str = private unnamed_addr constant [27 x i8] c"Unsupported MCLK value %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DA7213_PLL_CTRL = common dso_local global i32 0, align 4
@DA7213_PLL_MCLK_SQR_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unknown clock source %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to set clock rate %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @da7213_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7213_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.da7213_priv*, align 8
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
  %17 = call %struct.da7213_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.da7213_priv* %17, %struct.da7213_priv** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.da7213_priv*, %struct.da7213_priv** %11, align 8
  %19 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load %struct.da7213_priv*, %struct.da7213_priv** %11, align 8
  %25 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %101

30:                                               ; preds = %23, %4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ult i32 %31, 5000000
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 32768
  br i1 %35, label %39, label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %8, align 4
  %38 = icmp ugt i32 %37, 54000000
  br i1 %38, label %39, label %47

39:                                               ; preds = %36, %33
  %40 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %41 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %101

47:                                               ; preds = %36
  %48 = load i32, i32* %7, align 4
  switch i32 %48, label %60 [
    i32 129, label %49
    i32 128, label %54
  ]

49:                                               ; preds = %47
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %51 = load i32, i32* @DA7213_PLL_CTRL, align 4
  %52 = load i32, i32* @DA7213_PLL_MCLK_SQR_EN, align 4
  %53 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %50, i32 %51, i32 %52, i32 0)
  br label %68

54:                                               ; preds = %47
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %56 = load i32, i32* @DA7213_PLL_CTRL, align 4
  %57 = load i32, i32* @DA7213_PLL_MCLK_SQR_EN, align 4
  %58 = load i32, i32* @DA7213_PLL_MCLK_SQR_EN, align 4
  %59 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %55, i32 %56, i32 %57, i32 %58)
  br label %68

60:                                               ; preds = %47
  %61 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %62 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %101

68:                                               ; preds = %54, %49
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.da7213_priv*, %struct.da7213_priv** %11, align 8
  %71 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.da7213_priv*, %struct.da7213_priv** %11, align 8
  %73 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %97

76:                                               ; preds = %68
  %77 = load %struct.da7213_priv*, %struct.da7213_priv** %11, align 8
  %78 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @clk_round_rate(i64 %79, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load %struct.da7213_priv*, %struct.da7213_priv** %11, align 8
  %83 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @clk_set_rate(i64 %84, i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %76
  %90 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %91 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @dev_err(i32 %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %5, align 4
  br label %101

96:                                               ; preds = %76
  br label %97

97:                                               ; preds = %96, %68
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.da7213_priv*, %struct.da7213_priv** %11, align 8
  %100 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %97, %89, %60, %39, %29
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local %struct.da7213_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @clk_round_rate(i64, i32) #1

declare dso_local i32 @clk_set_rate(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
