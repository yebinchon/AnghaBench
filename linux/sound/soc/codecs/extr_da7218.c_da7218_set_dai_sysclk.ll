; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.da7218_priv = type { i32, i64 }

@.str = private unnamed_addr constant [27 x i8] c"Unsupported MCLK value %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DA7218_PLL_CTRL = common dso_local global i32 0, align 4
@DA7218_PLL_MCLK_SQR_EN_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unknown clock source %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to set clock rate %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @da7218_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7218_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.da7218_priv*, align 8
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
  %17 = call %struct.da7218_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.da7218_priv* %17, %struct.da7218_priv** %11, align 8
  %18 = load %struct.da7218_priv*, %struct.da7218_priv** %11, align 8
  %19 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %89

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ult i32 %25, 2000000
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = icmp ugt i32 %28, 54000000
  br i1 %29, label %30, label %38

30:                                               ; preds = %27, %24
  %31 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %32 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %89

38:                                               ; preds = %27
  %39 = load i32, i32* %7, align 4
  switch i32 %39, label %51 [
    i32 128, label %40
    i32 129, label %46
  ]

40:                                               ; preds = %38
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %42 = load i32, i32* @DA7218_PLL_CTRL, align 4
  %43 = load i32, i32* @DA7218_PLL_MCLK_SQR_EN_MASK, align 4
  %44 = load i32, i32* @DA7218_PLL_MCLK_SQR_EN_MASK, align 4
  %45 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %41, i32 %42, i32 %43, i32 %44)
  br label %59

46:                                               ; preds = %38
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %48 = load i32, i32* @DA7218_PLL_CTRL, align 4
  %49 = load i32, i32* @DA7218_PLL_MCLK_SQR_EN_MASK, align 4
  %50 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %47, i32 %48, i32 %49, i32 0)
  br label %59

51:                                               ; preds = %38
  %52 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %53 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %89

59:                                               ; preds = %46, %40
  %60 = load %struct.da7218_priv*, %struct.da7218_priv** %11, align 8
  %61 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %59
  %65 = load %struct.da7218_priv*, %struct.da7218_priv** %11, align 8
  %66 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @clk_round_rate(i64 %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load %struct.da7218_priv*, %struct.da7218_priv** %11, align 8
  %71 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @clk_set_rate(i64 %72, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %64
  %78 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %79 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %5, align 4
  br label %89

84:                                               ; preds = %64
  br label %85

85:                                               ; preds = %84, %59
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.da7218_priv*, %struct.da7218_priv** %11, align 8
  %88 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %85, %77, %51, %30, %23
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct.da7218_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

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
