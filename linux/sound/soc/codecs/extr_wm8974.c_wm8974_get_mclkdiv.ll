; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8974.c_wm8974_get_mclkdiv.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8974.c_wm8974_get_mclkdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WM8974_MCLKDIV_1 = common dso_local global i32 0, align 4
@WM8974_MCLKDIV_1_5 = common dso_local global i32 0, align 4
@WM8974_MCLKDIV_2 = common dso_local global i32 0, align 4
@WM8974_MCLKDIV_3 = common dso_local global i32 0, align 4
@WM8974_MCLKDIV_4 = common dso_local global i32 0, align 4
@WM8974_MCLKDIV_6 = common dso_local global i32 0, align 4
@WM8974_MCLKDIV_8 = common dso_local global i32 0, align 4
@WM8974_MCLKDIV_12 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @wm8974_get_mclkdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8974_get_mclkdiv(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = mul i32 2, %8
  %10 = load i32, i32* %5, align 4
  %11 = udiv i32 %9, %10
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ule i32 %12, 2
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @WM8974_MCLKDIV_1, align 4
  %16 = load i32*, i32** %6, align 8
  store i32 %15, i32* %16, align 4
  store i32 2, i32* %7, align 4
  br label %62

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @WM8974_MCLKDIV_1_5, align 4
  %22 = load i32*, i32** %6, align 8
  store i32 %21, i32* %22, align 4
  br label %61

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @WM8974_MCLKDIV_2, align 4
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  br label %60

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = icmp ule i32 %30, 6
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @WM8974_MCLKDIV_3, align 4
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  store i32 6, i32* %7, align 4
  br label %59

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  %37 = icmp ule i32 %36, 8
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @WM8974_MCLKDIV_4, align 4
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  store i32 8, i32* %7, align 4
  br label %58

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = icmp ule i32 %42, 12
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @WM8974_MCLKDIV_6, align 4
  %46 = load i32*, i32** %6, align 8
  store i32 %45, i32* %46, align 4
  store i32 12, i32* %7, align 4
  br label %57

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = icmp ule i32 %48, 16
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @WM8974_MCLKDIV_8, align 4
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  store i32 16, i32* %7, align 4
  br label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @WM8974_MCLKDIV_12, align 4
  %55 = load i32*, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  store i32 24, i32* %7, align 4
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %44
  br label %58

58:                                               ; preds = %57, %38
  br label %59

59:                                               ; preds = %58, %32
  br label %60

60:                                               ; preds = %59, %26
  br label %61

61:                                               ; preds = %60, %20
  br label %62

62:                                               ; preds = %61, %14
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %7, align 4
  %65 = mul i32 %63, %64
  %66 = udiv i32 %65, 2
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
