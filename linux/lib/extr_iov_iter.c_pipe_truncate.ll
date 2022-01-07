; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_pipe_truncate.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_pipe_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iov_iter = type { i64, i32, %struct.pipe_inode_info* }
%struct.pipe_inode_info = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iov_iter*)* @pipe_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pipe_truncate(%struct.iov_iter* %0) #0 {
  %2 = alloca %struct.iov_iter*, align 8
  %3 = alloca %struct.pipe_inode_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iov_iter* %0, %struct.iov_iter** %2, align 8
  %7 = load %struct.iov_iter*, %struct.iov_iter** %2, align 8
  %8 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %7, i32 0, i32 2
  %9 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  store %struct.pipe_inode_info* %9, %struct.pipe_inode_info** %3, align 8
  %10 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %11 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %80

14:                                               ; preds = %1
  %15 = load %struct.iov_iter*, %struct.iov_iter** %2, align 8
  %16 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %4, align 8
  %18 = load %struct.iov_iter*, %struct.iov_iter** %2, align 8
  %19 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %23 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  %26 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %27 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = and i32 %25, %29
  store i32 %30, i32* %6, align 4
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %14
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %36 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %34, %42
  %44 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %45 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i64 %43, i64* %50, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %53 = call i32 @next_idx(i32 %51, %struct.pipe_inode_info* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %33, %14
  br label %57

57:                                               ; preds = %63, %56
  %58 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %59 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %57
  %64 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %65 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %66 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %65, i32 0, i32 3
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = call i32 @pipe_buf_release(%struct.pipe_inode_info* %64, %struct.TYPE_2__* %70)
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %74 = call i32 @next_idx(i32 %72, %struct.pipe_inode_info* %73)
  store i32 %74, i32* %5, align 4
  %75 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %76 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %76, align 8
  br label %57

79:                                               ; preds = %57
  br label %80

80:                                               ; preds = %79, %1
  ret void
}

declare dso_local i32 @next_idx(i32, %struct.pipe_inode_info*) #1

declare dso_local i32 @pipe_buf_release(%struct.pipe_inode_info*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
