; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_incbcd.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_incbcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8, i64)* @incbcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @incbcd(i32* %0, i32 %1, i8 zeroext %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i64 %3, i64* %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  store i64 0, i64* %14, align 8
  %17 = load i8, i8* %8, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp sgt i32 %18, 9
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = add i32 %23, %21
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %106

26:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %61, %26
  %28 = load i32, i32* %11, align 4
  %29 = zext i32 %28 to i64
  %30 = load i64, i64* %9, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %64

32:                                               ; preds = %27
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %11, align 4
  %36 = shl i32 %35, 2
  %37 = lshr i32 %34, %36
  %38 = and i32 %37, 15
  %39 = zext i32 %38 to i64
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %13, align 8
  %41 = icmp ugt i64 %40, 9
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %45

43:                                               ; preds = %32
  %44 = load i64, i64* %13, align 8
  br label %45

45:                                               ; preds = %43, %42
  %46 = phi i64 [ 9, %42 ], [ %44, %43 ]
  store i64 %46, i64* %13, align 8
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %54, %45
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i64, i64* %13, align 8
  %53 = mul i64 %52, 10
  store i64 %53, i64* %13, align 8
  br label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %12, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %47

57:                                               ; preds = %47
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* %14, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %14, align 8
  br label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %11, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %27

64:                                               ; preds = %27
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %14, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %14, align 8
  %69 = load i32*, i32** %6, align 8
  store i32 0, i32* %69, align 4
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %101, %64
  %71 = load i32, i32* %11, align 4
  %72 = zext i32 %71 to i64
  %73 = load i64, i64* %9, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %104

75:                                               ; preds = %70
  store i64 1, i64* %13, align 8
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %83, %75
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i64, i64* %13, align 8
  %82 = mul i64 %81, 10
  store i64 %82, i64* %13, align 8
  br label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %12, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %76

86:                                               ; preds = %76
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* %13, align 8
  %89 = udiv i64 %87, %88
  %90 = urem i64 %89, 10
  store i64 %90, i64* %13, align 8
  %91 = load i64, i64* %13, align 8
  %92 = load i32, i32* %11, align 4
  %93 = shl i32 %92, 2
  %94 = zext i32 %93 to i64
  %95 = shl i64 %91, %94
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %96, align 4
  %98 = zext i32 %97 to i64
  %99 = add i64 %98, %95
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %96, align 4
  br label %101

101:                                              ; preds = %86
  %102 = load i32, i32* %11, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %70

104:                                              ; preds = %70
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %20
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
