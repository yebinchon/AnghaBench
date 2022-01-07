; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.da7219_priv = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [27 x i8] c"Unsupported MCLK value %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DA7219_PLL_CTRL = common dso_local global i32 0, align 4
@DA7219_PLL_MCLK_SQR_EN_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unknown clock source %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to set clock rate %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @da7219_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7219_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.da7219_priv*, align 8
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
  %17 = call %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.da7219_priv* %17, %struct.da7219_priv** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.da7219_priv*, %struct.da7219_priv** %11, align 8
  %19 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load %struct.da7219_priv*, %struct.da7219_priv** %11, align 8
  %25 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %110

30:                                               ; preds = %23, %4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ult i32 %31, 2000000
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp ugt i32 %34, 54000000
  br i1 %35, label %36, label %44

36:                                               ; preds = %33, %30
  %37 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %38 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %110

44:                                               ; preds = %33
  %45 = load %struct.da7219_priv*, %struct.da7219_priv** %11, align 8
  %46 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %45, i32 0, i32 2
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load i32, i32* %7, align 4
  switch i32 %48, label %60 [
    i32 128, label %49
    i32 129, label %55
  ]

49:                                               ; preds = %44
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %51 = load i32, i32* @DA7219_PLL_CTRL, align 4
  %52 = load i32, i32* @DA7219_PLL_MCLK_SQR_EN_MASK, align 4
  %53 = load i32, i32* @DA7219_PLL_MCLK_SQR_EN_MASK, align 4
  %54 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %50, i32 %51, i32 %52, i32 %53)
  br label %71

55:                                               ; preds = %44
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %57 = load i32, i32* @DA7219_PLL_CTRL, align 4
  %58 = load i32, i32* @DA7219_PLL_MCLK_SQR_EN_MASK, align 4
  %59 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %56, i32 %57, i32 %58, i32 0)
  br label %71

60:                                               ; preds = %44
  %61 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %62 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load %struct.da7219_priv*, %struct.da7219_priv** %11, align 8
  %67 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %66, i32 0, i32 2
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %110

71:                                               ; preds = %55, %49
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.da7219_priv*, %struct.da7219_priv** %11, align 8
  %74 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.da7219_priv*, %struct.da7219_priv** %11, align 8
  %76 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %71
  %80 = load %struct.da7219_priv*, %struct.da7219_priv** %11, align 8
  %81 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @clk_round_rate(i64 %82, i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load %struct.da7219_priv*, %struct.da7219_priv** %11, align 8
  %86 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @clk_set_rate(i64 %87, i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %79
  %93 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %94 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @dev_err(i32 %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load %struct.da7219_priv*, %struct.da7219_priv** %11, align 8
  %99 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %98, i32 0, i32 2
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %5, align 4
  br label %110

102:                                              ; preds = %79
  br label %103

103:                                              ; preds = %102, %71
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.da7219_priv*, %struct.da7219_priv** %11, align 8
  %106 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.da7219_priv*, %struct.da7219_priv** %11, align 8
  %108 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %107, i32 0, i32 2
  %109 = call i32 @mutex_unlock(i32* %108)
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %103, %92, %60, %36, %29
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @clk_round_rate(i64, i32) #1

declare dso_local i32 @clk_set_rate(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
