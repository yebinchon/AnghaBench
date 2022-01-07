; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_xattr.c___jfs_xattr_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_xattr.c___jfs_xattr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.jfs_inode_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i8*, i64, i32)* @__jfs_xattr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__jfs_xattr_set(%struct.inode* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.jfs_inode_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %14)
  store %struct.jfs_inode_info* %15, %struct.jfs_inode_info** %11, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @txBegin(i32 %18, i32 0)
  store i32 %19, i32* %12, align 4
  %20 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %11, align 8
  %21 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @__jfs_setxattr(i32 %23, %struct.inode* %24, i8* %25, i8* %26, i64 %27, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %5
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @txCommit(i32 %33, i32 1, %struct.inode** %6, i32 0)
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %32, %5
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @txEnd(i32 %36)
  %38 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %11, align 8
  %39 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %13, align 4
  ret i32 %41
}

declare dso_local %struct.jfs_inode_info* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @txBegin(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__jfs_setxattr(i32, %struct.inode*, i8*, i8*, i64, i32) #1

declare dso_local i32 @txCommit(i32, i32, %struct.inode**, i32) #1

declare dso_local i32 @txEnd(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
