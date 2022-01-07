; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_ioc_release_volatile_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_ioc_release_volatile_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@F2FS_BLKSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @f2fs_ioc_release_volatile_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_ioc_release_volatile_write(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = call %struct.inode* @file_inode(%struct.file* %6)
  store %struct.inode* %7, %struct.inode** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call i32 @inode_owner_or_capable(%struct.inode* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EACCES, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %45

14:                                               ; preds = %1
  %15 = load %struct.file*, %struct.file** %3, align 8
  %16 = call i32 @mnt_want_write_file(%struct.file* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %45

21:                                               ; preds = %14
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call i32 @inode_lock(%struct.inode* %22)
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = call i32 @f2fs_is_volatile_file(%struct.inode* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %39

28:                                               ; preds = %21
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = call i32 @f2fs_is_first_block_written(%struct.inode* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = call i32 @truncate_partial_data_page(%struct.inode* %33, i32 0, i32 1)
  store i32 %34, i32* %5, align 4
  br label %39

35:                                               ; preds = %28
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = load i32, i32* @F2FS_BLKSIZE, align 4
  %38 = call i32 @punch_hole(%struct.inode* %36, i32 0, i32 %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %35, %32, %27
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = call i32 @inode_unlock(%struct.inode* %40)
  %42 = load %struct.file*, %struct.file** %3, align 8
  %43 = call i32 @mnt_drop_write_file(%struct.file* %42)
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %39, %19, %11
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @inode_owner_or_capable(%struct.inode*) #1

declare dso_local i32 @mnt_want_write_file(%struct.file*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @f2fs_is_volatile_file(%struct.inode*) #1

declare dso_local i32 @f2fs_is_first_block_written(%struct.inode*) #1

declare dso_local i32 @truncate_partial_data_page(%struct.inode*, i32, i32) #1

declare dso_local i32 @punch_hole(%struct.inode*, i32, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @mnt_drop_write_file(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
