; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bitmap.c___bitmap_subset.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bitmap.c___bitmap_subset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_LONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__bitmap_subset(i64* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @BITS_PER_LONG, align 4
  %12 = udiv i32 %10, %11
  store i32 %12, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %33, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = load i64*, i64** %5, align 8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = xor i64 %27, -1
  %29 = and i64 %22, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %61

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %8, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %13

36:                                               ; preds = %13
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @BITS_PER_LONG, align 4
  %39 = urem i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %36
  %42 = load i64*, i64** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = xor i64 %51, -1
  %53 = and i64 %46, %52
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @BITMAP_LAST_WORD_MASK(i32 %54)
  %56 = and i64 %53, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %61

59:                                               ; preds = %41
  br label %60

60:                                               ; preds = %59, %36
  store i32 1, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %58, %31
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @BITMAP_LAST_WORD_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
