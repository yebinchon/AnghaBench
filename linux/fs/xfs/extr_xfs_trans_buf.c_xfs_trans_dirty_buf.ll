; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_buf.c_xfs_trans_dirty_buf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_buf.c_xfs_trans_dirty_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_buf = type { i32, i32*, %struct.xfs_trans*, %struct.xfs_buf_log_item* }
%struct.xfs_buf_log_item = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@xfs_buf_iodone_callbacks = common dso_local global i32* null, align 8
@XBF_DONE = common dso_local global i32 0, align 4
@xfs_buf_iodone = common dso_local global i32 0, align 4
@XFS_BLI_STALE = common dso_local global i32 0, align 4
@XBF_STALE = common dso_local global i32 0, align 4
@XFS_BLF_CANCEL = common dso_local global i32 0, align 4
@XFS_BLI_DIRTY = common dso_local global i32 0, align 4
@XFS_BLI_LOGGED = common dso_local global i32 0, align 4
@XFS_TRANS_DIRTY = common dso_local global i32 0, align 4
@XFS_LI_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_trans_dirty_buf(%struct.xfs_trans* %0, %struct.xfs_buf* %1) #0 {
  %3 = alloca %struct.xfs_trans*, align 8
  %4 = alloca %struct.xfs_buf*, align 8
  %5 = alloca %struct.xfs_buf_log_item*, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %3, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %4, align 8
  %6 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %7 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %6, i32 0, i32 3
  %8 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %7, align 8
  store %struct.xfs_buf_log_item* %8, %struct.xfs_buf_log_item** %5, align 8
  %9 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %10 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %9, i32 0, i32 2
  %11 = load %struct.xfs_trans*, %struct.xfs_trans** %10, align 8
  %12 = load %struct.xfs_trans*, %struct.xfs_trans** %3, align 8
  %13 = icmp eq %struct.xfs_trans* %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %17 = icmp ne %struct.xfs_buf_log_item* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %21 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %26 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32*, i32** @xfs_buf_iodone_callbacks, align 8
  %29 = icmp eq i32* %27, %28
  br label %30

30:                                               ; preds = %24, %2
  %31 = phi i1 [ true, %2 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load i32, i32* @XBF_DONE, align 4
  %35 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %36 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %40 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %39, i32 0, i32 3
  %41 = call i64 @atomic_read(i32* %40)
  %42 = icmp sgt i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @ASSERT(i32 %43)
  %45 = load i32*, i32** @xfs_buf_iodone_callbacks, align 8
  %46 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %47 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %46, i32 0, i32 1
  store i32* %45, i32** %47, align 8
  %48 = load i32, i32* @xfs_buf_iodone, align 4
  %49 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %50 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %53 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @XFS_BLI_STALE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %30
  %59 = load i32, i32* @XFS_BLI_STALE, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %62 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %66 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @XBF_STALE, align 4
  %69 = and i32 %67, %68
  %70 = call i32 @ASSERT(i32 %69)
  %71 = load i32, i32* @XBF_STALE, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %74 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load i32, i32* @XFS_BLF_CANCEL, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %80 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %78
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %58, %30
  %85 = load i32, i32* @XFS_BLI_DIRTY, align 4
  %86 = load i32, i32* @XFS_BLI_LOGGED, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %89 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* @XFS_TRANS_DIRTY, align 4
  %93 = load %struct.xfs_trans*, %struct.xfs_trans** %3, align 8
  %94 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* @XFS_LI_DIRTY, align 4
  %98 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %99 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = call i32 @set_bit(i32 %97, i32* %100)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
