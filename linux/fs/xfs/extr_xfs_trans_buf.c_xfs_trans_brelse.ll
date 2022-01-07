; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_buf.c_xfs_trans_brelse.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_buf.c_xfs_trans_brelse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_buf = type { %struct.xfs_trans*, %struct.xfs_buf_log_item* }
%struct.xfs_buf_log_item = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@XFS_LI_BUF = common dso_local global i64 0, align 8
@XFS_LI_DIRTY = common dso_local global i32 0, align 4
@XFS_BLI_STALE = common dso_local global i32 0, align 4
@XFS_BLI_LOGGED = common dso_local global i32 0, align 4
@XFS_BLI_HOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_trans_brelse(%struct.xfs_trans* %0, %struct.xfs_buf* %1) #0 {
  %3 = alloca %struct.xfs_trans*, align 8
  %4 = alloca %struct.xfs_buf*, align 8
  %5 = alloca %struct.xfs_buf_log_item*, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %3, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %4, align 8
  %6 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %7 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %6, i32 0, i32 1
  %8 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %7, align 8
  store %struct.xfs_buf_log_item* %8, %struct.xfs_buf_log_item** %5, align 8
  %9 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %10 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %9, i32 0, i32 0
  %11 = load %struct.xfs_trans*, %struct.xfs_trans** %10, align 8
  %12 = load %struct.xfs_trans*, %struct.xfs_trans** %3, align 8
  %13 = icmp eq %struct.xfs_trans* %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load %struct.xfs_trans*, %struct.xfs_trans** %3, align 8
  %17 = icmp ne %struct.xfs_trans* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %20 = call i32 @xfs_buf_relse(%struct.xfs_buf* %19)
  br label %88

21:                                               ; preds = %2
  %22 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %23 = call i32 @trace_xfs_trans_brelse(%struct.xfs_buf_log_item* %22)
  %24 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %25 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @XFS_LI_BUF, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %33 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %32, i32 0, i32 3
  %34 = call i64 @atomic_read(i32* %33)
  %35 = icmp sgt i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %39 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %21
  %43 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %44 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %44, align 8
  br label %88

47:                                               ; preds = %21
  %48 = load i32, i32* @XFS_LI_DIRTY, align 4
  %49 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %50 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = call i64 @test_bit(i32 %48, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %88

55:                                               ; preds = %47
  %56 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %57 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @XFS_BLI_STALE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %88

63:                                               ; preds = %55
  %64 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %65 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @XFS_BLI_LOGGED, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @ASSERT(i32 %71)
  %73 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %74 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %73, i32 0, i32 2
  %75 = call i32 @xfs_trans_del_item(%struct.TYPE_2__* %74)
  %76 = load i32, i32* @XFS_BLI_HOLD, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %79 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %83 = call i32 @xfs_buf_item_put(%struct.xfs_buf_log_item* %82)
  %84 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %85 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %84, i32 0, i32 0
  store %struct.xfs_trans* null, %struct.xfs_trans** %85, align 8
  %86 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %87 = call i32 @xfs_buf_relse(%struct.xfs_buf* %86)
  br label %88

88:                                               ; preds = %63, %62, %54, %42, %18
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_buf_relse(%struct.xfs_buf*) #1

declare dso_local i32 @trace_xfs_trans_brelse(%struct.xfs_buf_log_item*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @xfs_trans_del_item(%struct.TYPE_2__*) #1

declare dso_local i32 @xfs_buf_item_put(%struct.xfs_buf_log_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
