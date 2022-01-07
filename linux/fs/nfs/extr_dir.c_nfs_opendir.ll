; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_opendir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_opendir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.nfs_open_dir_context* }
%struct.nfs_open_dir_context = type { i32 }

@FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"NFS: open dir(%pD2)\0A\00", align 1
@NFSIOS_VFSOPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @nfs_opendir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_opendir(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs_open_dir_context*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @FILE, align 4
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call i32 @dfprintk(i32 %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.file* %8)
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = load i32, i32* @NFSIOS_VFSOPEN, align 4
  %12 = call i32 @nfs_inc_stats(%struct.inode* %10, i32 %11)
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = call i32 (...) @current_cred()
  %15 = call %struct.nfs_open_dir_context* @alloc_nfs_open_dir_context(%struct.inode* %13, i32 %14)
  store %struct.nfs_open_dir_context* %15, %struct.nfs_open_dir_context** %6, align 8
  %16 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %6, align 8
  %17 = call i64 @IS_ERR(%struct.nfs_open_dir_context* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %6, align 8
  %21 = call i32 @PTR_ERR(%struct.nfs_open_dir_context* %20)
  store i32 %21, i32* %5, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %6, align 8
  %24 = load %struct.file*, %struct.file** %4, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  store %struct.nfs_open_dir_context* %23, %struct.nfs_open_dir_context** %25, align 8
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @dfprintk(i32, i8*, %struct.file*) #1

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local %struct.nfs_open_dir_context* @alloc_nfs_open_dir_context(%struct.inode*, i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local i64 @IS_ERR(%struct.nfs_open_dir_context*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs_open_dir_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
