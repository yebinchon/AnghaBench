; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_find_bit.c__find_next_bit.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_find_bit.c__find_next_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_LONG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64*, i64, i64, i64)* @_find_next_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_find_next_bit(i64* %0, i64* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp uge i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i64, i64* %9, align 8
  store i64 %20, i64* %6, align 8
  br label %92

21:                                               ; preds = %5
  %22 = load i64*, i64** %7, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @BITS_PER_LONG, align 8
  %25 = udiv i64 %23, %24
  %26 = getelementptr inbounds i64, i64* %22, i64 %25
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %12, align 8
  %28 = load i64*, i64** %8, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load i64*, i64** %8, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @BITS_PER_LONG, align 8
  %34 = udiv i64 %32, %33
  %35 = getelementptr inbounds i64, i64* %31, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %12, align 8
  %38 = and i64 %37, %36
  store i64 %38, i64* %12, align 8
  br label %39

39:                                               ; preds = %30, %21
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = xor i64 %41, %40
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i64 @BITMAP_FIRST_WORD_MASK(i64 %43)
  %45 = load i64, i64* %12, align 8
  %46 = and i64 %45, %44
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @BITS_PER_LONG, align 8
  %49 = call i64 @round_down(i64 %47, i64 %48)
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %81, %39
  %51 = load i64, i64* %12, align 8
  %52 = icmp ne i64 %51, 0
  %53 = xor i1 %52, true
  br i1 %53, label %54, label %85

54:                                               ; preds = %50
  %55 = load i64, i64* @BITS_PER_LONG, align 8
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp uge i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i64, i64* %9, align 8
  store i64 %62, i64* %6, align 8
  br label %92

63:                                               ; preds = %54
  %64 = load i64*, i64** %7, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @BITS_PER_LONG, align 8
  %67 = udiv i64 %65, %66
  %68 = getelementptr inbounds i64, i64* %64, i64 %67
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %12, align 8
  %70 = load i64*, i64** %8, align 8
  %71 = icmp ne i64* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %63
  %73 = load i64*, i64** %8, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* @BITS_PER_LONG, align 8
  %76 = udiv i64 %74, %75
  %77 = getelementptr inbounds i64, i64* %73, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %12, align 8
  %80 = and i64 %79, %78
  store i64 %80, i64* %12, align 8
  br label %81

81:                                               ; preds = %72, %63
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %12, align 8
  %84 = xor i64 %83, %82
  store i64 %84, i64* %12, align 8
  br label %50

85:                                               ; preds = %50
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %12, align 8
  %88 = call i64 @__ffs(i64 %87)
  %89 = add i64 %86, %88
  %90 = load i64, i64* %9, align 8
  %91 = call i64 @min(i64 %89, i64 %90)
  store i64 %91, i64* %6, align 8
  br label %92

92:                                               ; preds = %85, %61, %19
  %93 = load i64, i64* %6, align 8
  ret i64 %93
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @BITMAP_FIRST_WORD_MASK(i64) #1

declare dso_local i64 @round_down(i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @__ffs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
