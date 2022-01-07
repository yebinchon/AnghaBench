; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_inode.c_kernfs_iop_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_inode.c_kernfs_iop_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32 }
%struct.inode = type { %struct.kernfs_node* }
%struct.kernfs_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@kernfs_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernfs_iop_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.kernfs_node*, align 8
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = call %struct.inode* @d_inode(%struct.dentry* %9)
  store %struct.inode* %10, %struct.inode** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load %struct.kernfs_node*, %struct.kernfs_node** %12, align 8
  store %struct.kernfs_node* %13, %struct.kernfs_node** %7, align 8
  %14 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %15 = icmp ne %struct.kernfs_node* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %41

19:                                               ; preds = %2
  %20 = call i32 @mutex_lock(i32* @kernfs_mutex)
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = load %struct.iattr*, %struct.iattr** %5, align 8
  %23 = call i32 @setattr_prepare(%struct.dentry* %21, %struct.iattr* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %38

27:                                               ; preds = %19
  %28 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %29 = load %struct.iattr*, %struct.iattr** %5, align 8
  %30 = call i32 @__kernfs_setattr(%struct.kernfs_node* %28, %struct.iattr* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %38

34:                                               ; preds = %27
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = load %struct.iattr*, %struct.iattr** %5, align 8
  %37 = call i32 @setattr_copy(%struct.inode* %35, %struct.iattr* %36)
  br label %38

38:                                               ; preds = %34, %33, %26
  %39 = call i32 @mutex_unlock(i32* @kernfs_mutex)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %16
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @setattr_prepare(%struct.dentry*, %struct.iattr*) #1

declare dso_local i32 @__kernfs_setattr(%struct.kernfs_node*, %struct.iattr*) #1

declare dso_local i32 @setattr_copy(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
