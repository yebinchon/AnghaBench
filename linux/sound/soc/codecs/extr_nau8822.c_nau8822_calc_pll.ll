; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8822.c_nau8822_calc_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8822.c_nau8822_calc_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8822_pll = type { i32, i32, i32, i32 }

@NAU_PLL_REF_MAX = common dso_local global i32 0, align 4
@NAU_PLL_REF_MIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@nau8822_mclk_scaler = common dso_local global i32* null, align 8
@NAU_PLL_FREQ_MIN = common dso_local global i32 0, align 4
@NAU_PLL_FREQ_MAX = common dso_local global i32 0, align 4
@NAU_PLL_OPTOP_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.nau8822_pll*)* @nau8822_calc_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8822_calc_pll(i32 %0, i32 %1, %struct.nau8822_pll* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nau8822_pll*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.nau8822_pll* %2, %struct.nau8822_pll** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @NAU_PLL_REF_MAX, align 4
  %15 = icmp ugt i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @NAU_PLL_REF_MIN, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %99

23:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  %24 = load i32*, i32** @nau8822_mclk_scaler, align 8
  %25 = call i32 @ARRAY_SIZE(i32* %24)
  store i32 %25, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %56, %23
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = mul i32 256, %31
  %33 = mul i32 %32, 4
  %34 = load i32*, i32** @nau8822_mclk_scaler, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = mul i32 %33, %38
  %40 = udiv i32 %39, 10
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @NAU_PLL_FREQ_MIN, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %30
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @NAU_PLL_FREQ_MAX, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %52, %48, %44, %30
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %26

59:                                               ; preds = %26
  %60 = load i32*, i32** @nau8822_mclk_scaler, align 8
  %61 = call i32 @ARRAY_SIZE(i32* %60)
  %62 = load i32, i32* %12, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %99

67:                                               ; preds = %59
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.nau8822_pll*, %struct.nau8822_pll** %7, align 8
  %70 = getelementptr inbounds %struct.nau8822_pll, %struct.nau8822_pll* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = shl i32 %72, 28
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @div_u64(i32 %73, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load %struct.nau8822_pll*, %struct.nau8822_pll** %7, align 8
  %77 = getelementptr inbounds %struct.nau8822_pll, %struct.nau8822_pll* %76, i32 0, i32 1
  store i32 0, i32* %77, align 4
  %78 = load i32, i32* %10, align 4
  %79 = ashr i32 %78, 28
  %80 = and i32 %79, 15
  %81 = load i32, i32* @NAU_PLL_OPTOP_MIN, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %67
  %84 = load i32, i32* %10, align 4
  %85 = shl i32 %84, 1
  store i32 %85, i32* %10, align 4
  %86 = load %struct.nau8822_pll*, %struct.nau8822_pll** %7, align 8
  %87 = getelementptr inbounds %struct.nau8822_pll, %struct.nau8822_pll* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  br label %88

88:                                               ; preds = %83, %67
  %89 = load i32, i32* %10, align 4
  %90 = ashr i32 %89, 28
  %91 = and i32 %90, 15
  %92 = load %struct.nau8822_pll*, %struct.nau8822_pll** %7, align 8
  %93 = getelementptr inbounds %struct.nau8822_pll, %struct.nau8822_pll* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %10, align 4
  %95 = and i32 %94, 268435455
  %96 = ashr i32 %95, 4
  %97 = load %struct.nau8822_pll*, %struct.nau8822_pll** %7, align 8
  %98 = getelementptr inbounds %struct.nau8822_pll, %struct.nau8822_pll* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %88, %64, %20
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @div_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
