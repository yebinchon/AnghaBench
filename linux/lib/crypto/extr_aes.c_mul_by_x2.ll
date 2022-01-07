; ModuleID = '/home/carl/AnghaBench/linux/lib/crypto/extr_aes.c_mul_by_x2.c'
source_filename = "/home/carl/AnghaBench/linux/lib/crypto/extr_aes.c_mul_by_x2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mul_by_x2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mul_by_x2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = and i32 %6, 1061109567
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = and i32 %8, -2139062144
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, 1077952576
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = shl i32 %12, 2
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 7
  %16 = mul nsw i32 %15, 54
  %17 = xor i32 %13, %16
  %18 = load i32, i32* %5, align 4
  %19 = ashr i32 %18, 6
  %20 = mul nsw i32 %19, 27
  %21 = xor i32 %17, %20
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
