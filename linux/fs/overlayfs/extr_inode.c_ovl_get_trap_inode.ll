; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_get_trap_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_get_trap_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.dentry = type { i32 }

@ENOTDIR = common dso_local global i32 0, align 4
@ovl_inode_test = common dso_local global i32 0, align 4
@ovl_inode_set = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ovl_get_trap_inode(%struct.super_block* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %8 = load %struct.dentry*, %struct.dentry** %5, align 8
  %9 = call %struct.inode* @d_inode(%struct.dentry* %8)
  store %struct.inode* %9, %struct.inode** %6, align 8
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = call i32 @d_is_dir(%struct.dentry* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOTDIR, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.inode* @ERR_PTR(i32 %15)
  store %struct.inode* %16, %struct.inode** %3, align 8
  br label %54

17:                                               ; preds = %2
  %18 = load %struct.super_block*, %struct.super_block** %4, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = ptrtoint %struct.inode* %19 to i64
  %21 = load i32, i32* @ovl_inode_test, align 4
  %22 = load i32, i32* @ovl_inode_set, align 4
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = call %struct.inode* @iget5_locked(%struct.super_block* %18, i64 %20, i32 %21, i32 %22, %struct.inode* %23)
  store %struct.inode* %24, %struct.inode** %7, align 8
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = icmp ne %struct.inode* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.inode* @ERR_PTR(i32 %29)
  store %struct.inode* %30, %struct.inode** %3, align 8
  br label %54

31:                                               ; preds = %17
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @I_NEW, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %31
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = call i32 @iput(%struct.inode* %39)
  %41 = load i32, i32* @ELOOP, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.inode* @ERR_PTR(i32 %42)
  store %struct.inode* %43, %struct.inode** %3, align 8
  br label %54

44:                                               ; preds = %31
  %45 = load i32, i32* @S_IFDIR, align 4
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @S_DEAD, align 4
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = call i32 @unlock_new_inode(%struct.inode* %51)
  %53 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %53, %struct.inode** %3, align 8
  br label %54

54:                                               ; preds = %44, %38, %27, %13
  %55 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %55
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @d_is_dir(%struct.dentry*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @iget5_locked(%struct.super_block*, i64, i32, i32, %struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
