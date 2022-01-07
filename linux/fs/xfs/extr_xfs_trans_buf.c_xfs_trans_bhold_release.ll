; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_buf.c_xfs_trans_bhold_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_buf.c_xfs_trans_bhold_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, %struct.xfs_buf_log_item* }
%struct.xfs_buf_log_item = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@XFS_BLI_STALE = common dso_local global i32 0, align 4
@XFS_BLF_CANCEL = common dso_local global i32 0, align 4
@XFS_BLI_HOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_trans_bhold_release(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.xfs_buf_log_item*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %7, align 8
  store %struct.xfs_buf_log_item* %8, %struct.xfs_buf_log_item** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = icmp eq i32* %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %17 = icmp ne %struct.xfs_buf_log_item* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %21 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @XFS_BLI_STALE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %30 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @XFS_BLF_CANCEL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %40 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %39, i32 0, i32 1
  %41 = call i64 @atomic_read(i32* %40)
  %42 = icmp sgt i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @ASSERT(i32 %43)
  %45 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %46 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @XFS_BLI_HOLD, align 4
  %49 = and i32 %47, %48
  %50 = call i32 @ASSERT(i32 %49)
  %51 = load i32, i32* @XFS_BLI_HOLD, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %54 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %58 = call i32 @trace_xfs_trans_bhold_release(%struct.xfs_buf_log_item* %57)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @trace_xfs_trans_bhold_release(%struct.xfs_buf_log_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
