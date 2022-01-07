; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segbuf.c_nilfs_segbuf_wait.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segbuf.c_nilfs_segbuf_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_segment_buffer = type { i64, i64, %struct.TYPE_2__, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"I/O error writing log (start-blocknr=%llu, block-count=%lu) in segment %llu\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_segment_buffer*)* @nilfs_segbuf_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_segbuf_wait(%struct.nilfs_segment_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nilfs_segment_buffer*, align 8
  %4 = alloca i32, align 4
  store %struct.nilfs_segment_buffer* %0, %struct.nilfs_segment_buffer** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %3, align 8
  %6 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %15, %10
  %12 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %3, align 8
  %13 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %12, i32 0, i32 6
  %14 = call i32 @wait_for_completion(i32* %13)
  br label %15

15:                                               ; preds = %11
  %16 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %3, align 8
  %17 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %11, label %21

21:                                               ; preds = %15
  %22 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %3, align 8
  %23 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %22, i32 0, i32 5
  %24 = call i64 @atomic_read(i32* %23)
  %25 = icmp sgt i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %21
  %30 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %3, align 8
  %31 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @KERN_ERR, align 4
  %34 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %3, align 8
  %35 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %3, align 8
  %38 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %3, align 8
  %42 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @nilfs_msg(i32 %32, i32 %33, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i64 %36, i32 %40, i64 %43)
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %29, %21
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %9
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @nilfs_msg(i32, i32, i8*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
