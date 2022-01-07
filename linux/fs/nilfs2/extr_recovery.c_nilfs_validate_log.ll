; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_recovery.c_nilfs_validate_log.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_recovery.c_nilfs_validate_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i64, i64 }
%struct.buffer_head = type { i32 }
%struct.nilfs_segment_summary = type { i32, i32, i32, i32 }

@NILFS_SEG_FAIL_MAGIC = common dso_local global i32 0, align 4
@NILFS_SEGSUM_MAGIC = common dso_local global i64 0, align 8
@NILFS_SEG_FAIL_SEQ = common dso_local global i32 0, align 4
@NILFS_SEG_FAIL_CONSISTENCY = common dso_local global i32 0, align 4
@NILFS_SEG_FAIL_IO = common dso_local global i32 0, align 4
@NILFS_SEG_FAIL_CHECKSUM_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.the_nilfs*, i64, %struct.buffer_head*, %struct.nilfs_segment_summary*)* @nilfs_validate_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_validate_log(%struct.the_nilfs* %0, i64 %1, %struct.buffer_head* %2, %struct.nilfs_segment_summary* %3) #0 {
  %5 = alloca %struct.the_nilfs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.nilfs_segment_summary*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.the_nilfs* %0, %struct.the_nilfs** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store %struct.nilfs_segment_summary* %3, %struct.nilfs_segment_summary** %8, align 8
  %12 = load i32, i32* @NILFS_SEG_FAIL_MAGIC, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.nilfs_segment_summary*, %struct.nilfs_segment_summary** %8, align 8
  %14 = getelementptr inbounds %struct.nilfs_segment_summary, %struct.nilfs_segment_summary* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @le32_to_cpu(i32 %15)
  %17 = load i64, i64* @NILFS_SEGSUM_MAGIC, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %75

20:                                               ; preds = %4
  %21 = load i32, i32* @NILFS_SEG_FAIL_SEQ, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.nilfs_segment_summary*, %struct.nilfs_segment_summary** %8, align 8
  %23 = getelementptr inbounds %struct.nilfs_segment_summary, %struct.nilfs_segment_summary* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le64_to_cpu(i32 %24)
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %75

29:                                               ; preds = %20
  %30 = load %struct.nilfs_segment_summary*, %struct.nilfs_segment_summary** %8, align 8
  %31 = getelementptr inbounds %struct.nilfs_segment_summary, %struct.nilfs_segment_summary* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @le32_to_cpu(i32 %32)
  store i64 %33, i64* %9, align 8
  %34 = load i32, i32* @NILFS_SEG_FAIL_CONSISTENCY, align 4
  store i32 %34, i32* %11, align 4
  %35 = load i64, i64* %9, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %29
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %40 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ugt i64 %38, %41
  br label %43

43:                                               ; preds = %37, %29
  %44 = phi i1 [ true, %29 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %75

49:                                               ; preds = %43
  %50 = load i32, i32* @NILFS_SEG_FAIL_IO, align 4
  store i32 %50, i32* %11, align 4
  %51 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %55 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = shl i64 %53, %56
  %58 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %59 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %9, align 8
  %62 = call i64 @nilfs_compute_checksum(%struct.the_nilfs* %51, %struct.buffer_head* %52, i64* %10, i32 4, i64 %57, i32 %60, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %49
  br label %75

65:                                               ; preds = %49
  %66 = load i32, i32* @NILFS_SEG_FAIL_CHECKSUM_FULL, align 4
  store i32 %66, i32* %11, align 4
  %67 = load i64, i64* %10, align 8
  %68 = load %struct.nilfs_segment_summary*, %struct.nilfs_segment_summary** %8, align 8
  %69 = getelementptr inbounds %struct.nilfs_segment_summary, %struct.nilfs_segment_summary* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @le32_to_cpu(i32 %70)
  %72 = icmp ne i64 %67, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %75

74:                                               ; preds = %65
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %74, %73, %64, %48, %28, %19
  %76 = load i32, i32* %11, align 4
  ret i32 %76
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @nilfs_compute_checksum(%struct.the_nilfs*, %struct.buffer_head*, i64*, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
