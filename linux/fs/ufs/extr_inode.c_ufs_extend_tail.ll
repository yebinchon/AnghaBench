; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_ufs_extend_tail.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_ufs_extend_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.page = type { i32 }
%struct.ufs_inode_info = type { i32 }
%struct.ufs_sb_private_info = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.ufs_sb_private_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32*, %struct.page*)* @ufs_extend_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_extend_tail(%struct.inode* %0, i32 %1, i32* %2, %struct.page* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.ufs_inode_info*, align 8
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca %struct.ufs_sb_private_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.page* %3, %struct.page** %8, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call %struct.ufs_inode_info* @UFS_I(%struct.inode* %17)
  store %struct.ufs_inode_info* %18, %struct.ufs_inode_info** %9, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load %struct.super_block*, %struct.super_block** %20, align 8
  store %struct.super_block* %21, %struct.super_block** %10, align 8
  %22 = load %struct.super_block*, %struct.super_block** %10, align 8
  %23 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %24, align 8
  store %struct.ufs_sb_private_info* %25, %struct.ufs_sb_private_info** %11, align 8
  %26 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %9, align 8
  %27 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @ufs_fragstoblks(i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %11, align 8
  %34 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %32, %35
  %37 = icmp ult i32 %31, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %11, align 8
  %41 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %39, %42
  %44 = add i32 %43, 1
  store i32 %44, i32* %14, align 4
  br label %49

45:                                               ; preds = %4
  %46 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %11, align 8
  %47 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %14, align 4
  br label %49

49:                                               ; preds = %45, %38
  %50 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %11, align 8
  %51 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %9, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i8* @ufs_get_direct_data_ptr(%struct.ufs_sb_private_info* %50, %struct.ufs_inode_info* %51, i32 %52)
  store i8* %53, i8** %15, align 8
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.super_block*, %struct.super_block** %10, align 8
  %58 = load i8*, i8** %15, align 8
  %59 = call i32 @ufs_data_ptr_to_cpu(%struct.super_block* %57, i8* %58)
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %11, align 8
  %63 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %61, %64
  %66 = sub i32 %60, %65
  %67 = load i32*, i32** %7, align 8
  %68 = load %struct.page*, %struct.page** %8, align 8
  %69 = call i32 @ufs_new_fragments(%struct.inode* %54, i8* %55, i32 %56, i32 %59, i32 %66, i32* %67, %struct.page* %68)
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i32
  ret i32 %72
}

declare dso_local %struct.ufs_inode_info* @UFS_I(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @ufs_fragstoblks(i32) #1

declare dso_local i8* @ufs_get_direct_data_ptr(%struct.ufs_sb_private_info*, %struct.ufs_inode_info*, i32) #1

declare dso_local i32 @ufs_new_fragments(%struct.inode*, i8*, i32, i32, i32, i32*, %struct.page*) #1

declare dso_local i32 @ufs_data_ptr_to_cpu(%struct.super_block*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
