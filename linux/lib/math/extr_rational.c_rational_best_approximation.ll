; ModuleID = '/home/carl/AnghaBench/linux/lib/math/extr_rational.c_rational_best_approximation.c'
source_filename = "/home/carl/AnghaBench/linux/lib/math/extr_rational.c_rational_best_approximation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rational_best_approximation(i64 %0, i64 %1, i64 %2, i64 %3, i64* %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %21 = load i64, i64* %7, align 8
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %8, align 8
  store i64 %22, i64* %14, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %15, align 8
  store i64 1, i64* %16, align 8
  store i64 1, i64* %17, align 8
  br label %23

23:                                               ; preds = %38, %6
  %24 = load i64, i64* %17, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %18, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %23
  %32 = load i64, i64* %15, align 8
  store i64 %32, i64* %17, align 8
  %33 = load i64, i64* %16, align 8
  store i64 %33, i64* %18, align 8
  br label %61

34:                                               ; preds = %27
  %35 = load i64, i64* %14, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %61

38:                                               ; preds = %34
  %39 = load i64, i64* %14, align 8
  store i64 %39, i64* %19, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* %14, align 8
  %42 = udiv i64 %40, %41
  store i64 %42, i64* %20, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* %14, align 8
  %45 = urem i64 %43, %44
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %19, align 8
  store i64 %46, i64* %13, align 8
  %47 = load i64, i64* %15, align 8
  %48 = load i64, i64* %20, align 8
  %49 = load i64, i64* %17, align 8
  %50 = mul i64 %48, %49
  %51 = add i64 %47, %50
  store i64 %51, i64* %19, align 8
  %52 = load i64, i64* %17, align 8
  store i64 %52, i64* %15, align 8
  %53 = load i64, i64* %19, align 8
  store i64 %53, i64* %17, align 8
  %54 = load i64, i64* %16, align 8
  %55 = load i64, i64* %20, align 8
  %56 = load i64, i64* %18, align 8
  %57 = mul i64 %55, %56
  %58 = add i64 %54, %57
  store i64 %58, i64* %19, align 8
  %59 = load i64, i64* %18, align 8
  store i64 %59, i64* %16, align 8
  %60 = load i64, i64* %19, align 8
  store i64 %60, i64* %18, align 8
  br label %23

61:                                               ; preds = %37, %31
  %62 = load i64, i64* %17, align 8
  %63 = load i64*, i64** %11, align 8
  store i64 %62, i64* %63, align 8
  %64 = load i64, i64* %18, align 8
  %65 = load i64*, i64** %12, align 8
  store i64 %64, i64* %65, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
