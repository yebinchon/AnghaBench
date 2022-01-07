; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bitmap.c_bitmap_find_next_zero_area_off.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bitmap.c_bitmap_find_next_zero_area_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bitmap_find_next_zero_area_off(i64* %0, i64 %1, i64 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64* %0, i64** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  br label %17

17:                                               ; preds = %46, %6
  %18 = load i64*, i64** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i64 @find_next_zero_bit(i64* %18, i64 %19, i64 %20)
  store i64 %21, i64* %14, align 8
  %22 = load i64, i64* %14, align 8
  %23 = load i64, i64* %13, align 8
  %24 = add i64 %22, %23
  %25 = load i64, i64* %12, align 8
  %26 = call i64 @__ALIGN_MASK(i64 %24, i64 %25)
  %27 = load i64, i64* %13, align 8
  %28 = sub i64 %26, %27
  store i64 %28, i64* %14, align 8
  %29 = load i64, i64* %14, align 8
  %30 = load i32, i32* %11, align 4
  %31 = zext i32 %30 to i64
  %32 = add i64 %29, %31
  store i64 %32, i64* %15, align 8
  %33 = load i64, i64* %15, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %17
  %37 = load i64, i64* %15, align 8
  store i64 %37, i64* %7, align 8
  br label %51

38:                                               ; preds = %17
  %39 = load i64*, i64** %8, align 8
  %40 = load i64, i64* %15, align 8
  %41 = load i64, i64* %14, align 8
  %42 = call i64 @find_next_bit(i64* %39, i64 %40, i64 %41)
  store i64 %42, i64* %16, align 8
  %43 = load i64, i64* %16, align 8
  %44 = load i64, i64* %15, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i64, i64* %16, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %10, align 8
  br label %17

49:                                               ; preds = %38
  %50 = load i64, i64* %14, align 8
  store i64 %50, i64* %7, align 8
  br label %51

51:                                               ; preds = %49, %36
  %52 = load i64, i64* %7, align 8
  ret i64 %52
}

declare dso_local i64 @find_next_zero_bit(i64*, i64, i64) #1

declare dso_local i64 @__ALIGN_MASK(i64, i64) #1

declare dso_local i64 @find_next_bit(i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
