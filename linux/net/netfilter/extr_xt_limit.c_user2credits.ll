; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_limit.c_user2credits.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_limit.c_user2credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HZ = common dso_local global i32 0, align 4
@CREDITS_PER_JIFFY = common dso_local global i32 0, align 4
@XT_LIMIT_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @user2credits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @user2credits(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @HZ, align 4
  %6 = load i32, i32* @CREDITS_PER_JIFFY, align 4
  %7 = mul nsw i32 %5, %6
  %8 = udiv i32 -1, %7
  %9 = icmp ugt i32 %4, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @XT_LIMIT_SCALE, align 4
  %13 = sdiv i32 %11, %12
  %14 = load i32, i32* @HZ, align 4
  %15 = mul nsw i32 %13, %14
  %16 = load i32, i32* @CREDITS_PER_JIFFY, align 4
  %17 = mul nsw i32 %15, %16
  store i32 %17, i32* %2, align 4
  br label %26

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @HZ, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* @CREDITS_PER_JIFFY, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* @XT_LIMIT_SCALE, align 4
  %25 = sdiv i32 %23, %24
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %18, %10
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
