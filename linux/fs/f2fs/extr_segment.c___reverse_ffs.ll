; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___reverse_ffs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___reverse_ffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @__reverse_ffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__reverse_ffs(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i64, i64* %2, align 8
  %5 = and i64 %4, 4294901760
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %8, 16
  store i32 %9, i32* %3, align 4
  br label %13

10:                                               ; preds = %1
  %11 = load i64, i64* %2, align 8
  %12 = lshr i64 %11, 16
  store i64 %12, i64* %2, align 8
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i64, i64* %2, align 8
  %15 = and i64 %14, 65280
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 8
  store i32 %19, i32* %3, align 4
  br label %23

20:                                               ; preds = %13
  %21 = load i64, i64* %2, align 8
  %22 = lshr i64 %21, 8
  store i64 %22, i64* %2, align 8
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i64, i64* %2, align 8
  %25 = and i64 %24, 240
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 4
  store i32 %29, i32* %3, align 4
  br label %33

30:                                               ; preds = %23
  %31 = load i64, i64* %2, align 8
  %32 = lshr i64 %31, 4
  store i64 %32, i64* %2, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i64, i64* %2, align 8
  %35 = and i64 %34, 12
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 2
  store i32 %39, i32* %3, align 4
  br label %43

40:                                               ; preds = %33
  %41 = load i64, i64* %2, align 8
  %42 = lshr i64 %41, 2
  store i64 %42, i64* %2, align 8
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i64, i64* %2, align 8
  %45 = and i64 %44, 2
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  ret i64 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
