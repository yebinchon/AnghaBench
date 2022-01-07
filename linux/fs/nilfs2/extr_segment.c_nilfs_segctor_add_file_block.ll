; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_add_file_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_add_file_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i64, i32, %struct.nilfs_segment_buffer* }
%struct.nilfs_segment_buffer = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.buffer_head = type { i32 }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_sc_info*, %struct.buffer_head*, %struct.inode*, i32)* @nilfs_segctor_add_file_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_segctor_add_file_block(%struct.nilfs_sc_info* %0, %struct.buffer_head* %1, %struct.inode* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nilfs_sc_info*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nilfs_segment_buffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %44, %4
  %14 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %6, align 8
  %15 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %14, i32 0, i32 2
  %16 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %15, align 8
  store %struct.nilfs_segment_buffer* %16, %struct.nilfs_segment_buffer** %10, align 8
  %17 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %6, align 8
  %18 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %6, align 8
  %19 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %18, i32 0, i32 1
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @nilfs_segctor_segsum_block_required(%struct.nilfs_sc_info* %17, i32* %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %10, align 8
  %23 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = add nsw i64 %28, 1
  %30 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %10, align 8
  %31 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %13
  %35 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %6, align 8
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = call i32 @nilfs_segctor_end_finfo(%struct.nilfs_sc_info* %35, %struct.inode* %36)
  %38 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %6, align 8
  %39 = call i32 @nilfs_segctor_feed_segment(%struct.nilfs_sc_info* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %5, align 4
  br label %81

44:                                               ; preds = %34
  br label %13

45:                                               ; preds = %13
  %46 = load i32, i32* %11, align 4
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %10, align 8
  %51 = call i32 @nilfs_segbuf_extend_segsum(%struct.nilfs_segment_buffer* %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %79

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %45
  %58 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %6, align 8
  %59 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %6, align 8
  %64 = load %struct.inode*, %struct.inode** %8, align 8
  %65 = call i32 @nilfs_segctor_begin_finfo(%struct.nilfs_sc_info* %63, %struct.inode* %64)
  br label %66

66:                                               ; preds = %62, %57
  %67 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %6, align 8
  %68 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %6, align 8
  %69 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %68, i32 0, i32 1
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @nilfs_segctor_map_segsum_entry(%struct.nilfs_sc_info* %67, i32* %69, i32 %70)
  %72 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %10, align 8
  %73 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %74 = call i32 @nilfs_segbuf_add_file_buffer(%struct.nilfs_segment_buffer* %72, %struct.buffer_head* %73)
  %75 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %6, align 8
  %76 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %76, align 8
  br label %79

79:                                               ; preds = %66, %55
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %42
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @nilfs_segctor_segsum_block_required(%struct.nilfs_sc_info*, i32*, i32) #1

declare dso_local i32 @nilfs_segctor_end_finfo(%struct.nilfs_sc_info*, %struct.inode*) #1

declare dso_local i32 @nilfs_segctor_feed_segment(%struct.nilfs_sc_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nilfs_segbuf_extend_segsum(%struct.nilfs_segment_buffer*) #1

declare dso_local i32 @nilfs_segctor_begin_finfo(%struct.nilfs_sc_info*, %struct.inode*) #1

declare dso_local i32 @nilfs_segctor_map_segsum_entry(%struct.nilfs_sc_info*, i32*, i32) #1

declare dso_local i32 @nilfs_segbuf_add_file_buffer(%struct.nilfs_segment_buffer*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
