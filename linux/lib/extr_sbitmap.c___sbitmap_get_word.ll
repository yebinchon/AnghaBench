; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_sbitmap.c___sbitmap_get_word.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_sbitmap.c___sbitmap_get_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i32, i32)* @__sbitmap_get_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sbitmap_get_word(i64* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  store i32 %12, i32* %10, align 4
  br label %13

13:                                               ; preds = %4, %34, %51
  %14 = load i64*, i64** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @find_next_zero_bit(i64* %14, i64 %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %7, align 8
  %21 = icmp uge i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %13
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %13

35:                                               ; preds = %31, %28, %25
  store i32 -1, i32* %5, align 4
  br label %54

36:                                               ; preds = %13
  %37 = load i32, i32* %11, align 4
  %38 = load i64*, i64** %6, align 8
  %39 = call i32 @test_and_set_bit_lock(i32 %37, i64* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %52

42:                                               ; preds = %36
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = load i64, i64* %7, align 8
  %48 = sub i64 %47, 1
  %49 = icmp uge i64 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %50, %42
  br label %13

52:                                               ; preds = %41
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %52, %35
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @find_next_zero_bit(i64*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_and_set_bit_lock(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
