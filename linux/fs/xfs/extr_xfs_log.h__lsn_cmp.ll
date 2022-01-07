; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log.h__lsn_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log.h__lsn_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @_lsn_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_lsn_cmp(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @CYCLE_LSN(i32 %6)
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @CYCLE_LSN(i32 %8)
  %10 = icmp ne i64 %7, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @CYCLE_LSN(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @CYCLE_LSN(i32 %14)
  %16 = icmp slt i64 %13, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 -999, i32 999
  store i32 %18, i32* %3, align 4
  br label %34

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @BLOCK_LSN(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @BLOCK_LSN(i32 %22)
  %24 = icmp ne i64 %21, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @BLOCK_LSN(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @BLOCK_LSN(i32 %28)
  %30 = icmp slt i64 %27, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 -999, i32 999
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %25, %11
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @CYCLE_LSN(i32) #1

declare dso_local i64 @BLOCK_LSN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
