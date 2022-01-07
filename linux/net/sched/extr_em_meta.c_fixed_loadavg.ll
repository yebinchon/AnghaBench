; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_em_meta.c_fixed_loadavg.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_em_meta.c_fixed_loadavg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIXED_1 = common dso_local global i32 0, align 4
@FSHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @fixed_loadavg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fixed_loadavg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @FIXED_1, align 4
  %7 = sdiv i32 %6, 200
  %8 = add nsw i32 %5, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @FIXED_1, align 4
  %11 = sub nsw i32 %10, 1
  %12 = and i32 %9, %11
  %13 = mul nsw i32 %12, 100
  %14 = load i32, i32* @FSHIFT, align 4
  %15 = ashr i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @FSHIFT, align 4
  %18 = ashr i32 %16, %17
  %19 = mul nsw i32 %18, 100
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  ret i64 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
