; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8810.c_nau8810_calc_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8810.c_nau8810_calc_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8810_pll = type { i32, i32, i32, i32 }

@NAU_PLL_REF_MAX = common dso_local global i32 0, align 4
@NAU_PLL_REF_MIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@nau8810_mclk_scaler = common dso_local global i64* null, align 8
@NAU_PLL_FREQ_MIN = common dso_local global i32 0, align 4
@NAU_PLL_FREQ_MAX = common dso_local global i32 0, align 4
@NAU_PLL_OPTOP_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.nau8810_pll*)* @nau8810_calc_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8810_calc_pll(i32 %0, i32 %1, %struct.nau8810_pll* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nau8810_pll*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.nau8810_pll* %2, %struct.nau8810_pll** %7, align 8
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
  br label %103

23:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  %24 = load i64*, i64** @nau8810_mclk_scaler, align 8
  %25 = call i32 @ARRAY_SIZE(i64* %24)
  store i32 %25, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %60, %23
  %27 = load i32, i32* %11, align 4
  %28 = load i64*, i64** @nau8810_mclk_scaler, align 8
  %29 = call i32 @ARRAY_SIZE(i64* %28)
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %63

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = mul i64 256, %33
  %35 = mul i64 %34, 4
  %36 = load i64*, i64** @nau8810_mclk_scaler, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = mul i64 %35, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @div_u64(i32 %43, i32 10)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @NAU_PLL_FREQ_MIN, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %31
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @NAU_PLL_FREQ_MAX, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %56, %52, %48, %31
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %26

63:                                               ; preds = %26
  %64 = load i64*, i64** @nau8810_mclk_scaler, align 8
  %65 = call i32 @ARRAY_SIZE(i64* %64)
  %66 = load i32, i32* %12, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %103

71:                                               ; preds = %63
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.nau8810_pll*, %struct.nau8810_pll** %7, align 8
  %74 = getelementptr inbounds %struct.nau8810_pll, %struct.nau8810_pll* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = shl i32 %76, 28
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @div_u64(i32 %77, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load %struct.nau8810_pll*, %struct.nau8810_pll** %7, align 8
  %81 = getelementptr inbounds %struct.nau8810_pll, %struct.nau8810_pll* %80, i32 0, i32 1
  store i32 0, i32* %81, align 4
  %82 = load i32, i32* %10, align 4
  %83 = ashr i32 %82, 28
  %84 = and i32 %83, 15
  %85 = load i32, i32* @NAU_PLL_OPTOP_MIN, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %71
  %88 = load i32, i32* %10, align 4
  %89 = shl i32 %88, 1
  store i32 %89, i32* %10, align 4
  %90 = load %struct.nau8810_pll*, %struct.nau8810_pll** %7, align 8
  %91 = getelementptr inbounds %struct.nau8810_pll, %struct.nau8810_pll* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  br label %92

92:                                               ; preds = %87, %71
  %93 = load i32, i32* %10, align 4
  %94 = ashr i32 %93, 28
  %95 = and i32 %94, 15
  %96 = load %struct.nau8810_pll*, %struct.nau8810_pll** %7, align 8
  %97 = getelementptr inbounds %struct.nau8810_pll, %struct.nau8810_pll* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %10, align 4
  %99 = and i32 %98, 268435455
  %100 = ashr i32 %99, 4
  %101 = load %struct.nau8810_pll*, %struct.nau8810_pll** %7, align 8
  %102 = getelementptr inbounds %struct.nau8810_pll, %struct.nau8810_pll* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %92, %68, %20
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @div_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
