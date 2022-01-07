; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_pipe.c_pipe_fcntl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_pipe.c_pipe_fcntl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.pipe_inode_info = type { i64 }

@EBADF = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pipe_fcntl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.pipe_inode_info*, align 8
  %9 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.pipe_inode_info* @get_pipe_info(%struct.file* %10)
  store %struct.pipe_inode_info* %11, %struct.pipe_inode_info** %8, align 8
  %12 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %13 = icmp ne %struct.pipe_inode_info* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* @EBADF, align 8
  %16 = sub nsw i64 0, %15
  store i64 %16, i64* %4, align 8
  br label %38

17:                                               ; preds = %3
  %18 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %19 = call i32 @__pipe_lock(%struct.pipe_inode_info* %18)
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %31 [
    i32 128, label %21
    i32 129, label %25
  ]

21:                                               ; preds = %17
  %22 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @pipe_set_size(%struct.pipe_inode_info* %22, i64 %23)
  store i64 %24, i64* %9, align 8
  br label %34

25:                                               ; preds = %17
  %26 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %27 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PAGE_SIZE, align 8
  %30 = mul nsw i64 %28, %29
  store i64 %30, i64* %9, align 8
  br label %34

31:                                               ; preds = %17
  %32 = load i64, i64* @EINVAL, align 8
  %33 = sub nsw i64 0, %32
  store i64 %33, i64* %9, align 8
  br label %34

34:                                               ; preds = %31, %25, %21
  %35 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %36 = call i32 @__pipe_unlock(%struct.pipe_inode_info* %35)
  %37 = load i64, i64* %9, align 8
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %34, %14
  %39 = load i64, i64* %4, align 8
  ret i64 %39
}

declare dso_local %struct.pipe_inode_info* @get_pipe_info(%struct.file*) #1

declare dso_local i32 @__pipe_lock(%struct.pipe_inode_info*) #1

declare dso_local i64 @pipe_set_size(%struct.pipe_inode_info*, i64) #1

declare dso_local i32 @__pipe_unlock(%struct.pipe_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
