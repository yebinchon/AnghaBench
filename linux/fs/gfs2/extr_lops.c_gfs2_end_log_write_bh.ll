; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lops.c_gfs2_end_log_write_bh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lops.c_gfs2_end_log_write_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }
%struct.bio_vec = type { i32, i64, %struct.page* }
%struct.page = type { i32 }
%struct.buffer_head = type { i64, %struct.buffer_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_sbd*, %struct.bio_vec*, i64)* @gfs2_end_log_write_bh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_end_log_write_bh(%struct.gfs2_sbd* %0, %struct.bio_vec* %1, i64 %2) #0 {
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.bio_vec*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store %struct.bio_vec* %1, %struct.bio_vec** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.bio_vec*, %struct.bio_vec** %5, align 8
  %12 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %11, i32 0, i32 2
  %13 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %13, %struct.page** %9, align 8
  %14 = load %struct.page*, %struct.page** %9, align 8
  %15 = call %struct.buffer_head* @page_buffers(%struct.page* %14)
  store %struct.buffer_head* %15, %struct.buffer_head** %7, align 8
  %16 = load %struct.bio_vec*, %struct.bio_vec** %5, align 8
  %17 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  br label %19

19:                                               ; preds = %26, %3
  %20 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %21 = call i64 @bh_offset(%struct.buffer_head* %20)
  %22 = load %struct.bio_vec*, %struct.bio_vec** %5, align 8
  %23 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %28 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %27, i32 0, i32 1
  %29 = load %struct.buffer_head*, %struct.buffer_head** %28, align 8
  store %struct.buffer_head* %29, %struct.buffer_head** %7, align 8
  br label %19

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %59, %30
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %36 = call i32 @mark_buffer_write_io_error(%struct.buffer_head* %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %39 = call i32 @unlock_buffer(%struct.buffer_head* %38)
  %40 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %41 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %40, i32 0, i32 1
  %42 = load %struct.buffer_head*, %struct.buffer_head** %41, align 8
  store %struct.buffer_head* %42, %struct.buffer_head** %8, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = zext i32 %46 to i64
  %48 = sub nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %51 = call i32 @brelse(%struct.buffer_head* %50)
  %52 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %52, %struct.buffer_head** %7, align 8
  br label %53

53:                                               ; preds = %37
  %54 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %55 = icmp ne %struct.buffer_head* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br label %59

59:                                               ; preds = %56, %53
  %60 = phi i1 [ false, %53 ], [ %58, %56 ]
  br i1 %60, label %31, label %61

61:                                               ; preds = %59
  ret void
}

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i64 @bh_offset(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_write_io_error(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
