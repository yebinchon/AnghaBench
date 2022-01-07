; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_pll_freq_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_pll_freq_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @pcxhr_pll_freq_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_pll_freq_register(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp ult i32 %9, 6900
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = icmp ugt i32 %12, 110000
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %66

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = udiv i32 56448000, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = sub i32 %20, 1
  %22 = udiv i32 %21, 2
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ult i32 %23, 512
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load i32, i32* %8, align 4
  %27 = add i32 %26, 2048
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  br label %57

29:                                               ; preds = %17
  %30 = load i32, i32* %8, align 4
  %31 = icmp ult i32 %30, 1024
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, 511
  %35 = load i32*, i32** %6, align 8
  store i32 %34, i32* %35, align 4
  br label %56

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  %38 = icmp ult i32 %37, 2048
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = lshr i32 %40, 1
  %42 = and i32 %41, 511
  %43 = add i32 %42, 512
  %44 = load i32*, i32** %6, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, -2
  store i32 %46, i32* %8, align 4
  br label %55

47:                                               ; preds = %36
  %48 = load i32, i32* %8, align 4
  %49 = lshr i32 %48, 2
  %50 = and i32 %49, 511
  %51 = add i32 %50, 1024
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, -4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %47, %39
  br label %56

56:                                               ; preds = %55, %32
  br label %57

57:                                               ; preds = %56, %25
  %58 = load i32*, i32** %7, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  %62 = add i32 %61, 1
  %63 = udiv i32 28224000, %62
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %60, %57
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %14
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
