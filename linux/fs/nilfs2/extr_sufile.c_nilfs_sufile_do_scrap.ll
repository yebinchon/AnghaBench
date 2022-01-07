; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_sufile.c_nilfs_sufile_do_scrap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_sufile.c_nilfs_sufile_do_scrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_segment_usage = type { i64, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@NILFS_SEGMENT_USAGE_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_sufile_do_scrap(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, %struct.buffer_head* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.nilfs_segment_usage*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %8, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %14 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @kmap_atomic(i32 %15)
  store i8* %16, i8** %10, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call %struct.nilfs_segment_usage* @nilfs_sufile_block_get_segment_usage(%struct.inode* %17, i32 %18, %struct.buffer_head* %19, i8* %20)
  store %struct.nilfs_segment_usage* %21, %struct.nilfs_segment_usage** %9, align 8
  %22 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %9, align 8
  %23 = getelementptr inbounds %struct.nilfs_segment_usage, %struct.nilfs_segment_usage* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @NILFS_SEGMENT_USAGE_DIRTY, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = call i64 @cpu_to_le32(i32 %26)
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %4
  %30 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %9, align 8
  %31 = getelementptr inbounds %struct.nilfs_segment_usage, %struct.nilfs_segment_usage* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @cpu_to_le32(i32 0)
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @kunmap_atomic(i8* %36)
  br label %76

38:                                               ; preds = %29, %4
  %39 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %9, align 8
  %40 = call i32 @nilfs_segment_usage_clean(%struct.nilfs_segment_usage* %39)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %9, align 8
  %42 = call i32 @nilfs_segment_usage_dirty(%struct.nilfs_segment_usage* %41)
  store i32 %42, i32* %12, align 4
  %43 = call i32 @cpu_to_le64(i32 0)
  %44 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %9, align 8
  %45 = getelementptr inbounds %struct.nilfs_segment_usage, %struct.nilfs_segment_usage* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = call i64 @cpu_to_le32(i32 0)
  %47 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %9, align 8
  %48 = getelementptr inbounds %struct.nilfs_segment_usage, %struct.nilfs_segment_usage* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* @NILFS_SEGMENT_USAGE_DIRTY, align 4
  %50 = call i32 @BIT(i32 %49)
  %51 = call i64 @cpu_to_le32(i32 %50)
  %52 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %9, align 8
  %53 = getelementptr inbounds %struct.nilfs_segment_usage, %struct.nilfs_segment_usage* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @kunmap_atomic(i8* %54)
  %56 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 -1, i32 0
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 0, i32 1
  %65 = call i32 @nilfs_sufile_mod_counter(%struct.buffer_head* %56, i32 %60, i32 %64)
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  %68 = call %struct.TYPE_2__* @NILFS_SUI(%struct.inode* %67)
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, %66
  store i32 %71, i32* %69, align 4
  %72 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %73 = call i32 @mark_buffer_dirty(%struct.buffer_head* %72)
  %74 = load %struct.inode*, %struct.inode** %5, align 8
  %75 = call i32 @nilfs_mdt_mark_dirty(%struct.inode* %74)
  br label %76

76:                                               ; preds = %38, %35
  ret void
}

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local %struct.nilfs_segment_usage* @nilfs_sufile_block_get_segment_usage(%struct.inode*, i32, %struct.buffer_head*, i8*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @nilfs_segment_usage_clean(%struct.nilfs_segment_usage*) #1

declare dso_local i32 @nilfs_segment_usage_dirty(%struct.nilfs_segment_usage*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @nilfs_sufile_mod_counter(%struct.buffer_head*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @NILFS_SUI(%struct.inode*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_mdt_mark_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
