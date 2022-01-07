; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_tracex3_kern.c_log2l.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_tracex3_kern.c_log2l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @log2l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log2l(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp eq i64 %4, 0
  %6 = zext i1 %5 to i32
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %3, align 4
  %8 = load i64, i64* %2, align 8
  %9 = icmp uge i64 %8, 4294967296
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = add nsw i32 %11, 32
  store i32 %12, i32* %3, align 4
  %13 = load i64, i64* %2, align 8
  %14 = lshr i64 %13, 32
  store i64 %14, i64* %2, align 8
  br label %15

15:                                               ; preds = %10, %1
  %16 = load i64, i64* %2, align 8
  %17 = icmp uge i64 %16, 65536
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 16
  store i32 %20, i32* %3, align 4
  %21 = load i64, i64* %2, align 8
  %22 = lshr i64 %21, 16
  store i64 %22, i64* %2, align 8
  br label %23

23:                                               ; preds = %18, %15
  %24 = load i64, i64* %2, align 8
  %25 = icmp uge i64 %24, 256
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 8
  store i32 %28, i32* %3, align 4
  %29 = load i64, i64* %2, align 8
  %30 = lshr i64 %29, 8
  store i64 %30, i64* %2, align 8
  br label %31

31:                                               ; preds = %26, %23
  %32 = load i64, i64* %2, align 8
  %33 = icmp uge i64 %32, 16
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 4
  store i32 %36, i32* %3, align 4
  %37 = load i64, i64* %2, align 8
  %38 = lshr i64 %37, 4
  store i64 %38, i64* %2, align 8
  br label %39

39:                                               ; preds = %34, %31
  %40 = load i64, i64* %2, align 8
  %41 = icmp uge i64 %40, 4
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 2
  store i32 %44, i32* %3, align 4
  %45 = load i64, i64* %2, align 8
  %46 = lshr i64 %45, 2
  store i64 %46, i64* %2, align 8
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i64, i64* %2, align 8
  %49 = icmp uge i64 %48, 2
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  %53 = load i64, i64* %2, align 8
  %54 = lshr i64 %53, 1
  store i64 %54, i64* %2, align 8
  br label %55

55:                                               ; preds = %50, %47
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
