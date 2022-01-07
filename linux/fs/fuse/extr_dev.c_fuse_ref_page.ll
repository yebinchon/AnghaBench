; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_ref_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_ref_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_copy_state = type { i64, i64, %struct.pipe_buffer*, i32, %struct.TYPE_2__* }
%struct.pipe_buffer = type { i32, i32, %struct.page* }
%struct.TYPE_2__ = type { i64 }
%struct.page = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_copy_state*, %struct.page*, i32, i32)* @fuse_ref_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_ref_page(%struct.fuse_copy_state* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fuse_copy_state*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pipe_buffer*, align 8
  %11 = alloca i32, align 4
  store %struct.fuse_copy_state* %0, %struct.fuse_copy_state** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %6, align 8
  %13 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %6, align 8
  %16 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %14, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %60

24:                                               ; preds = %4
  %25 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %6, align 8
  %26 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @unlock_request(i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %60

33:                                               ; preds = %24
  %34 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %6, align 8
  %35 = call i32 @fuse_copy_finish(%struct.fuse_copy_state* %34)
  %36 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %6, align 8
  %37 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %36, i32 0, i32 2
  %38 = load %struct.pipe_buffer*, %struct.pipe_buffer** %37, align 8
  store %struct.pipe_buffer* %38, %struct.pipe_buffer** %10, align 8
  %39 = load %struct.page*, %struct.page** %7, align 8
  %40 = call i32 @get_page(%struct.page* %39)
  %41 = load %struct.page*, %struct.page** %7, align 8
  %42 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %43 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %42, i32 0, i32 2
  store %struct.page* %41, %struct.page** %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %46 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %49 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %6, align 8
  %51 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %50, i32 0, i32 2
  %52 = load %struct.pipe_buffer*, %struct.pipe_buffer** %51, align 8
  %53 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %52, i32 1
  store %struct.pipe_buffer* %53, %struct.pipe_buffer** %51, align 8
  %54 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %6, align 8
  %55 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %55, align 8
  %58 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %6, align 8
  %59 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %33, %31, %21
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @unlock_request(i32) #1

declare dso_local i32 @fuse_copy_finish(%struct.fuse_copy_state*) #1

declare dso_local i32 @get_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
