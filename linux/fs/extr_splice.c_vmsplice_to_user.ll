; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_splice.c_vmsplice_to_user.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_splice.c_vmsplice_to_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.iov_iter = type { i32 }
%struct.pipe_inode_info = type { i32 }
%struct.splice_desc = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iov_iter* }

@EBADF = common dso_local global i64 0, align 8
@pipe_to_user = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.iov_iter*, i32)* @vmsplice_to_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vmsplice_to_user(%struct.file* %0, %struct.iov_iter* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.iov_iter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pipe_inode_info*, align 8
  %9 = alloca %struct.splice_desc, align 8
  %10 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.pipe_inode_info* @get_pipe_info(%struct.file* %11)
  store %struct.pipe_inode_info* %12, %struct.pipe_inode_info** %8, align 8
  %13 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %9, i32 0, i32 0
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %9, i32 0, i32 1
  %16 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %17 = call i64 @iov_iter_count(%struct.iov_iter* %16)
  store i64 %17, i64* %15, align 8
  %18 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %9, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  store %struct.iov_iter* %20, %struct.iov_iter** %19, align 8
  store i64 0, i64* %10, align 8
  %21 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %22 = icmp ne %struct.pipe_inode_info* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i64, i64* @EBADF, align 8
  %25 = sub nsw i64 0, %24
  store i64 %25, i64* %4, align 8
  br label %40

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %9, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %32 = call i32 @pipe_lock(%struct.pipe_inode_info* %31)
  %33 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %34 = load i32, i32* @pipe_to_user, align 4
  %35 = call i64 @__splice_from_pipe(%struct.pipe_inode_info* %33, %struct.splice_desc* %9, i32 %34)
  store i64 %35, i64* %10, align 8
  %36 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %37 = call i32 @pipe_unlock(%struct.pipe_inode_info* %36)
  br label %38

38:                                               ; preds = %30, %26
  %39 = load i64, i64* %10, align 8
  store i64 %39, i64* %4, align 8
  br label %40

40:                                               ; preds = %38, %23
  %41 = load i64, i64* %4, align 8
  ret i64 %41
}

declare dso_local %struct.pipe_inode_info* @get_pipe_info(%struct.file*) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @pipe_lock(%struct.pipe_inode_info*) #1

declare dso_local i64 @__splice_from_pipe(%struct.pipe_inode_info*, %struct.splice_desc*, i32) #1

declare dso_local i32 @pipe_unlock(%struct.pipe_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
