; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_txnmgr.c_txLazyCommit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_txnmgr.c_txLazyCommit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tblock = type { i32, i32, i32 }
%struct.jfs_log = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }

@tblkGC_READY = common dso_local global i32 0, align 4
@tblkGC_UNLOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"jfs_lazycommit: tblk 0x%p not unlocked\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"txLazyCommit: processing tblk 0x%p\00", align 1
@tblkGC_COMMITTED = common dso_local global i32 0, align 4
@tblkGC_LAZY = common dso_local global i32 0, align 4
@TxBlock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"txLazyCommit: done: tblk = 0x%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tblock*)* @txLazyCommit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txLazyCommit(%struct.tblock* %0) #0 {
  %2 = alloca %struct.tblock*, align 8
  %3 = alloca %struct.jfs_log*, align 8
  store %struct.tblock* %0, %struct.tblock** %2, align 8
  br label %4

4:                                                ; preds = %20, %1
  %5 = load %struct.tblock*, %struct.tblock** %2, align 8
  %6 = getelementptr inbounds %struct.tblock, %struct.tblock* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @tblkGC_READY, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %4
  %12 = load %struct.tblock*, %struct.tblock** %2, align 8
  %13 = getelementptr inbounds %struct.tblock, %struct.tblock* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @tblkGC_UNLOCKED, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br label %18

18:                                               ; preds = %11, %4
  %19 = phi i1 [ false, %4 ], [ %17, %11 ]
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  %21 = load %struct.tblock*, %struct.tblock** %2, align 8
  %22 = call i32 @jfs_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.tblock* %21)
  %23 = call i32 (...) @yield()
  br label %4

24:                                               ; preds = %18
  %25 = load %struct.tblock*, %struct.tblock** %2, align 8
  %26 = call i32 @jfs_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), %struct.tblock* %25)
  %27 = load %struct.tblock*, %struct.tblock** %2, align 8
  %28 = call i32 @txUpdateMap(%struct.tblock* %27)
  %29 = load %struct.tblock*, %struct.tblock** %2, align 8
  %30 = getelementptr inbounds %struct.tblock, %struct.tblock* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.TYPE_2__* @JFS_SBI(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.jfs_log*
  store %struct.jfs_log* %35, %struct.jfs_log** %3, align 8
  %36 = load %struct.jfs_log*, %struct.jfs_log** %3, align 8
  %37 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %36, i32 0, i32 0
  %38 = call i32 @spin_lock_irq(i32* %37)
  %39 = load i32, i32* @tblkGC_COMMITTED, align 4
  %40 = load %struct.tblock*, %struct.tblock** %2, align 8
  %41 = getelementptr inbounds %struct.tblock, %struct.tblock* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.tblock*, %struct.tblock** %2, align 8
  %45 = getelementptr inbounds %struct.tblock, %struct.tblock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @tblkGC_READY, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %24
  %51 = load %struct.jfs_log*, %struct.jfs_log** %3, align 8
  %52 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %50, %24
  %56 = load %struct.tblock*, %struct.tblock** %2, align 8
  %57 = getelementptr inbounds %struct.tblock, %struct.tblock* %56, i32 0, i32 1
  %58 = call i32 @wake_up_all(i32* %57)
  %59 = load %struct.tblock*, %struct.tblock** %2, align 8
  %60 = getelementptr inbounds %struct.tblock, %struct.tblock* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @tblkGC_LAZY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %55
  %66 = load %struct.jfs_log*, %struct.jfs_log** %3, align 8
  %67 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock_irq(i32* %67)
  %69 = load %struct.tblock*, %struct.tblock** %2, align 8
  %70 = call i32 @txUnlock(%struct.tblock* %69)
  %71 = load i32, i32* @tblkGC_LAZY, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.tblock*, %struct.tblock** %2, align 8
  %74 = getelementptr inbounds %struct.tblock, %struct.tblock* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.tblock*, %struct.tblock** %2, align 8
  %78 = load i32, i32* @TxBlock, align 4
  %79 = sext i32 %78 to i64
  %80 = sub i64 0, %79
  %81 = getelementptr inbounds %struct.tblock, %struct.tblock* %77, i64 %80
  %82 = call i32 @txEnd(%struct.tblock* %81)
  br label %87

83:                                               ; preds = %55
  %84 = load %struct.jfs_log*, %struct.jfs_log** %3, align 8
  %85 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %84, i32 0, i32 0
  %86 = call i32 @spin_unlock_irq(i32* %85)
  br label %87

87:                                               ; preds = %83, %65
  %88 = load %struct.tblock*, %struct.tblock** %2, align 8
  %89 = call i32 @jfs_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), %struct.tblock* %88)
  ret void
}

declare dso_local i32 @jfs_info(i8*, %struct.tblock*) #1

declare dso_local i32 @yield(...) #1

declare dso_local i32 @txUpdateMap(%struct.tblock*) #1

declare dso_local %struct.TYPE_2__* @JFS_SBI(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @txUnlock(%struct.tblock*) #1

declare dso_local i32 @txEnd(%struct.tblock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
