; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_init_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_find_desc = type { i32, %struct.nfs_fattr* }
%struct.nfs_fattr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*)* @nfs_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_init_locked(%struct.inode* %0, i8* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nfs_find_desc*, align 8
  %6 = alloca %struct.nfs_fattr*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.nfs_find_desc*
  store %struct.nfs_find_desc* %8, %struct.nfs_find_desc** %5, align 8
  %9 = load %struct.nfs_find_desc*, %struct.nfs_find_desc** %5, align 8
  %10 = getelementptr inbounds %struct.nfs_find_desc, %struct.nfs_find_desc* %9, i32 0, i32 1
  %11 = load %struct.nfs_fattr*, %struct.nfs_fattr** %10, align 8
  store %struct.nfs_fattr* %11, %struct.nfs_fattr** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %14 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @set_nfs_fileid(%struct.inode* %12, i32 %15)
  %17 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %18 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = call i32 @NFS_FH(%struct.inode* %22)
  %24 = load %struct.nfs_find_desc*, %struct.nfs_find_desc** %5, align 8
  %25 = getelementptr inbounds %struct.nfs_find_desc, %struct.nfs_find_desc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @nfs_copy_fh(i32 %23, i32 %26)
  ret i32 0
}

declare dso_local i32 @set_nfs_fileid(%struct.inode*, i32) #1

declare dso_local i32 @nfs_copy_fh(i32, i32) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
