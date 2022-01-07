; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_vfs_submount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_vfs_submount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.file_system_type = type { i32 }

@init_user_ns = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@SB_SUBMOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vfsmount* @vfs_submount(%struct.dentry* %0, %struct.file_system_type* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.file_system_type*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store %struct.file_system_type* %1, %struct.file_system_type** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load %struct.dentry*, %struct.dentry** %6, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, @init_user_ns
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* @EPERM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.vfsmount* @ERR_PTR(i32 %18)
  store %struct.vfsmount* %19, %struct.vfsmount** %5, align 8
  br label %26

20:                                               ; preds = %4
  %21 = load %struct.file_system_type*, %struct.file_system_type** %7, align 8
  %22 = load i32, i32* @SB_SUBMOUNT, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call %struct.vfsmount* @vfs_kern_mount(%struct.file_system_type* %21, i32 %22, i8* %23, i8* %24)
  store %struct.vfsmount* %25, %struct.vfsmount** %5, align 8
  br label %26

26:                                               ; preds = %20, %16
  %27 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  ret %struct.vfsmount* %27
}

declare dso_local %struct.vfsmount* @ERR_PTR(i32) #1

declare dso_local %struct.vfsmount* @vfs_kern_mount(%struct.file_system_type*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
