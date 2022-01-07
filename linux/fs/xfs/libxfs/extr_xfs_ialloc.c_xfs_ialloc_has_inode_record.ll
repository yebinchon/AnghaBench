; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ialloc.c_xfs_ialloc_has_inode_record.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ialloc.c_xfs_ialloc_has_inode_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { i32 }
%struct.xfs_inobt_rec_incore = type { i64, i32 }

@XFS_LOOKUP_LE = common dso_local global i32 0, align 4
@XFS_INOBT_HOLEMASK_BITS = common dso_local global i32 0, align 4
@XFS_INODES_PER_HOLEMASK_BIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_ialloc_has_inode_record(%struct.xfs_btree_cur* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_btree_cur*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.xfs_inobt_rec_incore, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.xfs_btree_cur* %0, %struct.xfs_btree_cur** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* @XFS_LOOKUP_LE, align 4
  %20 = call i32 @xfs_inobt_lookup(%struct.xfs_btree_cur* %17, i64 %18, i32 %19, i32* %13)
  store i32 %20, i32* %15, align 4
  br label %21

21:                                               ; preds = %75, %4
  %22 = load i32, i32* %15, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i1 [ false, %21 ], [ %26, %24 ]
  br i1 %28, label %29, label %78

29:                                               ; preds = %27
  %30 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %31 = call i32 @xfs_inobt_get_rec(%struct.xfs_btree_cur* %30, %struct.xfs_inobt_rec_incore* %10, i32* %13)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.xfs_inobt_rec_incore, %struct.xfs_inobt_rec_incore* %10, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %29
  br label %78

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.xfs_inobt_rec_incore, %struct.xfs_inobt_rec_incore* %10, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %11, align 8
  %43 = getelementptr inbounds %struct.xfs_inobt_rec_incore, %struct.xfs_inobt_rec_incore* %10, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %45

45:                                               ; preds = %67, %40
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* @XFS_INOBT_HOLEMASK_BITS, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %45
  %50 = load i32, i32* %12, align 4
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %67

54:                                               ; preds = %49
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* @XFS_INODES_PER_HOLEMASK_BIT, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i64, i64* %7, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %8, align 8
  %63 = icmp sle i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32*, i32** %9, align 8
  store i32 1, i32* %65, align 4
  store i32 0, i32* %5, align 4
  br label %80

66:                                               ; preds = %60, %54
  br label %67

67:                                               ; preds = %66, %53
  %68 = load i32, i32* %12, align 4
  %69 = ashr i32 %68, 1
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %14, align 4
  %72 = load i64, i64* @XFS_INODES_PER_HOLEMASK_BIT, align 8
  %73 = load i64, i64* %11, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* %11, align 8
  br label %45

75:                                               ; preds = %45
  %76 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %77 = call i32 @xfs_btree_increment(%struct.xfs_btree_cur* %76, i32 0, i32* %13)
  store i32 %77, i32* %15, align 4
  br label %21

78:                                               ; preds = %39, %27
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %78, %64
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @xfs_inobt_lookup(%struct.xfs_btree_cur*, i64, i32, i32*) #1

declare dso_local i32 @xfs_inobt_get_rec(%struct.xfs_btree_cur*, %struct.xfs_inobt_rec_incore*, i32*) #1

declare dso_local i32 @xfs_btree_increment(%struct.xfs_btree_cur*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
