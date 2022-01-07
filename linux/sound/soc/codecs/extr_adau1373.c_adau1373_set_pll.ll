; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1373.c_adau1373_set_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1373.c_adau1373_set_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.adau1373 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ADAU1373_PLL_CTRL6_DPLL_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @adau1373_set_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1373_set_pll(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.adau1373*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [5 x i32], align 16
  %15 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %17 = call %struct.adau1373* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.adau1373* %17, %struct.adau1373** %12, align 8
  store i32 0, i32* %13, align 4
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %20 [
    i32 141, label %19
    i32 140, label %19
  ]

19:                                               ; preds = %5, %5
  br label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %145

23:                                               ; preds = %19
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %26 [
    i32 139, label %25
    i32 138, label %25
    i32 137, label %25
    i32 132, label %25
    i32 131, label %25
    i32 130, label %25
    i32 129, label %25
    i32 128, label %25
    i32 136, label %25
    i32 135, label %25
    i32 134, label %25
    i32 133, label %25
  ]

25:                                               ; preds = %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23
  br label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %145

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = icmp ult i32 %30, 7813
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = icmp ugt i32 %33, 27000000
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %145

38:                                               ; preds = %32
  %39 = load i32, i32* %11, align 4
  %40 = icmp ult i32 %39, 45158000
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %11, align 4
  %43 = icmp ugt i32 %42, 49152000
  br i1 %43, label %44, label %47

44:                                               ; preds = %41, %38
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %145

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %51, %47
  %49 = load i32, i32* %10, align 4
  %50 = icmp ult i32 %49, 8000000
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = mul i32 %52, 2
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %13, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %48

56:                                               ; preds = %48
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  %60 = call i32 @adau_calc_pll_cfg(i32 %57, i32 %58, i32* %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %145

66:                                               ; preds = %56
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load i32, i32* %13, align 4
  %71 = sub i32 11, %70
  store i32 %71, i32* %13, align 4
  %72 = load %struct.adau1373*, %struct.adau1373** %12, align 8
  %73 = getelementptr inbounds %struct.adau1373, %struct.adau1373* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @ADAU1373_PLL_CTRL6(i32 %75)
  %77 = load i32, i32* @ADAU1373_PLL_CTRL6_DPLL_BYPASS, align 4
  %78 = call i32 @regmap_update_bits(i32 %74, i32 %76, i32 %77, i32 0)
  br label %88

79:                                               ; preds = %66
  %80 = load %struct.adau1373*, %struct.adau1373** %12, align 8
  %81 = getelementptr inbounds %struct.adau1373, %struct.adau1373* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @ADAU1373_PLL_CTRL6(i32 %83)
  %85 = load i32, i32* @ADAU1373_PLL_CTRL6_DPLL_BYPASS, align 4
  %86 = load i32, i32* @ADAU1373_PLL_CTRL6_DPLL_BYPASS, align 4
  %87 = call i32 @regmap_update_bits(i32 %82, i32 %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %79, %69
  %89 = load %struct.adau1373*, %struct.adau1373** %12, align 8
  %90 = getelementptr inbounds %struct.adau1373, %struct.adau1373* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @ADAU1373_DPLL_CTRL(i32 %92)
  %94 = load i32, i32* %9, align 4
  %95 = shl i32 %94, 4
  %96 = load i32, i32* %13, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @regmap_write(i32 %91, i32 %93, i32 %97)
  %99 = load %struct.adau1373*, %struct.adau1373** %12, align 8
  %100 = getelementptr inbounds %struct.adau1373, %struct.adau1373* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @ADAU1373_PLL_CTRL1(i32 %102)
  %104 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  %105 = load i32, i32* %104, align 16
  %106 = call i32 @regmap_write(i32 %101, i32 %103, i32 %105)
  %107 = load %struct.adau1373*, %struct.adau1373** %12, align 8
  %108 = getelementptr inbounds %struct.adau1373, %struct.adau1373* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @ADAU1373_PLL_CTRL2(i32 %110)
  %112 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @regmap_write(i32 %109, i32 %111, i32 %113)
  %115 = load %struct.adau1373*, %struct.adau1373** %12, align 8
  %116 = getelementptr inbounds %struct.adau1373, %struct.adau1373* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @ADAU1373_PLL_CTRL3(i32 %118)
  %120 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @regmap_write(i32 %117, i32 %119, i32 %121)
  %123 = load %struct.adau1373*, %struct.adau1373** %12, align 8
  %124 = getelementptr inbounds %struct.adau1373, %struct.adau1373* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @ADAU1373_PLL_CTRL4(i32 %126)
  %128 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @regmap_write(i32 %125, i32 %127, i32 %129)
  %131 = load %struct.adau1373*, %struct.adau1373** %12, align 8
  %132 = getelementptr inbounds %struct.adau1373, %struct.adau1373* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @ADAU1373_PLL_CTRL5(i32 %134)
  %136 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 4
  %137 = load i32, i32* %136, align 16
  %138 = call i32 @regmap_write(i32 %133, i32 %135, i32 %137)
  %139 = load %struct.adau1373*, %struct.adau1373** %12, align 8
  %140 = getelementptr inbounds %struct.adau1373, %struct.adau1373* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @ADAU1373_CLK_SRC_DIV(i32 %142)
  %144 = call i32 @regmap_update_bits(i32 %141, i32 %143, i32 63, i32 9)
  store i32 0, i32* %6, align 4
  br label %145

145:                                              ; preds = %88, %63, %44, %35, %26, %20
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local %struct.adau1373* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @adau_calc_pll_cfg(i32, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ADAU1373_PLL_CTRL6(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @ADAU1373_DPLL_CTRL(i32) #1

declare dso_local i32 @ADAU1373_PLL_CTRL1(i32) #1

declare dso_local i32 @ADAU1373_PLL_CTRL2(i32) #1

declare dso_local i32 @ADAU1373_PLL_CTRL3(i32) #1

declare dso_local i32 @ADAU1373_PLL_CTRL4(i32) #1

declare dso_local i32 @ADAU1373_PLL_CTRL5(i32) #1

declare dso_local i32 @ADAU1373_CLK_SRC_DIV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
