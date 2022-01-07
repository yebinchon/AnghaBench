; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_bmap_punch_delalloc_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_bmap_punch_delalloc_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.xfs_ifork }
%struct.xfs_ifork = type { i32 }
%struct.xfs_bmbt_irec = type { i32, i64, i64 }
%struct.xfs_iext_cursor = type { i32 }

@XFS_IFEXTENTS = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_bmap_punch_delalloc_range(%struct.xfs_inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xfs_ifork*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.xfs_bmbt_irec, align 8
  %10 = alloca %struct.xfs_bmbt_irec, align 8
  %11 = alloca %struct.xfs_iext_cursor, align 4
  %12 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %14 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %13, i32 0, i32 0
  store %struct.xfs_ifork* %14, %struct.xfs_ifork** %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = add nsw i64 %15, %16
  store i64 %17, i64* %8, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.xfs_ifork*, %struct.xfs_ifork** %7, align 8
  %19 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @XFS_IFEXTENTS, align 4
  %22 = and i32 %20, %21
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %25 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %26 = call i32 @xfs_ilock(%struct.xfs_inode* %24, i32 %25)
  %27 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %28 = load %struct.xfs_ifork*, %struct.xfs_ifork** %7, align 8
  %29 = call i32 @xfs_iext_lookup_extent_before(%struct.xfs_inode* %27, %struct.xfs_ifork* %28, i64* %8, %struct.xfs_iext_cursor* %11, %struct.xfs_bmbt_irec* %9)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  br label %74

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %72, %60, %32
  %34 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %9, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %9, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %35, %37
  %39 = load i64, i64* %5, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %73

41:                                               ; preds = %33
  %42 = bitcast %struct.xfs_bmbt_irec* %10 to i8*
  %43 = bitcast %struct.xfs_bmbt_irec* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 24, i1 false)
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @xfs_trim_extent(%struct.xfs_bmbt_irec* %10, i64 %44, i64 %45)
  %47 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %10, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %10, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @isnullstartblock(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50, %41
  %56 = load %struct.xfs_ifork*, %struct.xfs_ifork** %7, align 8
  %57 = call i32 @xfs_iext_prev_extent(%struct.xfs_ifork* %56, %struct.xfs_iext_cursor* %11, %struct.xfs_bmbt_irec* %9)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  br label %73

60:                                               ; preds = %55
  br label %33

61:                                               ; preds = %50
  %62 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %63 = load i32, i32* @XFS_DATA_FORK, align 4
  %64 = call i32 @xfs_bmap_del_extent_delay(%struct.xfs_inode* %62, i32 %63, %struct.xfs_iext_cursor* %11, %struct.xfs_bmbt_irec* %9, %struct.xfs_bmbt_irec* %10)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %61
  %68 = load %struct.xfs_ifork*, %struct.xfs_ifork** %7, align 8
  %69 = call i32 @xfs_iext_get_extent(%struct.xfs_ifork* %68, %struct.xfs_iext_cursor* %11, %struct.xfs_bmbt_irec* %9)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67, %61
  br label %73

72:                                               ; preds = %67
  br label %33

73:                                               ; preds = %71, %59, %33
  br label %74

74:                                               ; preds = %73, %31
  %75 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %76 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %77 = call i32 @xfs_iunlock(%struct.xfs_inode* %75, i32 %76)
  %78 = load i32, i32* %12, align 4
  ret i32 %78
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_ilock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_iext_lookup_extent_before(%struct.xfs_inode*, %struct.xfs_ifork*, i64*, %struct.xfs_iext_cursor*, %struct.xfs_bmbt_irec*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @xfs_trim_extent(%struct.xfs_bmbt_irec*, i64, i64) #1

declare dso_local i32 @isnullstartblock(i32) #1

declare dso_local i32 @xfs_iext_prev_extent(%struct.xfs_ifork*, %struct.xfs_iext_cursor*, %struct.xfs_bmbt_irec*) #1

declare dso_local i32 @xfs_bmap_del_extent_delay(%struct.xfs_inode*, i32, %struct.xfs_iext_cursor*, %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec*) #1

declare dso_local i32 @xfs_iext_get_extent(%struct.xfs_ifork*, %struct.xfs_iext_cursor*, %struct.xfs_bmbt_irec*) #1

declare dso_local i32 @xfs_iunlock(%struct.xfs_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
