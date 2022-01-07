; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_meta_io.c_gfs2_meta_wait.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_meta_io.c_gfs2_meta_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.gfs2_trans* }
%struct.gfs2_trans = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i32 }

@SDF_WITHDRAWN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@TR_TOUCHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_meta_wait(%struct.gfs2_sbd* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.gfs2_trans*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  %7 = load i32, i32* @SDF_WITHDRAWN, align 4
  %8 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %9 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %8, i32 0, i32 0
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = call i64 @unlikely(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %52

16:                                               ; preds = %2
  %17 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %18 = call i32 @wait_on_buffer(%struct.buffer_head* %17)
  %19 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %20 = call i32 @buffer_uptodate(%struct.buffer_head* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %16
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.gfs2_trans*, %struct.gfs2_trans** %24, align 8
  store %struct.gfs2_trans* %25, %struct.gfs2_trans** %6, align 8
  %26 = load %struct.gfs2_trans*, %struct.gfs2_trans** %6, align 8
  %27 = icmp ne %struct.gfs2_trans* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load i32, i32* @TR_TOUCHED, align 4
  %30 = load %struct.gfs2_trans*, %struct.gfs2_trans** %6, align 8
  %31 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %30, i32 0, i32 0
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %36 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %37 = call i32 @gfs2_io_error_bh_wd(%struct.gfs2_sbd* %35, %struct.buffer_head* %36)
  br label %38

38:                                               ; preds = %34, %28, %22
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %52

41:                                               ; preds = %16
  %42 = load i32, i32* @SDF_WITHDRAWN, align 4
  %43 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %44 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %43, i32 0, i32 0
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = call i64 @unlikely(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %52

51:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %48, %38, %13
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @unlikely(i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_io_error_bh_wd(%struct.gfs2_sbd*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
