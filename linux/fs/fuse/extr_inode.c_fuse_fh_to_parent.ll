; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_fh_to_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_fh_to_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { i32 }
%struct.fid = type { i64* }
%struct.fuse_inode_handle = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)* @fuse_fh_to_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @fuse_fh_to_parent(%struct.super_block* %0, %struct.fid* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.fid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fuse_inode_handle, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.fid* %1, %struct.fid** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 130
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 6
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %4
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %43

17:                                               ; preds = %13
  %18 = load %struct.fid*, %struct.fid** %7, align 8
  %19 = getelementptr inbounds %struct.fid, %struct.fid* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 3
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = shl i32 %23, 32
  %25 = getelementptr inbounds %struct.fuse_inode_handle, %struct.fuse_inode_handle* %10, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = load %struct.fid*, %struct.fid** %7, align 8
  %27 = getelementptr inbounds %struct.fid, %struct.fid* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 4
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = getelementptr inbounds %struct.fuse_inode_handle, %struct.fuse_inode_handle* %10, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 8
  %35 = load %struct.fid*, %struct.fid** %7, align 8
  %36 = getelementptr inbounds %struct.fid, %struct.fid* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 5
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.fuse_inode_handle, %struct.fuse_inode_handle* %10, i32 0, i32 1
  store i64 %39, i64* %40, align 8
  %41 = load %struct.super_block*, %struct.super_block** %6, align 8
  %42 = call %struct.dentry* @fuse_get_dentry(%struct.super_block* %41, %struct.fuse_inode_handle* %10)
  store %struct.dentry* %42, %struct.dentry** %5, align 8
  br label %43

43:                                               ; preds = %17, %16
  %44 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %44
}

declare dso_local %struct.dentry* @fuse_get_dentry(%struct.super_block*, %struct.fuse_inode_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
