; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_imap.c_diInitInode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_imap.c_diInitInode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.iag = type { i32, i32* }
%struct.jfs_inode_info = type { i32, i32, i32 }

@L2INOSPERIAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32, i32, i32, %struct.iag*)* @diInitInode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diInitInode(%struct.inode* %0, i32 %1, i32 %2, i32 %3, %struct.iag* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iag*, align 8
  %11 = alloca %struct.jfs_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.iag* %4, %struct.iag** %10, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %12)
  store %struct.jfs_inode_info* %13, %struct.jfs_inode_info** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @L2INOSPERIAG, align 4
  %16 = shl i32 %14, %15
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %16, %17
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.iag*, %struct.iag** %10, align 8
  %22 = getelementptr inbounds %struct.iag, %struct.iag* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %11, align 8
  %29 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.iag*, %struct.iag** %10, align 8
  %31 = getelementptr inbounds %struct.iag, %struct.iag* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @le64_to_cpu(i32 %32)
  %34 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %11, align 8
  %35 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %11, align 8
  %37 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %36, i32 0, i32 0
  store i32 -1, i32* %37, align 4
  ret void
}

declare dso_local %struct.jfs_inode_info* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
