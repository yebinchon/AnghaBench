; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_util.h_ufs_get_direct_data_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_util.h_ufs_get_direct_data_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_sb_private_info = type { i64 }
%struct.ufs_inode_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@UFS_TIND_BLOCK = common dso_local global i32 0, align 4
@UFS2_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ufs_sb_private_info*, %struct.ufs_inode_info*, i32)* @ufs_get_direct_data_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ufs_get_direct_data_ptr(%struct.ufs_sb_private_info* %0, %struct.ufs_inode_info* %1, i32 %2) #0 {
  %4 = alloca %struct.ufs_sb_private_info*, align 8
  %5 = alloca %struct.ufs_inode_info*, align 8
  %6 = alloca i32, align 4
  store %struct.ufs_sb_private_info* %0, %struct.ufs_sb_private_info** %4, align 8
  store %struct.ufs_inode_info* %1, %struct.ufs_inode_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @UFS_TIND_BLOCK, align 4
  %9 = icmp ugt i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %13 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @UFS2_MAGIC, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %5, align 8
  %19 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = bitcast i32* %24 to i8*
  br label %35

26:                                               ; preds = %3
  %27 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %5, align 8
  %28 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = bitcast i32* %33 to i8*
  br label %35

35:                                               ; preds = %26, %17
  %36 = phi i8* [ %25, %17 ], [ %34, %26 ]
  ret i8* %36
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
