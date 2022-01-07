; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_namei.c_ufs_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_namei.c_ufs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i8*, i32, i32*, %struct.TYPE_7__*, %struct.super_block* }
%struct.TYPE_7__ = type { i32* }
%struct.super_block = type { i32 }
%struct.dentry = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@page_symlink_inode_operations = common dso_local global i32 0, align 4
@ufs_aops = common dso_local global i32 0, align 4
@simple_symlink_inode_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @ufs_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 4
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.super_block*, %struct.super_block** %8, align 8
  %20 = getelementptr inbounds %struct.super_block, %struct.super_block* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ugt i32 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @ENAMETOOLONG, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %98

26:                                               ; preds = %3
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = load i32, i32* @S_IFLNK, align 4
  %29 = load i32, i32* @S_IRWXUGO, align 4
  %30 = or i32 %28, %29
  %31 = call %struct.inode* @ufs_new_inode(%struct.inode* %27, i32 %30)
  store %struct.inode* %31, %struct.inode** %11, align 8
  %32 = load %struct.inode*, %struct.inode** %11, align 8
  %33 = call i32 @PTR_ERR(%struct.inode* %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.inode*, %struct.inode** %11, align 8
  %35 = call i64 @IS_ERR(%struct.inode* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %98

39:                                               ; preds = %26
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.super_block*, %struct.super_block** %8, align 8
  %42 = call %struct.TYPE_9__* @UFS_SB(%struct.super_block* %41)
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ugt i32 %40, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %39
  %49 = load %struct.inode*, %struct.inode** %11, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 2
  store i32* @page_symlink_inode_operations, i32** %50, align 8
  %51 = load %struct.inode*, %struct.inode** %11, align 8
  %52 = call i32 @inode_nohighmem(%struct.inode* %51)
  %53 = load %struct.inode*, %struct.inode** %11, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 3
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32* @ufs_aops, i32** %56, align 8
  %57 = load %struct.inode*, %struct.inode** %11, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @page_symlink(%struct.inode* %57, i8* %58, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %48
  br label %92

64:                                               ; preds = %48
  br label %86

65:                                               ; preds = %39
  %66 = load %struct.inode*, %struct.inode** %11, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 2
  store i32* @simple_symlink_inode_operations, i32** %67, align 8
  %68 = load %struct.inode*, %struct.inode** %11, align 8
  %69 = call %struct.TYPE_10__* @UFS_I(%struct.inode* %68)
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.inode*, %struct.inode** %11, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load %struct.inode*, %struct.inode** %11, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @memcpy(i8* %78, i8* %79, i32 %80)
  %82 = load i32, i32* %10, align 4
  %83 = sub i32 %82, 1
  %84 = load %struct.inode*, %struct.inode** %11, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %65, %64
  %87 = load %struct.inode*, %struct.inode** %11, align 8
  %88 = call i32 @mark_inode_dirty(%struct.inode* %87)
  %89 = load %struct.dentry*, %struct.dentry** %6, align 8
  %90 = load %struct.inode*, %struct.inode** %11, align 8
  %91 = call i32 @ufs_add_nondir(%struct.dentry* %89, %struct.inode* %90)
  store i32 %91, i32* %4, align 4
  br label %98

92:                                               ; preds = %63
  %93 = load %struct.inode*, %struct.inode** %11, align 8
  %94 = call i32 @inode_dec_link_count(%struct.inode* %93)
  %95 = load %struct.inode*, %struct.inode** %11, align 8
  %96 = call i32 @discard_new_inode(%struct.inode* %95)
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %92, %86, %37, %23
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.inode* @ufs_new_inode(%struct.inode*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.TYPE_9__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @inode_nohighmem(%struct.inode*) #1

declare dso_local i32 @page_symlink(%struct.inode*, i8*, i32) #1

declare dso_local %struct.TYPE_10__* @UFS_I(%struct.inode*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @ufs_add_nondir(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @discard_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
