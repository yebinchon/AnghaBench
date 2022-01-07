; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c_xfs_btree_has_more_records.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c_xfs_btree_has_more_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { i64*, i32 }
%struct.xfs_btree_block = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.xfs_buf = type { i32 }

@XFS_BTREE_LONG_PTRS = common dso_local global i32 0, align 4
@NULLFSBLOCK = common dso_local global i32 0, align 4
@NULLAGBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_btree_has_more_records(%struct.xfs_btree_cur* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_btree_cur*, align 8
  %4 = alloca %struct.xfs_btree_block*, align 8
  %5 = alloca %struct.xfs_buf*, align 8
  store %struct.xfs_btree_cur* %0, %struct.xfs_btree_cur** %3, align 8
  %6 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %3, align 8
  %7 = call %struct.xfs_btree_block* @xfs_btree_get_block(%struct.xfs_btree_cur* %6, i32 0, %struct.xfs_buf** %5)
  store %struct.xfs_btree_block* %7, %struct.xfs_btree_block** %4, align 8
  %8 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %3, align 8
  %9 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %4, align 8
  %14 = call i64 @xfs_btree_get_numrecs(%struct.xfs_btree_block* %13)
  %15 = icmp slt i64 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %44

17:                                               ; preds = %1
  %18 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %3, align 8
  %19 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @XFS_BTREE_LONG_PTRS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %4, align 8
  %26 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @NULLFSBLOCK, align 4
  %31 = call i64 @cpu_to_be64(i32 %30)
  %32 = icmp ne i64 %29, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %2, align 4
  br label %44

34:                                               ; preds = %17
  %35 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %4, align 8
  %36 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @NULLAGBLOCK, align 4
  %41 = call i64 @cpu_to_be32(i32 %40)
  %42 = icmp ne i64 %39, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %34, %24, %16
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.xfs_btree_block* @xfs_btree_get_block(%struct.xfs_btree_cur*, i32, %struct.xfs_buf**) #1

declare dso_local i64 @xfs_btree_get_numrecs(%struct.xfs_btree_block*) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
