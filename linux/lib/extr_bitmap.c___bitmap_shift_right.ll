; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bitmap.c___bitmap_shift_right.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bitmap.c___bitmap_shift_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_LONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__bitmap_shift_right(i64* %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @BITS_TO_LONGS(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @BITS_PER_LONG, align 4
  %20 = udiv i32 %18, %19
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @BITS_PER_LONG, align 4
  %23 = urem i32 %21, %22
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @BITMAP_LAST_WORD_MASK(i32 %24)
  store i64 %25, i64* %13, align 8
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %100, %4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %9, align 4
  %29 = add i32 %27, %28
  %30 = load i32, i32* %10, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %103

32:                                               ; preds = %26
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add i32 %36, %37
  %39 = add i32 %38, 1
  %40 = load i32, i32* %10, align 4
  %41 = icmp uge i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35, %32
  store i64 0, i64* %14, align 8
  br label %70

43:                                               ; preds = %35
  %44 = load i64*, i64** %6, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %9, align 4
  %47 = add i32 %45, %46
  %48 = add i32 %47, 1
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %44, i64 %49
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %14, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %9, align 4
  %54 = add i32 %52, %53
  %55 = add i32 %54, 1
  %56 = load i32, i32* %10, align 4
  %57 = sub i32 %56, 1
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %43
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* %14, align 8
  %62 = and i64 %61, %60
  store i64 %62, i64* %14, align 8
  br label %63

63:                                               ; preds = %59, %43
  %64 = load i32, i32* @BITS_PER_LONG, align 4
  %65 = load i32, i32* %12, align 4
  %66 = sub i32 %64, %65
  %67 = load i64, i64* %14, align 8
  %68 = zext i32 %66 to i64
  %69 = shl i64 %67, %68
  store i64 %69, i64* %14, align 8
  br label %70

70:                                               ; preds = %63, %42
  %71 = load i64*, i64** %6, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %9, align 4
  %74 = add i32 %72, %73
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %71, i64 %75
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %15, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %9, align 4
  %80 = add i32 %78, %79
  %81 = load i32, i32* %10, align 4
  %82 = sub i32 %81, 1
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %70
  %85 = load i64, i64* %13, align 8
  %86 = load i64, i64* %15, align 8
  %87 = and i64 %86, %85
  store i64 %87, i64* %15, align 8
  br label %88

88:                                               ; preds = %84, %70
  %89 = load i32, i32* %12, align 4
  %90 = load i64, i64* %15, align 8
  %91 = zext i32 %89 to i64
  %92 = lshr i64 %90, %91
  store i64 %92, i64* %15, align 8
  %93 = load i64, i64* %15, align 8
  %94 = load i64, i64* %14, align 8
  %95 = or i64 %93, %94
  %96 = load i64*, i64** %5, align 8
  %97 = load i32, i32* %9, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  store i64 %95, i64* %99, align 8
  br label %100

100:                                              ; preds = %88
  %101 = load i32, i32* %9, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %26

103:                                              ; preds = %26
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %103
  %107 = load i64*, i64** %5, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %11, align 4
  %110 = sub i32 %108, %109
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %107, i64 %111
  %113 = load i32, i32* %11, align 4
  %114 = zext i32 %113 to i64
  %115 = mul i64 %114, 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 @memset(i64* %112, i32 0, i32 %116)
  br label %118

118:                                              ; preds = %106, %103
  ret void
}

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i64 @BITMAP_LAST_WORD_MASK(i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
