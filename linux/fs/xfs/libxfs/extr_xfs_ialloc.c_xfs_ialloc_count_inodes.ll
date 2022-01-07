; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ialloc.c_xfs_ialloc_count_inodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ialloc.c_xfs_ialloc_count_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { i64 }
%struct.xfs_ialloc_count_inodes = type { i32, i32, i32 }

@XFS_BTNUM_INO = common dso_local global i64 0, align 8
@xfs_ialloc_count_inodes_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_ialloc_count_inodes(%struct.xfs_btree_cur* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_btree_cur*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.xfs_ialloc_count_inodes, align 4
  %9 = alloca i32, align 4
  store %struct.xfs_btree_cur* %0, %struct.xfs_btree_cur** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = bitcast %struct.xfs_ialloc_count_inodes* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 12, i1 false)
  %11 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %12 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @XFS_BTNUM_INO, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %19 = load i32, i32* @xfs_ialloc_count_inodes_rec, align 4
  %20 = call i32 @xfs_btree_query_all(%struct.xfs_btree_cur* %18, i32 %19, %struct.xfs_ialloc_count_inodes* %8)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %32

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.xfs_ialloc_count_inodes, %struct.xfs_ialloc_count_inodes* %8, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.xfs_ialloc_count_inodes, %struct.xfs_ialloc_count_inodes* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %25, %23
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @xfs_btree_query_all(%struct.xfs_btree_cur*, i32, %struct.xfs_ialloc_count_inodes*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
