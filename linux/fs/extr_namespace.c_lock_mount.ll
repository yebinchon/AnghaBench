; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_lock_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_lock_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mountpoint = type { i32 }
%struct.path = type { %struct.dentry*, %struct.vfsmount* }
%struct.dentry = type { i32 }
%struct.vfsmount = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mountpoint* (%struct.path*)* @lock_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mountpoint* @lock_mount(%struct.path* %0) #0 {
  %2 = alloca %struct.mountpoint*, align 8
  %3 = alloca %struct.path*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.mountpoint*, align 8
  store %struct.path* %0, %struct.path** %3, align 8
  %7 = load %struct.path*, %struct.path** %3, align 8
  %8 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 0
  %9 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %9, %struct.dentry** %5, align 8
  br label %10

10:                                               ; preds = %52, %1
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @inode_lock(i32 %13)
  %15 = load %struct.dentry*, %struct.dentry** %5, align 8
  %16 = call i32 @cant_mount(%struct.dentry* %15)
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %10
  %20 = load %struct.dentry*, %struct.dentry** %5, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @inode_unlock(i32 %22)
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.mountpoint* @ERR_PTR(i32 %25)
  store %struct.mountpoint* %26, %struct.mountpoint** %2, align 8
  br label %71

27:                                               ; preds = %10
  %28 = call i32 (...) @namespace_lock()
  %29 = load %struct.path*, %struct.path** %3, align 8
  %30 = call %struct.vfsmount* @lookup_mnt(%struct.path* %29)
  store %struct.vfsmount* %30, %struct.vfsmount** %4, align 8
  %31 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %32 = icmp ne %struct.vfsmount* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @likely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %27
  %38 = load %struct.dentry*, %struct.dentry** %5, align 8
  %39 = call %struct.mountpoint* @get_mountpoint(%struct.dentry* %38)
  store %struct.mountpoint* %39, %struct.mountpoint** %6, align 8
  %40 = load %struct.mountpoint*, %struct.mountpoint** %6, align 8
  %41 = call i64 @IS_ERR(%struct.mountpoint* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = call i32 (...) @namespace_unlock()
  %45 = load %struct.dentry*, %struct.dentry** %5, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @inode_unlock(i32 %47)
  %49 = load %struct.mountpoint*, %struct.mountpoint** %6, align 8
  store %struct.mountpoint* %49, %struct.mountpoint** %2, align 8
  br label %71

50:                                               ; preds = %37
  %51 = load %struct.mountpoint*, %struct.mountpoint** %6, align 8
  store %struct.mountpoint* %51, %struct.mountpoint** %2, align 8
  br label %71

52:                                               ; preds = %27
  %53 = call i32 (...) @namespace_unlock()
  %54 = load %struct.path*, %struct.path** %3, align 8
  %55 = getelementptr inbounds %struct.path, %struct.path* %54, i32 0, i32 0
  %56 = load %struct.dentry*, %struct.dentry** %55, align 8
  %57 = getelementptr inbounds %struct.dentry, %struct.dentry* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @inode_unlock(i32 %58)
  %60 = load %struct.path*, %struct.path** %3, align 8
  %61 = call i32 @path_put(%struct.path* %60)
  %62 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %63 = load %struct.path*, %struct.path** %3, align 8
  %64 = getelementptr inbounds %struct.path, %struct.path* %63, i32 0, i32 1
  store %struct.vfsmount* %62, %struct.vfsmount** %64, align 8
  %65 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %66 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.dentry* @dget(i32 %67)
  %69 = load %struct.path*, %struct.path** %3, align 8
  %70 = getelementptr inbounds %struct.path, %struct.path* %69, i32 0, i32 0
  store %struct.dentry* %68, %struct.dentry** %70, align 8
  store %struct.dentry* %68, %struct.dentry** %5, align 8
  br label %10

71:                                               ; preds = %50, %43, %19
  %72 = load %struct.mountpoint*, %struct.mountpoint** %2, align 8
  ret %struct.mountpoint* %72
}

declare dso_local i32 @inode_lock(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cant_mount(%struct.dentry*) #1

declare dso_local i32 @inode_unlock(i32) #1

declare dso_local %struct.mountpoint* @ERR_PTR(i32) #1

declare dso_local i32 @namespace_lock(...) #1

declare dso_local %struct.vfsmount* @lookup_mnt(%struct.path*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.mountpoint* @get_mountpoint(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.mountpoint*) #1

declare dso_local i32 @namespace_unlock(...) #1

declare dso_local i32 @path_put(%struct.path*) #1

declare dso_local %struct.dentry* @dget(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
