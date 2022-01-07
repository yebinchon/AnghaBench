; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_rcurcu.h_rcu_seq_diff.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_rcurcu.h_rcu_seq_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RCU_SEQ_STATE_MASK = common dso_local global i64 0, align 8
@RCU_SEQ_CTR_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @rcu_seq_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rcu_seq_diff(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %50

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @RCU_SEQ_STATE_MASK, align 8
  %14 = xor i64 %13, -1
  %15 = and i64 %12, %14
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @RCU_SEQ_STATE_MASK, align 8
  %18 = add i64 %16, %17
  %19 = load i64, i64* @RCU_SEQ_STATE_MASK, align 8
  %20 = xor i64 %19, -1
  %21 = and i64 %18, %20
  %22 = sub i64 %15, %21
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @RCU_SEQ_STATE_MASK, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %11
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @RCU_SEQ_STATE_MASK, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %27, %11
  %33 = phi i1 [ true, %11 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = add i64 %22, %35
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* @RCU_SEQ_STATE_MASK, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @ULONG_CMP_GE(i64 %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i64 1, i64* %3, align 8
  br label %50

42:                                               ; preds = %32
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @RCU_SEQ_STATE_MASK, align 8
  %45 = sub i64 %43, %44
  %46 = sub i64 %45, 1
  %47 = load i64, i64* @RCU_SEQ_CTR_SHIFT, align 8
  %48 = lshr i64 %46, %47
  %49 = add i64 %48, 2
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %42, %41, %10
  %51 = load i64, i64* %3, align 8
  ret i64 %51
}

declare dso_local i64 @ULONG_CMP_GE(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
