; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_namei.c_ufs_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_namei.c_ufs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.dentry = type { i32 }

@ufs_file_inode_operations = common dso_local global i32 0, align 4
@ufs_file_operations = common dso_local global i32 0, align 4
@ufs_aops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @ufs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call %struct.inode* @ufs_new_inode(%struct.inode* %11, i32 %12)
  store %struct.inode* %13, %struct.inode** %10, align 8
  %14 = load %struct.inode*, %struct.inode** %10, align 8
  %15 = call i64 @IS_ERR(%struct.inode* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.inode*, %struct.inode** %10, align 8
  %19 = call i32 @PTR_ERR(%struct.inode* %18)
  store i32 %19, i32* %5, align 4
  br label %34

20:                                               ; preds = %4
  %21 = load %struct.inode*, %struct.inode** %10, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 2
  store i32* @ufs_file_inode_operations, i32** %22, align 8
  %23 = load %struct.inode*, %struct.inode** %10, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 1
  store i32* @ufs_file_operations, i32** %24, align 8
  %25 = load %struct.inode*, %struct.inode** %10, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32* @ufs_aops, i32** %28, align 8
  %29 = load %struct.inode*, %struct.inode** %10, align 8
  %30 = call i32 @mark_inode_dirty(%struct.inode* %29)
  %31 = load %struct.dentry*, %struct.dentry** %7, align 8
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = call i32 @ufs_add_nondir(%struct.dentry* %31, %struct.inode* %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %20, %17
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.inode* @ufs_new_inode(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @ufs_add_nondir(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
