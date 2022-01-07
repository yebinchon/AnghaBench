; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_inode.c_hfs_file_fsync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_inode.c_hfs_file_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32, i32)* @hfs_file_fsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfs_file_fsync(%struct.file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.file*, %struct.file** %6, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %10, align 8
  %19 = load %struct.file*, %struct.file** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @file_write_and_wait_range(%struct.file* %19, i32 %20, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %5, align 4
  br label %51

27:                                               ; preds = %4
  %28 = load %struct.inode*, %struct.inode** %10, align 8
  %29 = call i32 @inode_lock(%struct.inode* %28)
  %30 = load %struct.inode*, %struct.inode** %10, align 8
  %31 = call i32 @write_inode_now(%struct.inode* %30, i32 0)
  store i32 %31, i32* %12, align 4
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load %struct.super_block*, %struct.super_block** %33, align 8
  store %struct.super_block* %34, %struct.super_block** %11, align 8
  %35 = load %struct.super_block*, %struct.super_block** %11, align 8
  %36 = call %struct.TYPE_4__* @HFS_SB(%struct.super_block* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @flush_delayed_work(i32* %37)
  %39 = load %struct.super_block*, %struct.super_block** %11, align 8
  %40 = getelementptr inbounds %struct.super_block, %struct.super_block* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @sync_blockdev(i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %27
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %45, %27
  %48 = load %struct.inode*, %struct.inode** %10, align 8
  %49 = call i32 @inode_unlock(%struct.inode* %48)
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %47, %25
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @file_write_and_wait_range(%struct.file*, i32, i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @write_inode_now(%struct.inode*, i32) #1

declare dso_local i32 @flush_delayed_work(i32*) #1

declare dso_local %struct.TYPE_4__* @HFS_SB(%struct.super_block*) #1

declare dso_local i32 @sync_blockdev(i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
