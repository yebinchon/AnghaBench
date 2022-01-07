; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9713.c_pll_factors.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9713.c_pll_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct._pll_div = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"WM9713 PLL N value %u out of recommended range!\0A\00", align 1
@FIXED_PLL_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, %struct._pll_div*, i32)* @pll_factors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pll_factors(%struct.snd_soc_component* %0, %struct._pll_div* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct._pll_div*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store %struct._pll_div* %1, %struct._pll_div** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 98304000, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ugt i32 %12, 14400000
  br i1 %13, label %14, label %30

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = lshr i32 %15, 1
  store i32 %16, i32* %6, align 4
  %17 = load %struct._pll_div*, %struct._pll_div** %5, align 8
  %18 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ugt i32 %19, 14400000
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = lshr i32 %22, 1
  store i32 %23, i32* %6, align 4
  %24 = load %struct._pll_div*, %struct._pll_div** %5, align 8
  %25 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  br label %29

26:                                               ; preds = %14
  %27 = load %struct._pll_div*, %struct._pll_div** %5, align 8
  %28 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %21
  br label %35

30:                                               ; preds = %3
  %31 = load %struct._pll_div*, %struct._pll_div** %5, align 8
  %32 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  %33 = load %struct._pll_div*, %struct._pll_div** %5, align 8
  %34 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %30, %29
  %36 = load i32, i32* %6, align 4
  %37 = icmp ult i32 %36, 8192000
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct._pll_div*, %struct._pll_div** %5, align 8
  %40 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %39, i32 0, i32 2
  store i32 1, i32* %40, align 4
  %41 = load i32, i32* %11, align 4
  %42 = lshr i32 %41, 2
  store i32 %42, i32* %11, align 4
  br label %46

43:                                               ; preds = %35
  %44 = load %struct._pll_div*, %struct._pll_div** %5, align 8
  %45 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %44, i32 0, i32 2
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %6, align 4
  %49 = udiv i32 %47, %48
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ult i32 %50, 5
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  %54 = icmp ugt i32 %53, 12
  br i1 %54, label %55, label %61

55:                                               ; preds = %52, %46
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %57 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @dev_warn(i32 %58, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %55, %52
  %62 = load i32, i32* %9, align 4
  %63 = load %struct._pll_div*, %struct._pll_div** %5, align 8
  %64 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %6, align 4
  %67 = urem i32 %65, %66
  store i32 %67, i32* %10, align 4
  %68 = load i64, i64* @FIXED_PLL_SIZE, align 8
  %69 = load i32, i32* %10, align 4
  %70 = zext i32 %69 to i64
  %71 = mul nsw i64 %68, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @do_div(i32 %73, i32 %74)
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = urem i32 %77, 10
  %79 = icmp uge i32 %78, 5
  br i1 %79, label %80, label %83

80:                                               ; preds = %61
  %81 = load i32, i32* %8, align 4
  %82 = add i32 %81, 5
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %80, %61
  %84 = load i32, i32* %8, align 4
  %85 = udiv i32 %84, 10
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load %struct._pll_div*, %struct._pll_div** %5, align 8
  %88 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 4
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
