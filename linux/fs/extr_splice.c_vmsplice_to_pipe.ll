; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_splice.c_vmsplice_to_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_splice.c_vmsplice_to_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.iov_iter = type { i32 }
%struct.pipe_inode_info = type { i32 }

@SPLICE_F_GIFT = common dso_local global i32 0, align 4
@PIPE_BUF_FLAG_GIFT = common dso_local global i32 0, align 4
@EBADF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.iov_iter*, i32)* @vmsplice_to_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vmsplice_to_pipe(%struct.file* %0, %struct.iov_iter* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.iov_iter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pipe_inode_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @SPLICE_F_GIFT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @PIPE_BUF_FLAG_GIFT, align 4
  store i32 %16, i32* %10, align 4
  br label %17

17:                                               ; preds = %15, %3
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = call %struct.pipe_inode_info* @get_pipe_info(%struct.file* %18)
  store %struct.pipe_inode_info* %19, %struct.pipe_inode_info** %8, align 8
  %20 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %21 = icmp ne %struct.pipe_inode_info* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i64, i64* @EBADF, align 8
  %24 = sub nsw i64 0, %23
  store i64 %24, i64* %4, align 8
  br label %48

25:                                               ; preds = %17
  %26 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %27 = call i32 @pipe_lock(%struct.pipe_inode_info* %26)
  %28 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @wait_for_space(%struct.pipe_inode_info* %28, i32 %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %25
  %34 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %35 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @iter_to_pipe(%struct.iov_iter* %34, %struct.pipe_inode_info* %35, i32 %36)
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %33, %25
  %39 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %40 = call i32 @pipe_unlock(%struct.pipe_inode_info* %39)
  %41 = load i64, i64* %9, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %45 = call i32 @wakeup_pipe_readers(%struct.pipe_inode_info* %44)
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i64, i64* %9, align 8
  store i64 %47, i64* %4, align 8
  br label %48

48:                                               ; preds = %46, %22
  %49 = load i64, i64* %4, align 8
  ret i64 %49
}

declare dso_local %struct.pipe_inode_info* @get_pipe_info(%struct.file*) #1

declare dso_local i32 @pipe_lock(%struct.pipe_inode_info*) #1

declare dso_local i64 @wait_for_space(%struct.pipe_inode_info*, i32) #1

declare dso_local i64 @iter_to_pipe(%struct.iov_iter*, %struct.pipe_inode_info*, i32) #1

declare dso_local i32 @pipe_unlock(%struct.pipe_inode_info*) #1

declare dso_local i32 @wakeup_pipe_readers(%struct.pipe_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
