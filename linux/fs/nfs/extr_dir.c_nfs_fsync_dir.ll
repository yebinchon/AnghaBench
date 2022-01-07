; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_fsync_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_fsync_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }

@FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"NFS: fsync dir(%pD2) datasync %d\0A\00", align 1
@NFSIOS_VFSFSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32, i32)* @nfs_fsync_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_fsync_dir(%struct.file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.inode* @file_inode(%struct.file* %10)
  store %struct.inode* %11, %struct.inode** %9, align 8
  %12 = load i32, i32* @FILE, align 4
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @dfprintk(i32 %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.file* %13, i32 %14)
  %16 = load %struct.inode*, %struct.inode** %9, align 8
  %17 = call i32 @inode_lock(%struct.inode* %16)
  %18 = load %struct.inode*, %struct.inode** %9, align 8
  %19 = load i32, i32* @NFSIOS_VFSFSYNC, align 4
  %20 = call i32 @nfs_inc_stats(%struct.inode* %18, i32 %19)
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = call i32 @inode_unlock(%struct.inode* %21)
  ret i32 0
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @dfprintk(i32, i8*, %struct.file*, i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
