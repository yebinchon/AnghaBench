; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_reset_segment_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_reset_segment_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i64, i64, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, %struct.nilfs_segment_buffer* }
%struct.TYPE_6__ = type { i32, %struct.buffer_head* }
%struct.buffer_head = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.buffer_head* }
%struct.nilfs_segment_buffer = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@NILFS_SS_GC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_sc_info*)* @nilfs_segctor_reset_segment_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_segctor_reset_segment_buffer(%struct.nilfs_sc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nilfs_sc_info*, align 8
  %4 = alloca %struct.nilfs_segment_buffer*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %3, align 8
  %9 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %10 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %9, i32 0, i32 6
  %11 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %10, align 8
  store %struct.nilfs_segment_buffer* %11, %struct.nilfs_segment_buffer** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = call i64 (...) @nilfs_doing_gc()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @NILFS_SS_GC, align 4
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %20 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %23 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @nilfs_segbuf_reset(%struct.nilfs_segment_buffer* %17, i32 %18, i32 %21, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %2, align 4
  br label %59

31:                                               ; preds = %16
  %32 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %33 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %32, i32 0, i32 1
  %34 = call %struct.buffer_head* @NILFS_SEGBUF_FIRST_BH(i32* %33)
  store %struct.buffer_head* %34, %struct.buffer_head** %5, align 8
  %35 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %36 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  %39 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %40 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %41 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store %struct.buffer_head* %39, %struct.buffer_head** %42, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %45 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %48 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %49 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store %struct.buffer_head* %47, %struct.buffer_head** %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %53 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %56 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %58 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %31, %29
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i64 @nilfs_doing_gc(...) #1

declare dso_local i32 @nilfs_segbuf_reset(%struct.nilfs_segment_buffer*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.buffer_head* @NILFS_SEGBUF_FIRST_BH(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
