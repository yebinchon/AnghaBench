; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_mulaw.c_ulaw2linear.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_mulaw.c_ulaw2linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QUANT_MASK = common dso_local global i8 0, align 1
@BIAS = common dso_local global i8 0, align 1
@SEG_MASK = common dso_local global i32 0, align 4
@SEG_SHIFT = common dso_local global i32 0, align 4
@SIGN_BIT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @ulaw2linear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ulaw2linear(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = zext i8 %4 to i32
  %6 = xor i32 %5, -1
  %7 = trunc i32 %6 to i8
  store i8 %7, i8* %2, align 1
  %8 = load i8, i8* %2, align 1
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* @QUANT_MASK, align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 %9, %11
  %13 = shl i32 %12, 3
  %14 = load i8, i8* @BIAS, align 1
  %15 = zext i8 %14 to i32
  %16 = add nsw i32 %13, %15
  store i32 %16, i32* %3, align 4
  %17 = load i8, i8* %2, align 1
  %18 = zext i8 %17 to i32
  %19 = load i32, i32* @SEG_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @SEG_SHIFT, align 4
  %22 = lshr i32 %20, %21
  %23 = load i32, i32* %3, align 4
  %24 = shl i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load i8, i8* %2, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @SIGN_BIT, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load i8, i8* @BIAS, align 1
  %33 = zext i8 %32 to i32
  %34 = load i32, i32* %3, align 4
  %35 = sub nsw i32 %33, %34
  br label %41

36:                                               ; preds = %1
  %37 = load i32, i32* %3, align 4
  %38 = load i8, i8* @BIAS, align 1
  %39 = zext i8 %38 to i32
  %40 = sub nsw i32 %37, %39
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i32 [ %35, %31 ], [ %40, %36 ]
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
