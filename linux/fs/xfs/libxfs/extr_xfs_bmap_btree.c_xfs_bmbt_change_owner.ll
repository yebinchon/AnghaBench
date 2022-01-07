; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_bmap_btree.c_xfs_bmbt_change_owner.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_bmap_btree.c_xfs_bmbt_change_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_inode = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.list_head = type { i32 }
%struct.xfs_btree_cur = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_BTREE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@XFS_BTCUR_BPRV_INVALID_OWNER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_bmbt_change_owner(%struct.xfs_trans* %0, %struct.xfs_inode* %1, i32 %2, i32 %3, %struct.list_head* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_trans*, align 8
  %8 = alloca %struct.xfs_inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.list_head*, align 8
  %12 = alloca %struct.xfs_btree_cur*, align 8
  %13 = alloca i32, align 4
  store %struct.xfs_trans* %0, %struct.xfs_trans** %7, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.list_head* %4, %struct.list_head** %11, align 8
  %14 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %15 = icmp ne %struct.xfs_trans* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load %struct.list_head*, %struct.list_head** %11, align 8
  %18 = icmp ne %struct.list_head* %17, null
  br label %19

19:                                               ; preds = %16, %5
  %20 = phi i1 [ true, %5 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %24 = icmp ne %struct.xfs_trans* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.list_head*, %struct.list_head** %11, align 8
  %27 = icmp ne %struct.list_head* %26, null
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi i1 [ false, %19 ], [ %27, %25 ]
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @XFS_DATA_FORK, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %38 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @XFS_DINODE_FMT_BTREE, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @ASSERT(i32 %43)
  br label %54

45:                                               ; preds = %28
  %46 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %47 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @XFS_DINODE_FMT_BTREE, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @ASSERT(i32 %52)
  br label %54

54:                                               ; preds = %45, %36
  %55 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %56 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %59 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call %struct.xfs_btree_cur* @xfs_bmbt_init_cursor(i32 %57, %struct.xfs_trans* %58, %struct.xfs_inode* %59, i32 %60)
  store %struct.xfs_btree_cur* %61, %struct.xfs_btree_cur** %12, align 8
  %62 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %63 = icmp ne %struct.xfs_btree_cur* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %54
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %83

67:                                               ; preds = %54
  %68 = load i32, i32* @XFS_BTCUR_BPRV_INVALID_OWNER, align 4
  %69 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %70 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %68
  store i32 %74, i32* %72, align 4
  %75 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.list_head*, %struct.list_head** %11, align 8
  %78 = call i32 @xfs_btree_change_owner(%struct.xfs_btree_cur* %75, i32 %76, %struct.list_head* %77)
  store i32 %78, i32* %13, align 4
  %79 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @xfs_btree_del_cursor(%struct.xfs_btree_cur* %79, i32 %80)
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %67, %64
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.xfs_btree_cur* @xfs_bmbt_init_cursor(i32, %struct.xfs_trans*, %struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_btree_change_owner(%struct.xfs_btree_cur*, i32, %struct.list_head*) #1

declare dso_local i32 @xfs_btree_del_cursor(%struct.xfs_btree_cur*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
