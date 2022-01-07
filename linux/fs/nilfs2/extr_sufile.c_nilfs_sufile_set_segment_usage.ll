; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_sufile.c_nilfs_sufile_set_segment_usage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_sufile.c_nilfs_sufile_set_segment_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_segment_usage = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_sufile_set_segment_usage(%struct.inode* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.nilfs_segment_usage*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @down_write(i32* %15)
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @nilfs_sufile_get_segment_usage_block(%struct.inode* %17, i32 %18, i32 0, %struct.buffer_head** %9)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %56

23:                                               ; preds = %4
  %24 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %25 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @kmap_atomic(i32 %26)
  store i8* %27, i8** %11, align 8
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = call %struct.nilfs_segment_usage* @nilfs_sufile_block_get_segment_usage(%struct.inode* %28, i32 %29, %struct.buffer_head* %30, i8* %31)
  store %struct.nilfs_segment_usage* %32, %struct.nilfs_segment_usage** %10, align 8
  %33 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %10, align 8
  %34 = call i32 @nilfs_segment_usage_error(%struct.nilfs_segment_usage* %33)
  %35 = call i32 @WARN_ON(i32 %34)
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %23
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @cpu_to_le64(i64 %39)
  %41 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %10, align 8
  %42 = getelementptr inbounds %struct.nilfs_segment_usage, %struct.nilfs_segment_usage* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %23
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @cpu_to_le32(i64 %44)
  %46 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %10, align 8
  %47 = getelementptr inbounds %struct.nilfs_segment_usage, %struct.nilfs_segment_usage* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @kunmap_atomic(i8* %48)
  %50 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %51 = call i32 @mark_buffer_dirty(%struct.buffer_head* %50)
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = call i32 @nilfs_mdt_mark_dirty(%struct.inode* %52)
  %54 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %55 = call i32 @brelse(%struct.buffer_head* %54)
  br label %56

56:                                               ; preds = %43, %22
  %57 = load %struct.inode*, %struct.inode** %5, align 8
  %58 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @up_write(i32* %59)
  %61 = load i32, i32* %12, align 4
  ret i32 %61
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @nilfs_sufile_get_segment_usage_block(%struct.inode*, i32, i32, %struct.buffer_head**) #1

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local %struct.nilfs_segment_usage* @nilfs_sufile_block_get_segment_usage(%struct.inode*, i32, %struct.buffer_head*, i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nilfs_segment_usage_error(%struct.nilfs_segment_usage*) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_mdt_mark_dirty(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
