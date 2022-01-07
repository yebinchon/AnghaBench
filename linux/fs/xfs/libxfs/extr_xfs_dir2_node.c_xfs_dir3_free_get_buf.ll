; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir3_free_get_buf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir3_free_get_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.xfs_inode*, %struct.xfs_trans* }
%struct.xfs_inode = type { %struct.TYPE_7__*, i32, %struct.xfs_mount* }
%struct.TYPE_7__ = type { i32 (%struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir3_icfree_hdr*)* }
%struct.xfs_dir3_icfree_hdr = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8*, i8* }
%struct.xfs_mount = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.xfs_buf = type { %struct.xfs_dir3_icfree_hdr*, i32, i32* }
%struct.xfs_dir3_free_hdr = type { i32, %struct.TYPE_6__ }

@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_BLFT_DIR_FREE_BUF = common dso_local global i32 0, align 4
@xfs_dir3_free_buf_ops = common dso_local global i32 0, align 4
@XFS_DIR3_FREE_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR2_FREE_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, %struct.xfs_buf**)* @xfs_dir3_free_get_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_dir3_free_get_buf(%struct.TYPE_8__* %0, i32 %1, %struct.xfs_buf** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_buf**, align 8
  %8 = alloca %struct.xfs_trans*, align 8
  %9 = alloca %struct.xfs_inode*, align 8
  %10 = alloca %struct.xfs_mount*, align 8
  %11 = alloca %struct.xfs_buf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.xfs_dir3_icfree_hdr, align 8
  %14 = alloca %struct.xfs_dir3_free_hdr*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.xfs_buf** %2, %struct.xfs_buf*** %7, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = load %struct.xfs_trans*, %struct.xfs_trans** %16, align 8
  store %struct.xfs_trans* %17, %struct.xfs_trans** %8, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load %struct.xfs_inode*, %struct.xfs_inode** %19, align 8
  store %struct.xfs_inode* %20, %struct.xfs_inode** %9, align 8
  %21 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %22 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %21, i32 0, i32 2
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %22, align 8
  store %struct.xfs_mount* %23, %struct.xfs_mount** %10, align 8
  %24 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %25 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @xfs_dir2_db_to_da(i32 %28, i32 %29)
  %31 = load i32, i32* @XFS_DATA_FORK, align 4
  %32 = call i32 @xfs_da_get_buf(%struct.xfs_trans* %24, %struct.xfs_inode* %25, i32 %30, i32 -1, %struct.xfs_buf** %11, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %4, align 4
  br label %96

37:                                               ; preds = %3
  %38 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %39 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %40 = load i32, i32* @XFS_BLFT_DIR_FREE_BUF, align 4
  %41 = call i32 @xfs_trans_buf_set_type(%struct.xfs_trans* %38, %struct.xfs_buf* %39, i32 %40)
  %42 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %43 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %42, i32 0, i32 2
  store i32* @xfs_dir3_free_buf_ops, i32** %43, align 8
  %44 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %45 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %44, i32 0, i32 0
  %46 = load %struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir3_icfree_hdr** %45, align 8
  %47 = call i32 @memset(%struct.xfs_dir3_icfree_hdr* %46, i32 0, i32 32)
  %48 = call i32 @memset(%struct.xfs_dir3_icfree_hdr* %13, i32 0, i32 32)
  %49 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %50 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %49, i32 0, i32 0
  %51 = call i64 @xfs_sb_version_hascrc(%struct.TYPE_9__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %81

53:                                               ; preds = %37
  %54 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %55 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %54, i32 0, i32 0
  %56 = load %struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir3_icfree_hdr** %55, align 8
  %57 = bitcast %struct.xfs_dir3_icfree_hdr* %56 to %struct.xfs_dir3_free_hdr*
  store %struct.xfs_dir3_free_hdr* %57, %struct.xfs_dir3_free_hdr** %14, align 8
  %58 = load i32, i32* @XFS_DIR3_FREE_MAGIC, align 4
  %59 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %13, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %61 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @cpu_to_be64(i32 %62)
  %64 = load %struct.xfs_dir3_free_hdr*, %struct.xfs_dir3_free_hdr** %14, align 8
  %65 = getelementptr inbounds %struct.xfs_dir3_free_hdr, %struct.xfs_dir3_free_hdr* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  store i8* %63, i8** %66, align 8
  %67 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %68 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @cpu_to_be64(i32 %69)
  %71 = load %struct.xfs_dir3_free_hdr*, %struct.xfs_dir3_free_hdr** %14, align 8
  %72 = getelementptr inbounds %struct.xfs_dir3_free_hdr, %struct.xfs_dir3_free_hdr* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i8* %70, i8** %73, align 8
  %74 = load %struct.xfs_dir3_free_hdr*, %struct.xfs_dir3_free_hdr** %14, align 8
  %75 = getelementptr inbounds %struct.xfs_dir3_free_hdr, %struct.xfs_dir3_free_hdr* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %78 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = call i32 @uuid_copy(i32* %76, i32* %79)
  br label %84

81:                                               ; preds = %37
  %82 = load i32, i32* @XFS_DIR2_FREE_MAGIC, align 4
  %83 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %13, i32 0, i32 0
  store i32 %82, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %53
  %85 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %86 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32 (%struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir3_icfree_hdr*)*, i32 (%struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir3_icfree_hdr*)** %88, align 8
  %90 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %91 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %90, i32 0, i32 0
  %92 = load %struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir3_icfree_hdr** %91, align 8
  %93 = call i32 %89(%struct.xfs_dir3_icfree_hdr* %92, %struct.xfs_dir3_icfree_hdr* %13)
  %94 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %95 = load %struct.xfs_buf**, %struct.xfs_buf*** %7, align 8
  store %struct.xfs_buf* %94, %struct.xfs_buf** %95, align 8
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %84, %35
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @xfs_da_get_buf(%struct.xfs_trans*, %struct.xfs_inode*, i32, i32, %struct.xfs_buf**, i32) #1

declare dso_local i32 @xfs_dir2_db_to_da(i32, i32) #1

declare dso_local i32 @xfs_trans_buf_set_type(%struct.xfs_trans*, %struct.xfs_buf*, i32) #1

declare dso_local i32 @memset(%struct.xfs_dir3_icfree_hdr*, i32, i32) #1

declare dso_local i64 @xfs_sb_version_hascrc(%struct.TYPE_9__*) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @uuid_copy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
