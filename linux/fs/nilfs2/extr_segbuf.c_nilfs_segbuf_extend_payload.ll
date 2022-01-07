; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segbuf.c_nilfs_segbuf_extend_payload.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segbuf.c_nilfs_segbuf_extend_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_segment_buffer = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.buffer_head = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_segbuf_extend_payload(%struct.nilfs_segment_buffer* %0, %struct.buffer_head** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nilfs_segment_buffer*, align 8
  %5 = alloca %struct.buffer_head**, align 8
  %6 = alloca %struct.buffer_head*, align 8
  store %struct.nilfs_segment_buffer* %0, %struct.nilfs_segment_buffer** %4, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %5, align 8
  %7 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %8 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %14 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %12, %16
  %18 = call %struct.buffer_head* @sb_getblk(i32 %9, i64 %17)
  store %struct.buffer_head* %18, %struct.buffer_head** %6, align 8
  %19 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %20 = icmp ne %struct.buffer_head* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %34

28:                                               ; preds = %2
  %29 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %31 = call i32 @nilfs_segbuf_add_payload_buffer(%struct.nilfs_segment_buffer* %29, %struct.buffer_head* %30)
  %32 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %33 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  store %struct.buffer_head* %32, %struct.buffer_head** %33, align 8
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %28, %25
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.buffer_head* @sb_getblk(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nilfs_segbuf_add_payload_buffer(%struct.nilfs_segment_buffer*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
