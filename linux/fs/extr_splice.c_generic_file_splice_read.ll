; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_splice.c_generic_file_splice_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_splice.c_generic_file_splice_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.pipe_inode_info = type { i32 }
%struct.iov_iter = type { i32, i64 }
%struct.kiocb = type { i32 }

@READ = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_file_splice_read(%struct.file* %0, i32* %1, %struct.pipe_inode_info* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pipe_inode_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iov_iter, align 8
  %12 = alloca %struct.kiocb, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.pipe_inode_info* %2, %struct.pipe_inode_info** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* @READ, align 4
  %16 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @iov_iter_pipe(%struct.iov_iter* %11, i32 %15, %struct.pipe_inode_info* %16, i64 %17)
  %19 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %11, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %13, align 4
  %21 = load %struct.file*, %struct.file** %6, align 8
  %22 = call i32 @init_sync_kiocb(%struct.kiocb* %12, %struct.file* %21)
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %12, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.file*, %struct.file** %6, align 8
  %27 = call i32 @call_read_iter(%struct.file* %26, %struct.kiocb* %12, %struct.iov_iter* %11)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %12, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.file*, %struct.file** %6, align 8
  %35 = call i32 @file_accessed(%struct.file* %34)
  br label %53

36:                                               ; preds = %5
  %37 = load i32, i32* %14, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load i32, i32* %13, align 4
  %41 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %11, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %11, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = call i32 @iov_iter_advance(%struct.iov_iter* %11, i32 0)
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @EFAULT, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @EAGAIN, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %14, align 4
  br label %51

51:                                               ; preds = %48, %39
  br label %52

52:                                               ; preds = %51, %36
  br label %53

53:                                               ; preds = %52, %30
  %54 = load i32, i32* %14, align 4
  ret i32 %54
}

declare dso_local i32 @iov_iter_pipe(%struct.iov_iter*, i32, %struct.pipe_inode_info*, i64) #1

declare dso_local i32 @init_sync_kiocb(%struct.kiocb*, %struct.file*) #1

declare dso_local i32 @call_read_iter(%struct.file*, %struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @file_accessed(%struct.file*) #1

declare dso_local i32 @iov_iter_advance(%struct.iov_iter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
