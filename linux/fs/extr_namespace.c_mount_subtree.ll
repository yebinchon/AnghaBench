; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_mount_subtree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_mount_subtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.vfsmount = type { %struct.super_block*, i32 }
%struct.super_block = type { i32, i32 }
%struct.mount = type { i32, %struct.mnt_namespace* }
%struct.mnt_namespace = type { i32, i32, %struct.mount* }
%struct.path = type { %struct.dentry*, %struct.vfsmount* }

@init_user_ns = common dso_local global i32 0, align 4
@LOOKUP_FOLLOW = common dso_local global i32 0, align 4
@LOOKUP_AUTOMOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @mount_subtree(%struct.vfsmount* %0, i8* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mount*, align 8
  %7 = alloca %struct.mnt_namespace*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.path, align 8
  %10 = alloca i32, align 4
  store %struct.vfsmount* %0, %struct.vfsmount** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %12 = call %struct.mount* @real_mount(%struct.vfsmount* %11)
  store %struct.mount* %12, %struct.mount** %6, align 8
  %13 = call %struct.mnt_namespace* @alloc_mnt_ns(i32* @init_user_ns, i32 1)
  store %struct.mnt_namespace* %13, %struct.mnt_namespace** %7, align 8
  %14 = load %struct.mnt_namespace*, %struct.mnt_namespace** %7, align 8
  %15 = call i64 @IS_ERR(%struct.mnt_namespace* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %19 = call i32 @mntput(%struct.vfsmount* %18)
  %20 = load %struct.mnt_namespace*, %struct.mnt_namespace** %7, align 8
  %21 = call %struct.dentry* @ERR_CAST(%struct.mnt_namespace* %20)
  store %struct.dentry* %21, %struct.dentry** %3, align 8
  br label %70

22:                                               ; preds = %2
  %23 = load %struct.mnt_namespace*, %struct.mnt_namespace** %7, align 8
  %24 = load %struct.mount*, %struct.mount** %6, align 8
  %25 = getelementptr inbounds %struct.mount, %struct.mount* %24, i32 0, i32 1
  store %struct.mnt_namespace* %23, %struct.mnt_namespace** %25, align 8
  %26 = load %struct.mount*, %struct.mount** %6, align 8
  %27 = load %struct.mnt_namespace*, %struct.mnt_namespace** %7, align 8
  %28 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %27, i32 0, i32 2
  store %struct.mount* %26, %struct.mount** %28, align 8
  %29 = load %struct.mnt_namespace*, %struct.mnt_namespace** %7, align 8
  %30 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.mount*, %struct.mount** %6, align 8
  %34 = getelementptr inbounds %struct.mount, %struct.mount* %33, i32 0, i32 0
  %35 = load %struct.mnt_namespace*, %struct.mnt_namespace** %7, align 8
  %36 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %35, i32 0, i32 0
  %37 = call i32 @list_add(i32* %34, i32* %36)
  %38 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %39 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %44 = load i32, i32* @LOOKUP_AUTOMOUNT, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @vfs_path_lookup(i32 %40, %struct.vfsmount* %41, i8* %42, i32 %45, %struct.path* %9)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.mnt_namespace*, %struct.mnt_namespace** %7, align 8
  %48 = call i32 @put_mnt_ns(%struct.mnt_namespace* %47)
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %22
  %52 = load i32, i32* %10, align 4
  %53 = call %struct.dentry* @ERR_PTR(i32 %52)
  store %struct.dentry* %53, %struct.dentry** %3, align 8
  br label %70

54:                                               ; preds = %22
  %55 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 1
  %56 = load %struct.vfsmount*, %struct.vfsmount** %55, align 8
  %57 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %56, i32 0, i32 0
  %58 = load %struct.super_block*, %struct.super_block** %57, align 8
  store %struct.super_block* %58, %struct.super_block** %8, align 8
  %59 = load %struct.super_block*, %struct.super_block** %8, align 8
  %60 = getelementptr inbounds %struct.super_block, %struct.super_block* %59, i32 0, i32 1
  %61 = call i32 @atomic_inc(i32* %60)
  %62 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 1
  %63 = load %struct.vfsmount*, %struct.vfsmount** %62, align 8
  %64 = call i32 @mntput(%struct.vfsmount* %63)
  %65 = load %struct.super_block*, %struct.super_block** %8, align 8
  %66 = getelementptr inbounds %struct.super_block, %struct.super_block* %65, i32 0, i32 0
  %67 = call i32 @down_write(i32* %66)
  %68 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 0
  %69 = load %struct.dentry*, %struct.dentry** %68, align 8
  store %struct.dentry* %69, %struct.dentry** %3, align 8
  br label %70

70:                                               ; preds = %54, %51, %17
  %71 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %71
}

declare dso_local %struct.mount* @real_mount(%struct.vfsmount*) #1

declare dso_local %struct.mnt_namespace* @alloc_mnt_ns(i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mnt_namespace*) #1

declare dso_local i32 @mntput(%struct.vfsmount*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.mnt_namespace*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @vfs_path_lookup(i32, %struct.vfsmount*, i8*, i32, %struct.path*) #1

declare dso_local i32 @put_mnt_ns(%struct.mnt_namespace*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @down_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
