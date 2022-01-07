; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bitmap.c___bitmap_clear.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bitmap.c___bitmap_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_LONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__bitmap_clear(i64* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i64*, i64** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @BIT_WORD(i32 %12)
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %11, i64 %14
  store i64* %15, i64** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @BITS_PER_LONG, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @BITS_PER_LONG, align 4
  %22 = urem i32 %20, %21
  %23 = sub i32 %19, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @BITMAP_FIRST_WORD_MASK(i32 %24)
  store i64 %25, i64* %10, align 8
  br label %26

26:                                               ; preds = %31, %3
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = sub nsw i32 %27, %28
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load i64, i64* %10, align 8
  %33 = xor i64 %32, -1
  %34 = load i64*, i64** %7, align 8
  %35 = load i64, i64* %34, align 8
  %36 = and i64 %35, %33
  store i64 %36, i64* %34, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* @BITS_PER_LONG, align 4
  store i32 %40, i32* %9, align 4
  store i64 -1, i64* %10, align 8
  %41 = load i64*, i64** %7, align 8
  %42 = getelementptr inbounds i64, i64* %41, i32 1
  store i64* %42, i64** %7, align 8
  br label %26

43:                                               ; preds = %26
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @BITMAP_LAST_WORD_MASK(i32 %47)
  %49 = load i64, i64* %10, align 8
  %50 = and i64 %49, %48
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = xor i64 %51, -1
  %53 = load i64*, i64** %7, align 8
  %54 = load i64, i64* %53, align 8
  %55 = and i64 %54, %52
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %46, %43
  ret void
}

declare dso_local i32 @BIT_WORD(i32) #1

declare dso_local i64 @BITMAP_FIRST_WORD_MASK(i32) #1

declare dso_local i64 @BITMAP_LAST_WORD_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
