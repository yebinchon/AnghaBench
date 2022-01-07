; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segbuf.c_nilfs_segbuf_submit_bh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segbuf.c_nilfs_segbuf_submit_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_segment_buffer = type { i32 }
%struct.nilfs_write_info = type { i64, i64, i64, i64, i32 }
%struct.buffer_head = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_segment_buffer*, %struct.nilfs_write_info*, %struct.buffer_head*, i32)* @nilfs_segbuf_submit_bh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_segbuf_submit_bh(%struct.nilfs_segment_buffer* %0, %struct.nilfs_write_info* %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nilfs_segment_buffer*, align 8
  %7 = alloca %struct.nilfs_write_info*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nilfs_segment_buffer* %0, %struct.nilfs_segment_buffer** %6, align 8
  store %struct.nilfs_write_info* %1, %struct.nilfs_write_info** %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.nilfs_write_info*, %struct.nilfs_write_info** %7, align 8
  %13 = getelementptr inbounds %struct.nilfs_write_info, %struct.nilfs_write_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sle i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  br label %18

18:                                               ; preds = %86, %4
  %19 = load %struct.nilfs_write_info*, %struct.nilfs_write_info** %7, align 8
  %20 = getelementptr inbounds %struct.nilfs_write_info, %struct.nilfs_write_info* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %52, label %23

23:                                               ; preds = %18
  %24 = load %struct.nilfs_write_info*, %struct.nilfs_write_info** %7, align 8
  %25 = getelementptr inbounds %struct.nilfs_write_info, %struct.nilfs_write_info* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.nilfs_write_info*, %struct.nilfs_write_info** %7, align 8
  %28 = getelementptr inbounds %struct.nilfs_write_info, %struct.nilfs_write_info* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.nilfs_write_info*, %struct.nilfs_write_info** %7, align 8
  %31 = getelementptr inbounds %struct.nilfs_write_info, %struct.nilfs_write_info* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = load %struct.nilfs_write_info*, %struct.nilfs_write_info** %7, align 8
  %35 = getelementptr inbounds %struct.nilfs_write_info, %struct.nilfs_write_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @nilfs_alloc_seg_bio(i32 %26, i64 %33, i64 %36)
  %38 = load %struct.nilfs_write_info*, %struct.nilfs_write_info** %7, align 8
  %39 = getelementptr inbounds %struct.nilfs_write_info, %struct.nilfs_write_info* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.nilfs_write_info*, %struct.nilfs_write_info** %7, align 8
  %41 = getelementptr inbounds %struct.nilfs_write_info, %struct.nilfs_write_info* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %23
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %89

51:                                               ; preds = %23
  br label %52

52:                                               ; preds = %51, %18
  %53 = load %struct.nilfs_write_info*, %struct.nilfs_write_info** %7, align 8
  %54 = getelementptr inbounds %struct.nilfs_write_info, %struct.nilfs_write_info* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %57 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %60 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %63 = call i32 @bh_offset(%struct.buffer_head* %62)
  %64 = call i32 @bio_add_page(i64 %55, i32 %58, i32 %61, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %67 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %65, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %52
  %71 = load %struct.nilfs_write_info*, %struct.nilfs_write_info** %7, align 8
  %72 = getelementptr inbounds %struct.nilfs_write_info, %struct.nilfs_write_info* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %72, align 8
  store i32 0, i32* %5, align 4
  br label %89

75:                                               ; preds = %52
  %76 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %6, align 8
  %77 = load %struct.nilfs_write_info*, %struct.nilfs_write_info** %7, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @nilfs_segbuf_submit_bio(%struct.nilfs_segment_buffer* %76, %struct.nilfs_write_info* %77, i32 %78, i32 0)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i64 @likely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  br label %18

87:                                               ; preds = %75
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %87, %70, %48
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @nilfs_alloc_seg_bio(i32, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bio_add_page(i64, i32, i32, i32) #1

declare dso_local i32 @bh_offset(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_segbuf_submit_bio(%struct.nilfs_segment_buffer*, %struct.nilfs_write_info*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
