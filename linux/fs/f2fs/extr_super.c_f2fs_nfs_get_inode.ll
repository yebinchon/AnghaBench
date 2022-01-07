; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_f2fs_nfs_get_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_f2fs_nfs_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.super_block = type { i32 }
%struct.f2fs_sb_info = type { i32 }

@ESTALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, i32, i64)* @f2fs_nfs_get_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @f2fs_nfs_get_inode(%struct.super_block* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.f2fs_sb_info*, align 8
  %9 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = call %struct.f2fs_sb_info* @F2FS_SB(%struct.super_block* %10)
  store %struct.f2fs_sb_info* %11, %struct.f2fs_sb_info** %8, align 8
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @f2fs_check_nid_range(%struct.f2fs_sb_info* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @ESTALE, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.inode* @ERR_PTR(i32 %18)
  store %struct.inode* %19, %struct.inode** %4, align 8
  br label %52

20:                                               ; preds = %3
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.inode* @f2fs_iget(%struct.super_block* %21, i32 %22)
  store %struct.inode* %23, %struct.inode** %9, align 8
  %24 = load %struct.inode*, %struct.inode** %9, align 8
  %25 = call i64 @IS_ERR(%struct.inode* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.inode*, %struct.inode** %9, align 8
  %29 = call %struct.inode* @ERR_CAST(%struct.inode* %28)
  store %struct.inode* %29, %struct.inode** %4, align 8
  br label %52

30:                                               ; preds = %20
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.inode*, %struct.inode** %9, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %36, %37
  br label %39

39:                                               ; preds = %33, %30
  %40 = phi i1 [ false, %30 ], [ %38, %33 ]
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.inode*, %struct.inode** %9, align 8
  %46 = call i32 @iput(%struct.inode* %45)
  %47 = load i32, i32* @ESTALE, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.inode* @ERR_PTR(i32 %48)
  store %struct.inode* %49, %struct.inode** %4, align 8
  br label %52

50:                                               ; preds = %39
  %51 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %51, %struct.inode** %4, align 8
  br label %52

52:                                               ; preds = %50, %44, %27, %16
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %53
}

declare dso_local %struct.f2fs_sb_info* @F2FS_SB(%struct.super_block*) #1

declare dso_local i64 @f2fs_check_nid_range(%struct.f2fs_sb_info*, i32) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @f2fs_iget(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_CAST(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
