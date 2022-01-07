; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_iov_iter_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_iov_iter_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iov_iter = type { i32, i32, i64, i32, i64, %struct.pipe_inode_info* }
%struct.pipe_inode_info = type { i32, i32, i32 }

@READ = common dso_local global i32 0, align 4
@ITER_PIPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iov_iter_pipe(%struct.iov_iter* %0, i32 %1, %struct.pipe_inode_info* %2, i64 %3) #0 {
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pipe_inode_info*, align 8
  %8 = alloca i64, align 8
  store %struct.iov_iter* %0, %struct.iov_iter** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pipe_inode_info* %2, %struct.pipe_inode_info** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @READ, align 4
  %11 = icmp ne i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %15 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %18 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load i32, i32* @ITER_PIPE, align 4
  %24 = load i32, i32* @READ, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %27 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %29 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %30 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %29, i32 0, i32 5
  store %struct.pipe_inode_info* %28, %struct.pipe_inode_info** %30, align 8
  %31 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %32 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %35 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  %38 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %39 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = and i32 %37, %41
  %43 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %44 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %46 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %49 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  %50 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %51 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %54 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
