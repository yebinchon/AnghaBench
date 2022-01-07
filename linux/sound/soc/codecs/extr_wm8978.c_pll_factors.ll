; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8978.c_pll_factors.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8978.c_pll_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8978_pll_div = type { i32, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"WM8978 N value exceeds recommended range! N = %u\0A\00", align 1
@FIXED_PLL_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, %struct.wm8978_pll_div*, i32, i32)* @pll_factors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pll_factors(%struct.snd_soc_component* %0, %struct.wm8978_pll_div* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.wm8978_pll_div*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store %struct.wm8978_pll_div* %1, %struct.wm8978_pll_div** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = udiv i32 %13, %14
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ult i32 %16, 6
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = lshr i32 %19, 1
  store i32 %20, i32* %8, align 4
  %21 = load %struct.wm8978_pll_div*, %struct.wm8978_pll_div** %6, align 8
  %22 = getelementptr inbounds %struct.wm8978_pll_div, %struct.wm8978_pll_div* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = udiv i32 %23, %24
  store i32 %25, i32* %11, align 4
  br label %29

26:                                               ; preds = %4
  %27 = load %struct.wm8978_pll_div*, %struct.wm8978_pll_div** %6, align 8
  %28 = getelementptr inbounds %struct.wm8978_pll_div, %struct.wm8978_pll_div* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %18
  %30 = load i32, i32* %11, align 4
  %31 = icmp ult i32 %30, 6
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %11, align 4
  %34 = icmp ugt i32 %33, 12
  br i1 %34, label %35, label %41

35:                                               ; preds = %32, %29
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %37 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @dev_warn(i32 %38, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %35, %32
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.wm8978_pll_div*, %struct.wm8978_pll_div** %6, align 8
  %44 = getelementptr inbounds %struct.wm8978_pll_div, %struct.wm8978_pll_div* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %11, align 4
  %48 = mul i32 %46, %47
  %49 = sub i32 %45, %48
  store i32 %49, i32* %12, align 4
  %50 = load i64, i64* @FIXED_PLL_SIZE, align 8
  %51 = load i32, i32* %12, align 4
  %52 = zext i32 %51 to i64
  %53 = mul nsw i64 %50, %52
  %54 = load i32, i32* %8, align 4
  %55 = udiv i32 %54, 2
  %56 = zext i32 %55 to i64
  %57 = add nsw i64 %53, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @do_div(i32 %59, i32 %60)
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.wm8978_pll_div*, %struct.wm8978_pll_div** %6, align 8
  %65 = getelementptr inbounds %struct.wm8978_pll_div, %struct.wm8978_pll_div* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
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
