; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_txnmgr.c_txResume.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_txnmgr.c_txResume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.jfs_log = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.jfs_log* }

@log_QUIESCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @txResume(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.jfs_log*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.TYPE_2__* @JFS_SBI(%struct.super_block* %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.jfs_log*, %struct.jfs_log** %6, align 8
  store %struct.jfs_log* %7, %struct.jfs_log** %3, align 8
  %8 = load i32, i32* @log_QUIESCE, align 4
  %9 = load %struct.jfs_log*, %struct.jfs_log** %3, align 8
  %10 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %9, i32 0, i32 1
  %11 = call i32 @clear_bit(i32 %8, i32* %10)
  %12 = load %struct.jfs_log*, %struct.jfs_log** %3, align 8
  %13 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %12, i32 0, i32 0
  %14 = call i32 @TXN_WAKEUP(i32* %13)
  ret void
}

declare dso_local %struct.TYPE_2__* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @TXN_WAKEUP(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
