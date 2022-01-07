; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mix22.c_hr222_pll_freq_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mix22.c_hr222_pll_freq_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @hr222_pll_freq_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hr222_pll_freq_register(i32 %0, i32* %1, i32* %2) #0 {
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
  %13 = icmp ugt i32 %12, 219000
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %74

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = udiv i32 56448000, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = sub i32 %20, 1
  %22 = udiv i32 %21, 2
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ult i32 %23, 256
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load i32, i32* %8, align 4
  %27 = add i32 %26, 3072
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  br label %65

29:                                               ; preds = %17
  %30 = load i32, i32* %8, align 4
  %31 = icmp ult i32 %30, 512
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = add i32 %33, 2048
  %35 = load i32*, i32** %6, align 8
  store i32 %34, i32* %35, align 4
  br label %64

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  %38 = icmp ult i32 %37, 1024
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 511
  %42 = load i32*, i32** %6, align 8
  store i32 %41, i32* %42, align 4
  br label %63

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = icmp ult i32 %44, 2048
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = lshr i32 %47, 1
  %49 = and i32 %48, 511
  %50 = add i32 %49, 512
  %51 = load i32*, i32** %6, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, -2
  store i32 %53, i32* %8, align 4
  br label %62

54:                                               ; preds = %43
  %55 = load i32, i32* %8, align 4
  %56 = lshr i32 %55, 2
  %57 = and i32 %56, 511
  %58 = add i32 %57, 1024
  %59 = load i32*, i32** %6, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, -4
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %54, %46
  br label %63

63:                                               ; preds = %62, %39
  br label %64

64:                                               ; preds = %63, %32
  br label %65

65:                                               ; preds = %64, %25
  %66 = load i32*, i32** %7, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  %70 = add i32 %69, 1
  %71 = udiv i32 28224000, %70
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %68, %65
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %14
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
