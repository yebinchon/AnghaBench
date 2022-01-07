; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_txnmgr.c_txBeginAnon.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_txnmgr.c_txBeginAnon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.super_block = type { i32 }
%struct.jfs_log = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.jfs_log* }

@TxStat = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@log_SYNCBARRIER = common dso_local global i32 0, align 4
@log_QUIESCE = common dso_local global i32 0, align 4
@TxAnchor = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@TxLockVHWM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @txBeginAnon(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.jfs_log*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.TYPE_6__* @JFS_SBI(%struct.super_block* %4)
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load %struct.jfs_log*, %struct.jfs_log** %6, align 8
  store %struct.jfs_log* %7, %struct.jfs_log** %3, align 8
  %8 = call i32 (...) @TXN_LOCK()
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @TxStat, i32 0, i32 2), align 4
  %10 = call i32 @INCREMENT(i32 %9)
  br label %11

11:                                               ; preds = %33, %23, %1
  %12 = load i32, i32* @log_SYNCBARRIER, align 4
  %13 = load %struct.jfs_log*, %struct.jfs_log** %3, align 8
  %14 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %13, i32 0, i32 1
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @log_QUIESCE, align 4
  %19 = load %struct.jfs_log*, %struct.jfs_log** %3, align 8
  %20 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %19, i32 0, i32 1
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %17, %11
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @TxStat, i32 0, i32 1), align 4
  %25 = call i32 @INCREMENT(i32 %24)
  %26 = load %struct.jfs_log*, %struct.jfs_log** %3, align 8
  %27 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %26, i32 0, i32 0
  %28 = call i32 @TXN_SLEEP(i32* %27)
  br label %11

29:                                               ; preds = %17
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @TxAnchor, i32 0, i32 0), align 8
  %31 = load i64, i64* @TxLockVHWM, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @TxStat, i32 0, i32 0), align 4
  %35 = call i32 @INCREMENT(i32 %34)
  %36 = call i32 @TXN_SLEEP(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @TxAnchor, i32 0, i32 1))
  br label %11

37:                                               ; preds = %29
  %38 = call i32 (...) @TXN_UNLOCK()
  ret void
}

declare dso_local %struct.TYPE_6__* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @TXN_LOCK(...) #1

declare dso_local i32 @INCREMENT(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @TXN_SLEEP(i32*) #1

declare dso_local i32 @TXN_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
