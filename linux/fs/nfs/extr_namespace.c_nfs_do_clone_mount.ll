; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_namespace.c_nfs_do_clone_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_namespace.c_nfs_do_clone_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.nfs_server = type { i32 }
%struct.nfs_clone_mount = type { i32 }

@nfs_xdev_fs_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vfsmount* (%struct.nfs_server*, i8*, %struct.nfs_clone_mount*)* @nfs_do_clone_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vfsmount* @nfs_do_clone_mount(%struct.nfs_server* %0, i8* %1, %struct.nfs_clone_mount* %2) #0 {
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nfs_clone_mount*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.nfs_clone_mount* %2, %struct.nfs_clone_mount** %6, align 8
  %7 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %6, align 8
  %8 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %6, align 8
  %12 = call %struct.vfsmount* @vfs_submount(i32 %9, i32* @nfs_xdev_fs_type, i8* %10, %struct.nfs_clone_mount* %11)
  ret %struct.vfsmount* %12
}

declare dso_local %struct.vfsmount* @vfs_submount(i32, i32*, i8*, %struct.nfs_clone_mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
