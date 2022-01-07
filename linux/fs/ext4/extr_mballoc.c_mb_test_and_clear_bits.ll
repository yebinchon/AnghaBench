; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_mb_test_and_clear_bits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_mb_test_and_clear_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @mb_test_and_clear_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb_test_and_clear_bits(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %57, %43, %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %60

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 31
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 %21, %22
  %24 = icmp sge i32 %23, 32
  br i1 %24, label %25, label %47

25:                                               ; preds = %20
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = ashr i32 %27, 3
  %29 = sext i32 %28 to i64
  %30 = getelementptr i8, i8* %26, i64 %29
  %31 = bitcast i8* %30 to i64*
  store i64* %31, i64** %7, align 8
  %32 = load i64*, i64** %7, align 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, -1
  br i1 %34, label %35, label %43

35:                                               ; preds = %25
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = load i64*, i64** %7, align 8
  %41 = call i32 @mb_find_next_zero_bit(i64* %40, i32 32, i32 0)
  %42 = add nsw i32 %39, %41
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %38, %35, %25
  %44 = load i64*, i64** %7, align 8
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 32
  store i32 %46, i32* %5, align 4
  br label %12

47:                                               ; preds = %20, %16
  %48 = load i32, i32* %5, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @mb_test_and_clear_bit(i32 %48, i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %55, %52, %47
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %12

60:                                               ; preds = %12
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i32 @mb_find_next_zero_bit(i64*, i32, i32) #1

declare dso_local i32 @mb_test_and_clear_bit(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
