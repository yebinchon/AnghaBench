; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7210.c_da7210_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7210.c_da7210_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i64, i64, i64 }
%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.da7210_priv = type { i64 }

@da7210_pll_div = common dso_local global %struct.TYPE_3__* null, align 8
@DA7210_STARTUP1 = common dso_local global i32 0, align 4
@DA7210_SC_MST_EN = common dso_local global i64 0, align 8
@DA7210_PLL_DIV1 = common dso_local global i32 0, align 4
@DA7210_PLL_DIV2 = common dso_local global i32 0, align 4
@DA7210_PLL_DIV3 = common dso_local global i32 0, align 4
@DA7210_PLL_DIV_L_MASK = common dso_local global i64 0, align 8
@DA7210_PLL = common dso_local global i32 0, align 4
@DA7210_PLL_EN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Unsupported PLL input frequency %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @da7210_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7210_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.da7210_priv*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %18, i32 0, i32 1
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %19, align 8
  store %struct.snd_soc_component* %20, %struct.snd_soc_component** %12, align 8
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %22 = call %struct.da7210_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %21)
  store %struct.da7210_priv* %22, %struct.da7210_priv** %13, align 8
  %23 = load %struct.da7210_priv*, %struct.da7210_priv** %13, align 8
  %24 = getelementptr inbounds %struct.da7210_priv, %struct.da7210_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %5
  store i32 2822400, i32* %11, align 4
  br label %28

28:                                               ; preds = %27, %5
  store i64 0, i64* %17, align 8
  br label %29

29:                                               ; preds = %77, %28
  %30 = load i64, i64* %17, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @da7210_pll_div, align 8
  %32 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %31)
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %34, label %80

34:                                               ; preds = %29
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @da7210_pll_div, align 8
  %37 = load i64, i64* %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %35, %40
  br i1 %41, label %42, label %76

42:                                               ; preds = %34
  %43 = load %struct.da7210_priv*, %struct.da7210_priv** %13, align 8
  %44 = getelementptr inbounds %struct.da7210_priv, %struct.da7210_priv* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @da7210_pll_div, align 8
  %47 = load i64, i64* %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %45, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %42
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @da7210_pll_div, align 8
  %55 = load i64, i64* %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %53, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %52
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @da7210_pll_div, align 8
  %62 = load i64, i64* %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %14, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @da7210_pll_div, align 8
  %67 = load i64, i64* %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %15, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @da7210_pll_div, align 8
  %72 = load i64, i64* %17, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %16, align 8
  br label %80

76:                                               ; preds = %52, %42, %34
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %17, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %17, align 8
  br label %29

80:                                               ; preds = %60, %29
  %81 = load i64, i64* %17, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** @da7210_pll_div, align 8
  %83 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %82)
  %84 = icmp uge i64 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %114

86:                                               ; preds = %80
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %88 = load i32, i32* @DA7210_STARTUP1, align 4
  %89 = load i64, i64* @DA7210_SC_MST_EN, align 8
  %90 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %87, i32 %88, i64 %89, i64 0)
  %91 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %92 = load i32, i32* @DA7210_PLL_DIV1, align 4
  %93 = load i64, i64* %14, align 8
  %94 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %91, i32 %92, i64 %93)
  %95 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %96 = load i32, i32* @DA7210_PLL_DIV2, align 4
  %97 = load i64, i64* %15, align 8
  %98 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %95, i32 %96, i64 %97)
  %99 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %100 = load i32, i32* @DA7210_PLL_DIV3, align 4
  %101 = load i64, i64* @DA7210_PLL_DIV_L_MASK, align 8
  %102 = load i64, i64* %16, align 8
  %103 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %99, i32 %100, i64 %101, i64 %102)
  %104 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %105 = load i32, i32* @DA7210_PLL, align 4
  %106 = load i64, i64* @DA7210_PLL_EN, align 8
  %107 = load i64, i64* @DA7210_PLL_EN, align 8
  %108 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %104, i32 %105, i64 %106, i64 %107)
  %109 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %110 = load i32, i32* @DA7210_STARTUP1, align 4
  %111 = load i64, i64* @DA7210_SC_MST_EN, align 8
  %112 = load i64, i64* @DA7210_SC_MST_EN, align 8
  %113 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %109, i32 %110, i64 %111, i64 %112)
  store i32 0, i32* %6, align 4
  br label %122

114:                                              ; preds = %85
  %115 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %116 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @dev_err(i32 %117, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %114, %86
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local %struct.da7210_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i64, i64) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
