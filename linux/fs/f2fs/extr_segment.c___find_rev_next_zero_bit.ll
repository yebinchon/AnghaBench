; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___find_rev_next_zero_bit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___find_rev_next_zero_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64, i64)* @__find_rev_next_zero_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__find_rev_next_zero_bit(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @BIT_WORD(i64 %12)
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %11, i64 %14
  store i64* %15, i64** %8, align 8
  %16 = load i64, i64* %6, align 8
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  store i64 %21, i64* %4, align 8
  br label %91

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* @BITS_PER_LONG, align 4
  %25 = sub nsw i32 %24, 1
  %26 = xor i32 %25, -1
  %27 = sext i32 %26 to i64
  %28 = and i64 %23, %27
  %29 = load i64, i64* %6, align 8
  %30 = sub i64 %29, %28
  store i64 %30, i64* %6, align 8
  %31 = load i32, i32* @BITS_PER_LONG, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %7, align 8
  %34 = urem i64 %33, %32
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %22, %75
  %36 = load i64*, i64** %8, align 8
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %69

40:                                               ; preds = %35
  %41 = load i64*, i64** %8, align 8
  %42 = bitcast i64* %41 to i8*
  %43 = call i64 @__reverse_ulong(i8* %42)
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load i32, i32* @BITS_PER_LONG, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %7, align 8
  %50 = sub i64 %48, %49
  %51 = shl i64 -1, %50
  %52 = load i64, i64* %10, align 8
  %53 = or i64 %52, %51
  store i64 %53, i64* %10, align 8
  br label %54

54:                                               ; preds = %46, %40
  %55 = load i64, i64* %6, align 8
  %56 = load i32, i32* @BITS_PER_LONG, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ult i64 %55, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i64, i64* %6, align 8
  %61 = lshr i64 -1, %60
  %62 = load i64, i64* %10, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %10, align 8
  br label %64

64:                                               ; preds = %59, %54
  %65 = load i64, i64* %10, align 8
  %66 = icmp ne i64 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %84

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %68, %39
  %70 = load i64, i64* %6, align 8
  %71 = load i32, i32* @BITS_PER_LONG, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp ule i64 %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %82

75:                                               ; preds = %69
  %76 = load i32, i32* @BITS_PER_LONG, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %6, align 8
  %79 = sub i64 %78, %77
  store i64 %79, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %80 = load i64*, i64** %8, align 8
  %81 = getelementptr inbounds i64, i64* %80, i32 1
  store i64* %81, i64** %8, align 8
  br label %35

82:                                               ; preds = %74
  %83 = load i64, i64* %9, align 8
  store i64 %83, i64* %4, align 8
  br label %91

84:                                               ; preds = %67
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %6, align 8
  %87 = sub i64 %85, %86
  %88 = load i64, i64* %10, align 8
  %89 = call i64 @__reverse_ffz(i64 %88)
  %90 = add i64 %87, %89
  store i64 %90, i64* %4, align 8
  br label %91

91:                                               ; preds = %84, %82, %20
  %92 = load i64, i64* %4, align 8
  ret i64 %92
}

declare dso_local i32 @BIT_WORD(i64) #1

declare dso_local i64 @__reverse_ulong(i8*) #1

declare dso_local i64 @__reverse_ffz(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
