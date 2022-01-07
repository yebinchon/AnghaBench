; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_workdir_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_workdir_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.vfsmount = type { i32 }
%struct.dentry = type { i32 }
%struct.path = type { %struct.dentry*, %struct.vfsmount* }

@I_MUTEX_PARENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ovl_workdir_cleanup(%struct.inode* %0, %struct.vfsmount* %1, %struct.dentry* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.vfsmount*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.path, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.dentry*, %struct.dentry** %7, align 8
  %12 = call i32 @d_is_dir(%struct.dentry* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %14, %4
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = load %struct.dentry*, %struct.dentry** %7, align 8
  %20 = call i32 @ovl_cleanup(%struct.inode* %18, %struct.dentry* %19)
  br label %43

21:                                               ; preds = %14
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = load %struct.dentry*, %struct.dentry** %7, align 8
  %24 = call i32 @ovl_do_rmdir(%struct.inode* %22, %struct.dentry* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  %29 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %29, %struct.dentry** %28, align 8
  %30 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 1
  %31 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  store %struct.vfsmount* %31, %struct.vfsmount** %30, align 8
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = call i32 @inode_unlock(%struct.inode* %32)
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i32 @ovl_workdir_cleanup_recurse(%struct.path* %10, i32 %35)
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = load i32, i32* @I_MUTEX_PARENT, align 4
  %39 = call i32 @inode_lock_nested(%struct.inode* %37, i32 %38)
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = load %struct.dentry*, %struct.dentry** %7, align 8
  %42 = call i32 @ovl_cleanup(%struct.inode* %40, %struct.dentry* %41)
  br label %43

43:                                               ; preds = %17, %27, %21
  ret void
}

declare dso_local i32 @d_is_dir(%struct.dentry*) #1

declare dso_local i32 @ovl_cleanup(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @ovl_do_rmdir(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @ovl_workdir_cleanup_recurse(%struct.path*, i32) #1

declare dso_local i32 @inode_lock_nested(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
