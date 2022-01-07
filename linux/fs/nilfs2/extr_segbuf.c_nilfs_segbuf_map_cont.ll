; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segbuf.c_nilfs_segbuf_map_cont.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segbuf.c_nilfs_segbuf_map_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_segment_buffer = type { i64, i64, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_segbuf_map_cont(%struct.nilfs_segment_buffer* %0, %struct.nilfs_segment_buffer* %1) #0 {
  %3 = alloca %struct.nilfs_segment_buffer*, align 8
  %4 = alloca %struct.nilfs_segment_buffer*, align 8
  store %struct.nilfs_segment_buffer* %0, %struct.nilfs_segment_buffer** %3, align 8
  store %struct.nilfs_segment_buffer* %1, %struct.nilfs_segment_buffer** %4, align 8
  %5 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %6 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %3, align 8
  %9 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 4
  %10 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %3, align 8
  %14 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 8
  %15 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %3, align 8
  %19 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %21 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %22, %26
  %28 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %3, align 8
  %29 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %3, align 8
  %31 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %3, align 8
  %34 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = add nsw i64 %36, 1
  %38 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %3, align 8
  %39 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
