; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___find_rev_next_bit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___find_rev_next_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64, i64)* @__find_rev_next_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__find_rev_next_bit(i64* %0, i64 %1, i64 %2) #0 {
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
  br label %87

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

35:                                               ; preds = %22, %71
  %36 = load i64*, i64** %8, align 8
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %65

40:                                               ; preds = %35
  %41 = load i64*, i64** %8, align 8
  %42 = bitcast i64* %41 to i8*
  %43 = call i64 @__reverse_ulong(i8* %42)
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %7, align 8
  %45 = lshr i64 -1, %44
  %46 = load i64, i64* %10, align 8
  %47 = and i64 %46, %45
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i32, i32* @BITS_PER_LONG, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp ult i64 %48, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %40
  %53 = load i32, i32* @BITS_PER_LONG, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %6, align 8
  %56 = sub i64 %54, %55
  %57 = shl i64 -1, %56
  %58 = load i64, i64* %10, align 8
  %59 = and i64 %58, %57
  store i64 %59, i64* %10, align 8
  br label %60

60:                                               ; preds = %52, %40
  %61 = load i64, i64* %10, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %80

64:                                               ; preds = %60
  br label %65

65:                                               ; preds = %64, %39
  %66 = load i64, i64* %6, align 8
  %67 = load i32, i32* @BITS_PER_LONG, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp ule i64 %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %78

71:                                               ; preds = %65
  %72 = load i32, i32* @BITS_PER_LONG, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %6, align 8
  %75 = sub i64 %74, %73
  store i64 %75, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %76 = load i64*, i64** %8, align 8
  %77 = getelementptr inbounds i64, i64* %76, i32 1
  store i64* %77, i64** %8, align 8
  br label %35

78:                                               ; preds = %70
  %79 = load i64, i64* %9, align 8
  store i64 %79, i64* %4, align 8
  br label %87

80:                                               ; preds = %63
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %6, align 8
  %83 = sub i64 %81, %82
  %84 = load i64, i64* %10, align 8
  %85 = call i64 @__reverse_ffs(i64 %84)
  %86 = add i64 %83, %85
  store i64 %86, i64* %4, align 8
  br label %87

87:                                               ; preds = %80, %78, %20
  %88 = load i64, i64* %4, align 8
  ret i64 %88
}

declare dso_local i32 @BIT_WORD(i64) #1

declare dso_local i64 @__reverse_ulong(i8*) #1

declare dso_local i64 @__reverse_ffs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
