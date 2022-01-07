; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segbuf.c_nilfs_segbuf_submit_bio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segbuf.c_nilfs_segbuf_submit_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_segment_buffer = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nilfs_write_info = type { %struct.bio*, i64, i64, i32, i32, i32 }
%struct.bio = type { %struct.nilfs_segment_buffer*, i32 }

@EIO = common dso_local global i32 0, align 4
@nilfs_end_bio_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_segment_buffer*, %struct.nilfs_write_info*, i32, i32)* @nilfs_segbuf_submit_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_segbuf_submit_bio(%struct.nilfs_segment_buffer* %0, %struct.nilfs_write_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nilfs_segment_buffer*, align 8
  %7 = alloca %struct.nilfs_write_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bio*, align 8
  %11 = alloca i32, align 4
  store %struct.nilfs_segment_buffer* %0, %struct.nilfs_segment_buffer** %6, align 8
  store %struct.nilfs_write_info* %1, %struct.nilfs_write_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.nilfs_write_info*, %struct.nilfs_write_info** %7, align 8
  %13 = getelementptr inbounds %struct.nilfs_write_info, %struct.nilfs_write_info* %12, i32 0, i32 0
  %14 = load %struct.bio*, %struct.bio** %13, align 8
  store %struct.bio* %14, %struct.bio** %10, align 8
  %15 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %6, align 8
  %16 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %4
  %20 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %6, align 8
  %21 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @bdi_write_congested(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %19
  %28 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %6, align 8
  %29 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %28, i32 0, i32 2
  %30 = call i32 @wait_for_completion(i32* %29)
  %31 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %6, align 8
  %32 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %32, align 8
  %35 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %6, align 8
  %36 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %35, i32 0, i32 1
  %37 = call i32 @atomic_read(i32* %36)
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %27
  %41 = load %struct.bio*, %struct.bio** %10, align 8
  %42 = call i32 @bio_put(%struct.bio* %41)
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %11, align 4
  br label %92

45:                                               ; preds = %27
  br label %46

46:                                               ; preds = %45, %19, %4
  %47 = load i32, i32* @nilfs_end_bio_write, align 4
  %48 = load %struct.bio*, %struct.bio** %10, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %6, align 8
  %51 = load %struct.bio*, %struct.bio** %10, align 8
  %52 = getelementptr inbounds %struct.bio, %struct.bio* %51, i32 0, i32 0
  store %struct.nilfs_segment_buffer* %50, %struct.nilfs_segment_buffer** %52, align 8
  %53 = load %struct.bio*, %struct.bio** %10, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @bio_set_op_attrs(%struct.bio* %53, i32 %54, i32 %55)
  %57 = load %struct.bio*, %struct.bio** %10, align 8
  %58 = call i32 @submit_bio(%struct.bio* %57)
  %59 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %6, align 8
  %60 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %60, align 8
  %63 = load %struct.nilfs_write_info*, %struct.nilfs_write_info** %7, align 8
  %64 = getelementptr inbounds %struct.nilfs_write_info, %struct.nilfs_write_info* %63, i32 0, i32 0
  store %struct.bio* null, %struct.bio** %64, align 8
  %65 = load %struct.nilfs_write_info*, %struct.nilfs_write_info** %7, align 8
  %66 = getelementptr inbounds %struct.nilfs_write_info, %struct.nilfs_write_info* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.nilfs_write_info*, %struct.nilfs_write_info** %7, align 8
  %69 = getelementptr inbounds %struct.nilfs_write_info, %struct.nilfs_write_info* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %67, %70
  %72 = load %struct.nilfs_write_info*, %struct.nilfs_write_info** %7, align 8
  %73 = getelementptr inbounds %struct.nilfs_write_info, %struct.nilfs_write_info* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = sub nsw i64 %75, %71
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 8
  %78 = load %struct.nilfs_write_info*, %struct.nilfs_write_info** %7, align 8
  %79 = getelementptr inbounds %struct.nilfs_write_info, %struct.nilfs_write_info* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.nilfs_write_info*, %struct.nilfs_write_info** %7, align 8
  %82 = getelementptr inbounds %struct.nilfs_write_info, %struct.nilfs_write_info* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @min(i32 %80, i32 %83)
  %85 = load %struct.nilfs_write_info*, %struct.nilfs_write_info** %7, align 8
  %86 = getelementptr inbounds %struct.nilfs_write_info, %struct.nilfs_write_info* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 8
  %87 = load %struct.nilfs_write_info*, %struct.nilfs_write_info** %7, align 8
  %88 = getelementptr inbounds %struct.nilfs_write_info, %struct.nilfs_write_info* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.nilfs_write_info*, %struct.nilfs_write_info** %7, align 8
  %91 = getelementptr inbounds %struct.nilfs_write_info, %struct.nilfs_write_info* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  store i32 0, i32* %5, align 4
  br label %96

92:                                               ; preds = %40
  %93 = load %struct.nilfs_write_info*, %struct.nilfs_write_info** %7, align 8
  %94 = getelementptr inbounds %struct.nilfs_write_info, %struct.nilfs_write_info* %93, i32 0, i32 0
  store %struct.bio* null, %struct.bio** %94, align 8
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %92, %46
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i64 @bdi_write_congested(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
