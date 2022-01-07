; ModuleID = '/home/carl/AnghaBench/linux/fs/tracefs/extr_inode.c_tracefs_apply_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/tracefs/extr_inode.c_tracefs_apply_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_2__*, %struct.tracefs_fs_info* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32, i32, i32 }
%struct.tracefs_fs_info = type { %struct.tracefs_mount_opts }
%struct.tracefs_mount_opts = type { i32, i32, i32 }

@S_IALLUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @tracefs_apply_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracefs_apply_options(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.tracefs_fs_info*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.tracefs_mount_opts*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %6 = load %struct.super_block*, %struct.super_block** %2, align 8
  %7 = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i32 0, i32 1
  %8 = load %struct.tracefs_fs_info*, %struct.tracefs_fs_info** %7, align 8
  store %struct.tracefs_fs_info* %8, %struct.tracefs_fs_info** %3, align 8
  %9 = load %struct.super_block*, %struct.super_block** %2, align 8
  %10 = getelementptr inbounds %struct.super_block, %struct.super_block* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %4, align 8
  %14 = load %struct.tracefs_fs_info*, %struct.tracefs_fs_info** %3, align 8
  %15 = getelementptr inbounds %struct.tracefs_fs_info, %struct.tracefs_fs_info* %14, i32 0, i32 0
  store %struct.tracefs_mount_opts* %15, %struct.tracefs_mount_opts** %5, align 8
  %16 = load i32, i32* @S_IALLUGO, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.tracefs_mount_opts*, %struct.tracefs_mount_opts** %5, align 8
  %23 = getelementptr inbounds %struct.tracefs_mount_opts, %struct.tracefs_mount_opts* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.tracefs_mount_opts*, %struct.tracefs_mount_opts** %5, align 8
  %30 = getelementptr inbounds %struct.tracefs_mount_opts, %struct.tracefs_mount_opts* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.tracefs_mount_opts*, %struct.tracefs_mount_opts** %5, align 8
  %35 = getelementptr inbounds %struct.tracefs_mount_opts, %struct.tracefs_mount_opts* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
