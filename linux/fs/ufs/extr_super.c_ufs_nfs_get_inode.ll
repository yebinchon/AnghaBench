; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_super.c_ufs_nfs_get_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_super.c_ufs_nfs_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.super_block = type { i32 }
%struct.ufs_sb_private_info = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.ufs_sb_private_info* }

@UFS_ROOTINO = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, i32, i64)* @ufs_nfs_get_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @ufs_nfs_get_inode(%struct.super_block* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ufs_sb_private_info*, align 8
  %9 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %12, align 8
  store %struct.ufs_sb_private_info* %13, %struct.ufs_sb_private_info** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @UFS_ROOTINO, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %27, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %20 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %23 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = icmp sgt i32 %18, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %17, %3
  %28 = load i32, i32* @ESTALE, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.inode* @ERR_PTR(i32 %29)
  store %struct.inode* %30, %struct.inode** %4, align 8
  br label %58

31:                                               ; preds = %17
  %32 = load %struct.super_block*, %struct.super_block** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call %struct.inode* @ufs_iget(%struct.super_block* %32, i32 %33)
  store %struct.inode* %34, %struct.inode** %9, align 8
  %35 = load %struct.inode*, %struct.inode** %9, align 8
  %36 = call i64 @IS_ERR(%struct.inode* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.inode*, %struct.inode** %9, align 8
  %40 = call %struct.inode* @ERR_CAST(%struct.inode* %39)
  store %struct.inode* %40, %struct.inode** %4, align 8
  br label %58

41:                                               ; preds = %31
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load %struct.inode*, %struct.inode** %9, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.inode*, %struct.inode** %9, align 8
  %52 = call i32 @iput(%struct.inode* %51)
  %53 = load i32, i32* @ESTALE, align 4
  %54 = sub nsw i32 0, %53
  %55 = call %struct.inode* @ERR_PTR(i32 %54)
  store %struct.inode* %55, %struct.inode** %4, align 8
  br label %58

56:                                               ; preds = %44, %41
  %57 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %57, %struct.inode** %4, align 8
  br label %58

58:                                               ; preds = %56, %50, %38, %27
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %59
}

declare dso_local %struct.TYPE_2__* @UFS_SB(%struct.super_block*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @ufs_iget(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_CAST(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
