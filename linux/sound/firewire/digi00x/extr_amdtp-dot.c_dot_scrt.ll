; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_amdtp-dot.c_dot_scrt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_amdtp-dot.c_dot_scrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dot_scrt.len = internal constant [16 x i32] [i32 0, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 14, i32 12, i32 10, i32 8, i32 6, i32 4, i32 2, i32 0], align 16
@dot_scrt.nib = internal constant [15 x i32] [i32 8, i32 7, i32 9, i32 6, i32 10, i32 5, i32 11, i32 4, i32 12, i32 3, i32 13, i32 2, i32 14, i32 1, i32 15], align 16
@dot_scrt.hir = internal constant [15 x i32] [i32 0, i32 6, i32 15, i32 8, i32 7, i32 5, i32 3, i32 4, i32 12, i32 13, i32 14, i32 1, i32 2, i32 11, i32 10], align 16
@dot_scrt.hio = internal constant [16 x i32] [i32 0, i32 11, i32 12, i32 6, i32 7, i32 5, i32 1, i32 4, i32 3, i32 0, i32 14, i32 13, i32 8, i32 9, i32 10, i32 2], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @dot_scrt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dot_scrt(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 15
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 4
  %13 = and i32 %12, 15
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 9
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %28

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [16 x i32], [16 x i32]* @dot_scrt.hio, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add i32 %21, %22
  %24 = urem i32 %23, 15
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [15 x i32], [15 x i32]* @dot_scrt.hir, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  br label %28

28:                                               ; preds = %17, %16
  %29 = phi i32 [ 9, %16 ], [ %27, %17 ]
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* @dot_scrt.len, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %51

37:                                               ; preds = %28
  %38 = load i32, i32* %5, align 4
  %39 = add i32 14, %38
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* @dot_scrt.len, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = sub i32 %39, %43
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [15 x i32], [15 x i32]* @dot_scrt.nib, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = shl i32 %48, 4
  %50 = or i32 %47, %49
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %37, %36
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
