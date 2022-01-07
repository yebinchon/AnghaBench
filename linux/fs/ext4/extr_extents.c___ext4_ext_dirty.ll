; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c___ext4_ext_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c___ext4_ext_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { i64 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ext4_ext_dirty(i8* %0, i32 %1, i32* %2, %struct.inode* %3, %struct.ext4_ext_path* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ext4_ext_path*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  store %struct.ext4_ext_path* %4, %struct.ext4_ext_path** %10, align 8
  %12 = load %struct.inode*, %struct.inode** %9, align 8
  %13 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @rwsem_is_locked(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %21 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %5
  %25 = load %struct.inode*, %struct.inode** %9, align 8
  %26 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %27 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @ext_block_hdr(i64 %28)
  %30 = call i32 @ext4_extent_block_csum_set(%struct.inode* %25, i32 %29)
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load %struct.inode*, %struct.inode** %9, align 8
  %35 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %36 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @__ext4_handle_dirty_metadata(i8* %31, i32 %32, i32* %33, %struct.inode* %34, i64 %37)
  store i32 %38, i32* %11, align 4
  br label %43

39:                                               ; preds = %5
  %40 = load i32*, i32** %8, align 8
  %41 = load %struct.inode*, %struct.inode** %9, align 8
  %42 = call i32 @ext4_mark_inode_dirty(i32* %40, %struct.inode* %41)
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %39, %24
  %44 = load i32, i32* %11, align 4
  ret i32 %44
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rwsem_is_locked(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_extent_block_csum_set(%struct.inode*, i32) #1

declare dso_local i32 @ext_block_hdr(i64) #1

declare dso_local i32 @__ext4_handle_dirty_metadata(i8*, i32, i32*, %struct.inode*, i64) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
