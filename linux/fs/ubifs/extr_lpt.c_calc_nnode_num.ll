; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_calc_nnode_num.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_calc_nnode_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@UBIFS_LPT_FANOUT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @calc_nnode_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_nnode_num(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %7

7:                                                ; preds = %11, %2
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %3, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %14 = sub nsw i32 %13, 1
  %15 = and i32 %12, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @UBIFS_LPT_FANOUT_SHIFT, align 4
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @UBIFS_LPT_FANOUT_SHIFT, align 4
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %7

25:                                               ; preds = %7
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
