; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_file.c_ext4_llseek.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_file.c_ext4_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@ext4_iomap_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext4_llseek(%struct.file* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %8, align 8
  %15 = load %struct.inode*, %struct.inode** %8, align 8
  %16 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %17 = call i32 @ext4_test_inode_flag(%struct.inode* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = call %struct.TYPE_5__* @EXT4_SB(%struct.TYPE_6__* %22)
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  br label %32

26:                                               ; preds = %3
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %9, align 8
  br label %32

32:                                               ; preds = %26, %19
  %33 = load i32, i32* %7, align 4
  switch i32 %33, label %34 [
    i32 128, label %42
    i32 129, label %50
  ]

34:                                               ; preds = %32
  %35 = load %struct.file*, %struct.file** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = call i32 @i_size_read(%struct.inode* %39)
  %41 = call i64 @generic_file_llseek_size(%struct.file* %35, i64 %36, i32 %37, i64 %38, i32 %40)
  store i64 %41, i64* %4, align 8
  br label %68

42:                                               ; preds = %32
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = call i32 @inode_lock_shared(%struct.inode* %43)
  %45 = load %struct.inode*, %struct.inode** %8, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @iomap_seek_hole(%struct.inode* %45, i64 %46, i32* @ext4_iomap_ops)
  store i64 %47, i64* %6, align 8
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  %49 = call i32 @inode_unlock_shared(%struct.inode* %48)
  br label %58

50:                                               ; preds = %32
  %51 = load %struct.inode*, %struct.inode** %8, align 8
  %52 = call i32 @inode_lock_shared(%struct.inode* %51)
  %53 = load %struct.inode*, %struct.inode** %8, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i64 @iomap_seek_data(%struct.inode* %53, i64 %54, i32* @ext4_iomap_ops)
  store i64 %55, i64* %6, align 8
  %56 = load %struct.inode*, %struct.inode** %8, align 8
  %57 = call i32 @inode_unlock_shared(%struct.inode* %56)
  br label %58

58:                                               ; preds = %50, %42
  %59 = load i64, i64* %6, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i64, i64* %6, align 8
  store i64 %62, i64* %4, align 8
  br label %68

63:                                               ; preds = %58
  %64 = load %struct.file*, %struct.file** %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @vfs_setpos(%struct.file* %64, i64 %65, i64 %66)
  store i64 %67, i64* %4, align 8
  br label %68

68:                                               ; preds = %63, %61, %34
  %69 = load i64, i64* %4, align 8
  ret i64 %69
}

declare dso_local i32 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local %struct.TYPE_5__* @EXT4_SB(%struct.TYPE_6__*) #1

declare dso_local i64 @generic_file_llseek_size(%struct.file*, i64, i32, i64, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @inode_lock_shared(%struct.inode*) #1

declare dso_local i64 @iomap_seek_hole(%struct.inode*, i64, i32*) #1

declare dso_local i32 @inode_unlock_shared(%struct.inode*) #1

declare dso_local i64 @iomap_seek_data(%struct.inode*, i64, i32*) #1

declare dso_local i64 @vfs_setpos(%struct.file*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
