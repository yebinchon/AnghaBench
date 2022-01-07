; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_illinois.c_beta.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_illinois.c_beta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BETA_MIN = common dso_local global i32 0, align 4
@BETA_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @beta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beta(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = sdiv i32 %8, 10
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @BETA_MIN, align 4
  store i32 %14, i32* %3, align 4
  br label %46

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = mul nsw i32 8, %16
  %18 = sdiv i32 %17, 10
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %15
  %27 = load i32, i32* @BETA_MAX, align 4
  store i32 %27, i32* %3, align 4
  br label %46

28:                                               ; preds = %22
  %29 = load i32, i32* @BETA_MIN, align 4
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load i32, i32* @BETA_MAX, align 4
  %33 = load i32, i32* %6, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sub nsw i32 %31, %34
  %36 = load i32, i32* @BETA_MAX, align 4
  %37 = load i32, i32* @BETA_MIN, align 4
  %38 = sub nsw i32 %36, %37
  %39 = load i32, i32* %4, align 4
  %40 = mul nsw i32 %38, %39
  %41 = add nsw i32 %35, %40
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %42, %43
  %45 = sdiv i32 %41, %44
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %28, %26, %13
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
