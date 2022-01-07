; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_reflink.c_xfs_reflink_convert_cow_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_reflink.c_xfs_reflink_convert_cow_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32 }
%struct.xfs_iext_cursor = type { i32 }
%struct.xfs_bmbt_irec = type { i64, i64, i32, i32 }
%struct.xfs_btree_cur = type { i32 }

@XFS_EXT_NORM = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@XFS_COW_FORK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_inode*, i64, i64)* @xfs_reflink_convert_cow_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_reflink_convert_cow_locked(%struct.xfs_inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.xfs_iext_cursor, align 4
  %9 = alloca %struct.xfs_bmbt_irec, align 8
  %10 = alloca %struct.xfs_btree_cur*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.xfs_btree_cur* null, %struct.xfs_btree_cur** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %14 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %15 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @xfs_iext_lookup_extent(%struct.xfs_inode* %13, i32 %16, i64 %17, %struct.xfs_iext_cursor* %8, %struct.xfs_bmbt_irec* %9)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %72

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %64, %21
  %23 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %9, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = add nsw i64 %25, %26
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %70

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %9, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @XFS_EXT_NORM, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %64

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %9, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @isnullstartblock(i32 %38)
  %40 = call i64 @WARN_ON_ONCE(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %72

45:                                               ; preds = %36
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @xfs_trim_extent(%struct.xfs_bmbt_irec* %9, i64 %46, i64 %47)
  %49 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %9, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %64

53:                                               ; preds = %45
  %54 = load i64, i64* @XFS_EXT_NORM, align 8
  %55 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %9, i32 0, i32 1
  store i64 %54, i64* %55, align 8
  %56 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %57 = load i32, i32* @XFS_COW_FORK, align 4
  %58 = call i32 @xfs_bmap_add_extent_unwritten_real(i32* null, %struct.xfs_inode* %56, i32 %57, %struct.xfs_iext_cursor* %8, %struct.xfs_btree_cur** %10, %struct.xfs_bmbt_irec* %9, i32* %11)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %4, align 4
  br label %72

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %52, %35
  %65 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %66 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @xfs_iext_next_extent(i32 %67, %struct.xfs_iext_cursor* %8, %struct.xfs_bmbt_irec* %9)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %22, label %70

70:                                               ; preds = %64, %29
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %61, %42, %20
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @xfs_iext_lookup_extent(%struct.xfs_inode*, i32, i64, %struct.xfs_iext_cursor*, %struct.xfs_bmbt_irec*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @isnullstartblock(i32) #1

declare dso_local i32 @xfs_trim_extent(%struct.xfs_bmbt_irec*, i64, i64) #1

declare dso_local i32 @xfs_bmap_add_extent_unwritten_real(i32*, %struct.xfs_inode*, i32, %struct.xfs_iext_cursor*, %struct.xfs_btree_cur**, %struct.xfs_bmbt_irec*, i32*) #1

declare dso_local i64 @xfs_iext_next_extent(i32, %struct.xfs_iext_cursor*, %struct.xfs_bmbt_irec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
