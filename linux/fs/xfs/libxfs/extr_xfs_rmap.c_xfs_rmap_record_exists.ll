; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.c_xfs_rmap_record_exists.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.c_xfs_rmap_record_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { i32 }
%struct.xfs_owner_info = type { i32 }
%struct.xfs_rmap_irec = type { i64, i64, i64 }

@XFS_RMAP_BMBT_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_rmap_record_exists(%struct.xfs_btree_cur* %0, i64 %1, i64 %2, %struct.xfs_owner_info* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_btree_cur*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.xfs_owner_info*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.xfs_rmap_irec, align 8
  %17 = alloca i32, align 4
  store %struct.xfs_btree_cur* %0, %struct.xfs_btree_cur** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.xfs_owner_info* %3, %struct.xfs_owner_info** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.xfs_owner_info*, %struct.xfs_owner_info** %10, align 8
  %19 = call i32 @xfs_owner_info_unpack(%struct.xfs_owner_info* %18, i64* %12, i64* %13, i32* %14)
  %20 = load i64, i64* %12, align 8
  %21 = call i64 @XFS_RMAP_NON_INODE_OWNER(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* @XFS_RMAP_BMBT_BLOCK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %23, %5
  %29 = phi i1 [ true, %5 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @xfs_rmap_lookup_le(%struct.xfs_btree_cur* %32, i64 %33, i64 %34, i64 %35, i64 %36, i32 %37, i32* %15)
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %17, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i32, i32* %17, align 4
  store i32 %42, i32* %6, align 4
  br label %84

43:                                               ; preds = %28
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = load i32*, i32** %11, align 8
  store i32 0, i32* %47, align 4
  store i32 0, i32* %6, align 4
  br label %84

48:                                               ; preds = %43
  %49 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %50 = call i32 @xfs_rmap_get_rec(%struct.xfs_btree_cur* %49, %struct.xfs_rmap_irec* %16, i32* %15)
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %17, align 4
  store i32 %54, i32* %6, align 4
  br label %84

55:                                               ; preds = %48
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = load i32*, i32** %11, align 8
  store i32 0, i32* %59, align 4
  store i32 0, i32* %6, align 4
  br label %84

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %16, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %12, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %16, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp sle i64 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %16, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %16, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %72, %74
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %9, align 8
  %78 = add nsw i64 %76, %77
  %79 = icmp sge i64 %75, %78
  br label %80

80:                                               ; preds = %70, %65, %60
  %81 = phi i1 [ false, %65 ], [ false, %60 ], [ %79, %70 ]
  %82 = zext i1 %81 to i32
  %83 = load i32*, i32** %11, align 8
  store i32 %82, i32* %83, align 4
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %80, %58, %53, %46, %41
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @xfs_owner_info_unpack(%struct.xfs_owner_info*, i64*, i64*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @XFS_RMAP_NON_INODE_OWNER(i64) #1

declare dso_local i32 @xfs_rmap_lookup_le(%struct.xfs_btree_cur*, i64, i64, i64, i64, i32, i32*) #1

declare dso_local i32 @xfs_rmap_get_rec(%struct.xfs_btree_cur*, %struct.xfs_rmap_irec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
