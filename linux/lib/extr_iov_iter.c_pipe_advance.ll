; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_pipe_advance.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_pipe_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iov_iter = type { i64, i64, i32, %struct.pipe_inode_info* }
%struct.pipe_inode_info = type { %struct.pipe_buffer* }
%struct.pipe_buffer = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iov_iter*, i64)* @pipe_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pipe_advance(%struct.iov_iter* %0, i64 %1) #0 {
  %3 = alloca %struct.iov_iter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pipe_inode_info*, align 8
  %6 = alloca %struct.pipe_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.iov_iter* %0, %struct.iov_iter** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %11 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %10, i32 0, i32 3
  %12 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %11, align 8
  store %struct.pipe_inode_info* %12, %struct.pipe_inode_info** %5, align 8
  %13 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %14 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ult i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %23 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %4, align 8
  br label %25

25:                                               ; preds = %21, %2
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %85

28:                                               ; preds = %25
  %29 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %30 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %4, align 8
  store i64 %32, i64* %8, align 8
  %33 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %34 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %9, align 4
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %28
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %41 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %40, i32 0, i32 0
  %42 = load %struct.pipe_buffer*, %struct.pipe_buffer** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %42, i64 %44
  %46 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %39, %47
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %8, align 8
  br label %51

51:                                               ; preds = %38, %28
  br label %52

52:                                               ; preds = %51, %65
  %53 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %54 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %53, i32 0, i32 0
  %55 = load %struct.pipe_buffer*, %struct.pipe_buffer** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %55, i64 %57
  store %struct.pipe_buffer* %58, %struct.pipe_buffer** %6, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %61 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ule i64 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %74

65:                                               ; preds = %52
  %66 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %67 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = sub i64 %69, %68
  store i64 %70, i64* %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %73 = call i32 @next_idx(i32 %71, %struct.pipe_inode_info* %72)
  store i32 %73, i32* %9, align 4
  br label %52

74:                                               ; preds = %64
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %77 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %79 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %8, align 8
  %82 = add i64 %80, %81
  %83 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %84 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %74, %25
  %86 = load i64, i64* %4, align 8
  %87 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %88 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub i64 %89, %86
  store i64 %90, i64* %88, align 8
  %91 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %92 = call i32 @pipe_truncate(%struct.iov_iter* %91)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @next_idx(i32, %struct.pipe_inode_info*) #1

declare dso_local i32 @pipe_truncate(%struct.iov_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
