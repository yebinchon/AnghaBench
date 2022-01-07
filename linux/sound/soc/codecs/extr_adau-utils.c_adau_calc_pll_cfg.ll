; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau-utils.c_adau_calc_pll_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau-utils.c_adau_calc_pll_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adau_calc_pll_cfg(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %68

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = urem i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @DIV_ROUND_UP(i32 %23, i32 13500000)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %5, align 4
  %27 = udiv i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = udiv i32 %28, %29
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = urem i32 %31, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @gcd(i32 %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = udiv i32 %37, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %12, align 4
  %42 = udiv i32 %40, %41
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %13, align 4
  %44 = add i32 %43, -1
  store i32 %44, i32* %13, align 4
  br label %49

45:                                               ; preds = %17
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = udiv i32 %46, %47
  store i32 %48, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %45, %22
  %50 = load i32, i32* %9, align 4
  %51 = icmp ugt i32 %50, 65535
  br i1 %51, label %64, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  %54 = icmp ugt i32 %53, 65535
  br i1 %54, label %64, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %13, align 4
  %57 = icmp ugt i32 %56, 3
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = icmp ugt i32 %59, 8
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = icmp ult i32 %62, 2
  br i1 %63, label %64, label %67

64:                                               ; preds = %61, %58, %55, %52, %49
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %100

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %16
  %69 = load i32, i32* %10, align 4
  %70 = lshr i32 %69, 8
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %10, align 4
  %74 = and i32 %73, 255
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %9, align 4
  %78 = lshr i32 %77, 8
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %9, align 4
  %82 = and i32 %81, 255
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %8, align 4
  %86 = shl i32 %85, 3
  %87 = load i32, i32* %13, align 4
  %88 = shl i32 %87, 1
  %89 = or i32 %86, %88
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 4
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %68
  %95 = load i32*, i32** %7, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %94, %68
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %64
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @gcd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
