; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_TCPOPTSTRIP.c_optlen.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_TCPOPTSTRIP.c_optlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TCPOPT_NOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32)* @optlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @optlen(i64* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i64*, i64** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i64, i64* %6, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @TCPOPT_NOP, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load i64*, i64** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = add i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %14, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13, %2
  store i32 1, i32* %3, align 4
  br label %30

22:                                               ; preds = %13
  %23 = load i64*, i64** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = add i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %23, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %22, %21
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
