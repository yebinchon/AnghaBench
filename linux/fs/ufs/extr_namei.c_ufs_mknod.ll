; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_namei.c_ufs_mknod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_namei.c_ufs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @ufs_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @old_valid_dev(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %46

18:                                               ; preds = %4
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.inode* @ufs_new_inode(%struct.inode* %19, i32 %20)
  store %struct.inode* %21, %struct.inode** %10, align 8
  %22 = load %struct.inode*, %struct.inode** %10, align 8
  %23 = call i32 @PTR_ERR(%struct.inode* %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.inode*, %struct.inode** %10, align 8
  %25 = call i32 @IS_ERR(%struct.inode* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %18
  %28 = load %struct.inode*, %struct.inode** %10, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @init_special_inode(%struct.inode* %28, i32 %29, i32 %30)
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.inode*, %struct.inode** %10, align 8
  %36 = call i32 @UFS_I(%struct.inode* %35)
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @ufs_set_inode_dev(i32 %34, i32 %36, i32 %37)
  %39 = load %struct.inode*, %struct.inode** %10, align 8
  %40 = call i32 @mark_inode_dirty(%struct.inode* %39)
  %41 = load %struct.dentry*, %struct.dentry** %7, align 8
  %42 = load %struct.inode*, %struct.inode** %10, align 8
  %43 = call i32 @ufs_add_nondir(%struct.dentry* %41, %struct.inode* %42)
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %27, %18
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %15
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @old_valid_dev(i32) #1

declare dso_local %struct.inode* @ufs_new_inode(%struct.inode*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @ufs_set_inode_dev(i32, i32, i32) #1

declare dso_local i32 @UFS_I(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @ufs_add_nondir(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
