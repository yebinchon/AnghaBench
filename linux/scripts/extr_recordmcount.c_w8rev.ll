; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_recordmcount.c_w8rev.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_recordmcount.c_w8rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @w8rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w8rev(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = ashr i32 %3, 0
  %5 = and i32 255, %4
  %6 = shl i32 %5, 56
  %7 = load i32, i32* %2, align 4
  %8 = ashr i32 %7, 8
  %9 = and i32 255, %8
  %10 = shl i32 %9, 48
  %11 = or i32 %6, %10
  %12 = load i32, i32* %2, align 4
  %13 = ashr i32 %12, 16
  %14 = and i32 255, %13
  %15 = shl i32 %14, 40
  %16 = or i32 %11, %15
  %17 = load i32, i32* %2, align 4
  %18 = ashr i32 %17, 24
  %19 = and i32 255, %18
  %20 = shl i32 %19, 32
  %21 = or i32 %16, %20
  %22 = load i32, i32* %2, align 4
  %23 = ashr i32 %22, 32
  %24 = and i32 255, %23
  %25 = shl i32 %24, 24
  %26 = or i32 %21, %25
  %27 = load i32, i32* %2, align 4
  %28 = ashr i32 %27, 40
  %29 = and i32 255, %28
  %30 = shl i32 %29, 16
  %31 = or i32 %26, %30
  %32 = load i32, i32* %2, align 4
  %33 = ashr i32 %32, 48
  %34 = and i32 255, %33
  %35 = shl i32 %34, 8
  %36 = or i32 %31, %35
  %37 = load i32, i32* %2, align 4
  %38 = ashr i32 %37, 56
  %39 = and i32 255, %38
  %40 = shl i32 %39, 0
  %41 = or i32 %36, %40
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
