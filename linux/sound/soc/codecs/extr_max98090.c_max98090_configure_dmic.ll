; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_configure_dmic.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_configure_dmic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32* }
%struct.max98090_priv = type { i32 }

@comp_lrclk_rates = common dso_local global i32* null, align 8
@dmic_table = common dso_local global %struct.TYPE_4__* null, align 8
@M98090_REG_DIGITAL_MIC_ENABLE = common dso_local global i32 0, align 4
@M98090_MICCLK_MASK = common dso_local global i32 0, align 4
@M98090_MICCLK_SHIFT = common dso_local global i32 0, align 4
@M98090_REG_DIGITAL_MIC_CONFIG = common dso_local global i32 0, align 4
@M98090_DMIC_COMP_MASK = common dso_local global i32 0, align 4
@M98090_DMIC_FREQ_MASK = common dso_local global i32 0, align 4
@M98090_DMIC_COMP_SHIFT = common dso_local global i32 0, align 4
@M98090_DMIC_FREQ_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max98090_priv*, i32, i32, i32)* @max98090_configure_dmic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98090_configure_dmic(%struct.max98090_priv* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.max98090_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.max98090_priv* %0, %struct.max98090_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @max98090_find_closest_pclk(i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %103

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @max98090_find_divisor(i32 %22, i32 %23)
  store i32 %24, i32* %10, align 4
  store i32 0, i32* %14, align 4
  br label %25

25:                                               ; preds = %49, %21
  %26 = load i32, i32* %14, align 4
  %27 = load i32*, i32** @comp_lrclk_rates, align 8
  %28 = call i32 @ARRAY_SIZE(i32* %27)
  %29 = sub nsw i32 %28, 1
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = load i32*, i32** @comp_lrclk_rates, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** @comp_lrclk_rates, align 8
  %39 = load i32, i32* %14, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %37, %43
  %45 = sdiv i32 %44, 2
  %46 = icmp sle i32 %32, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %31
  br label %52

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %14, align 4
  br label %25

52:                                               ; preds = %47, %25
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dmic_table, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %12, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dmic_table, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %13, align 4
  %79 = load %struct.max98090_priv*, %struct.max98090_priv** %6, align 8
  %80 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @M98090_REG_DIGITAL_MIC_ENABLE, align 4
  %83 = load i32, i32* @M98090_MICCLK_MASK, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @M98090_MICCLK_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = call i32 @regmap_update_bits(i32 %81, i32 %82, i32 %83, i32 %86)
  %88 = load %struct.max98090_priv*, %struct.max98090_priv** %6, align 8
  %89 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @M98090_REG_DIGITAL_MIC_CONFIG, align 4
  %92 = load i32, i32* @M98090_DMIC_COMP_MASK, align 4
  %93 = load i32, i32* @M98090_DMIC_FREQ_MASK, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @M98090_DMIC_COMP_SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @M98090_DMIC_FREQ_SHIFT, align 4
  %100 = shl i32 %98, %99
  %101 = or i32 %97, %100
  %102 = call i32 @regmap_update_bits(i32 %90, i32 %91, i32 %94, i32 %101)
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %52, %19
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @max98090_find_closest_pclk(i32) #1

declare dso_local i32 @max98090_find_divisor(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
