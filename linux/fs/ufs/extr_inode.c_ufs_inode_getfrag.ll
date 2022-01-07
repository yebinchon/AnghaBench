; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_ufs_inode_getfrag.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_ufs_inode_getfrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.page = type { i32 }
%struct.ufs_inode_info = type { i64 }
%struct.ufs_sb_private_info = type { i32, i64, i64 }
%struct.TYPE_2__ = type { %struct.ufs_sb_private_info* }

@UFS_NDIR_FRAGMENT = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, i32, i64, i32*, i32*, %struct.page*)* @ufs_inode_getfrag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ufs_inode_getfrag(%struct.inode* %0, i32 %1, i64 %2, i32* %3, i32* %4, %struct.page* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca %struct.ufs_inode_info*, align 8
  %15 = alloca %struct.super_block*, align 8
  %16 = alloca %struct.ufs_sb_private_info*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.page* %5, %struct.page** %13, align 8
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = call %struct.ufs_inode_info* @UFS_I(%struct.inode* %22)
  store %struct.ufs_inode_info* %23, %struct.ufs_inode_info** %14, align 8
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 1
  %26 = load %struct.super_block*, %struct.super_block** %25, align 8
  store %struct.super_block* %26, %struct.super_block** %15, align 8
  %27 = load %struct.super_block*, %struct.super_block** %15, align 8
  %28 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %29, align 8
  store %struct.ufs_sb_private_info* %30, %struct.ufs_sb_private_info** %16, align 8
  %31 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %16, align 8
  %32 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %20, align 4
  %34 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %16, align 8
  %35 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %14, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i8* @ufs_get_direct_data_ptr(%struct.ufs_sb_private_info* %34, %struct.ufs_inode_info* %35, i32 %36)
  store i8* %37, i8** %21, align 8
  %38 = load %struct.super_block*, %struct.super_block** %15, align 8
  %39 = load i8*, i8** %21, align 8
  %40 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %38, i8* %39)
  store i64 %40, i64* %17, align 8
  %41 = load i64, i64* %17, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %6
  br label %119

44:                                               ; preds = %6
  %45 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %14, align 8
  %46 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %19, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* @UFS_NDIR_FRAGMENT, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %44
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %19, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load i64, i64* %10, align 8
  %57 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %16, align 8
  %58 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = and i64 %56, %59
  %61 = add nsw i64 %60, 1
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %20, align 4
  br label %63

63:                                               ; preds = %55, %51, %44
  store i64 0, i64* %18, align 8
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %63
  %67 = load %struct.super_block*, %struct.super_block** %15, align 8
  %68 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %16, align 8
  %69 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %14, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sub i32 %70, 1
  %72 = call i8* @ufs_get_direct_data_ptr(%struct.ufs_sb_private_info* %68, %struct.ufs_inode_info* %69, i32 %71)
  %73 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %67, i8* %72)
  store i64 %73, i64* %18, align 8
  %74 = load i64, i64* %18, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %66
  %77 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %16, align 8
  %78 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = zext i32 %79 to i64
  %81 = load i64, i64* %18, align 8
  %82 = add nsw i64 %81, %80
  store i64 %82, i64* %18, align 8
  br label %83

83:                                               ; preds = %76, %66
  br label %84

84:                                               ; preds = %83, %63
  %85 = load %struct.inode*, %struct.inode** %8, align 8
  %86 = load i8*, i8** %21, align 8
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @ufs_blknum(i64 %87)
  %89 = load i64, i64* %18, align 8
  %90 = load i32, i32* %20, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = load %struct.page*, %struct.page** %13, align 8
  %93 = call i64 @ufs_new_fragments(%struct.inode* %85, i8* %86, i32 %88, i64 %89, i32 %90, i32* %91, %struct.page* %92)
  store i64 %93, i64* %17, align 8
  %94 = load i64, i64* %17, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %84
  %97 = load i32, i32* @ENOSPC, align 4
  %98 = sub nsw i32 0, %97
  %99 = load i32*, i32** %11, align 8
  store i32 %98, i32* %99, align 4
  store i64 0, i64* %7, align 8
  br label %125

100:                                              ; preds = %84
  %101 = load i32*, i32** %12, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32*, i32** %12, align 8
  store i32 1, i32* %104, align 4
  br label %105

105:                                              ; preds = %103, %100
  %106 = load %struct.inode*, %struct.inode** %8, align 8
  %107 = call i32 @current_time(%struct.inode* %106)
  %108 = load %struct.inode*, %struct.inode** %8, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.inode*, %struct.inode** %8, align 8
  %111 = call i64 @IS_SYNC(%struct.inode* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %105
  %114 = load %struct.inode*, %struct.inode** %8, align 8
  %115 = call i32 @ufs_sync_inode(%struct.inode* %114)
  br label %116

116:                                              ; preds = %113, %105
  %117 = load %struct.inode*, %struct.inode** %8, align 8
  %118 = call i32 @mark_inode_dirty(%struct.inode* %117)
  br label %119

119:                                              ; preds = %116, %43
  %120 = load i64, i64* %17, align 8
  %121 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %16, align 8
  %122 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %120, %123
  store i64 %124, i64* %7, align 8
  br label %125

125:                                              ; preds = %119, %96
  %126 = load i64, i64* %7, align 8
  ret i64 %126
}

declare dso_local %struct.ufs_inode_info* @UFS_I(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @UFS_SB(%struct.super_block*) #1

declare dso_local i8* @ufs_get_direct_data_ptr(%struct.ufs_sb_private_info*, %struct.ufs_inode_info*, i32) #1

declare dso_local i64 @ufs_data_ptr_to_cpu(%struct.super_block*, i8*) #1

declare dso_local i64 @ufs_new_fragments(%struct.inode*, i8*, i32, i64, i32, i32*, %struct.page*) #1

declare dso_local i32 @ufs_blknum(i64) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @ufs_sync_inode(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
