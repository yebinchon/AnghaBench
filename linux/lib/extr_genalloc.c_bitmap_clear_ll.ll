; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_genalloc.c_bitmap_clear_ll.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_genalloc.c_bitmap_clear_ll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i32)* @bitmap_clear_ll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_clear_ll(i64* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i64*, i64** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @BIT_WORD(i32 %13)
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %12, i64 %15
  store i64* %16, i64** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @BITS_PER_LONG, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @BITS_PER_LONG, align 4
  %23 = srem i32 %21, %22
  %24 = sub nsw i32 %20, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @BITMAP_FIRST_WORD_MASK(i32 %25)
  store i64 %26, i64* %11, align 8
  br label %27

27:                                               ; preds = %39, %3
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %10, align 4
  %30 = sub nsw i32 %28, %29
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load i64*, i64** %8, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i64 @clear_bits_ll(i64* %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %4, align 4
  br label %62

39:                                               ; preds = %32
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* @BITS_PER_LONG, align 4
  store i32 %43, i32* %10, align 4
  store i64 -1, i64* %11, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = getelementptr inbounds i64, i64* %44, i32 1
  store i64* %45, i64** %8, align 8
  br label %27

46:                                               ; preds = %27
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @BITMAP_LAST_WORD_MASK(i32 %50)
  %52 = load i64, i64* %11, align 8
  %53 = and i64 %52, %51
  store i64 %53, i64* %11, align 8
  %54 = load i64*, i64** %8, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call i64 @clear_bits_ll(i64* %54, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %4, align 4
  br label %62

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %46
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %58, %37
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @BIT_WORD(i32) #1

declare dso_local i64 @BITMAP_FIRST_WORD_MASK(i32) #1

declare dso_local i64 @clear_bits_ll(i64*, i64) #1

declare dso_local i64 @BITMAP_LAST_WORD_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
