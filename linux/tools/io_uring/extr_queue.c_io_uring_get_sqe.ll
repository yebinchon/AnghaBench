; ModuleID = '/home/carl/AnghaBench/linux/tools/io_uring/extr_queue.c_io_uring_get_sqe.c'
source_filename = "/home/carl/AnghaBench/linux/tools/io_uring/extr_queue.c_io_uring_get_sqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_uring_sqe = type { i32 }
%struct.io_uring = type { %struct.io_uring_sq }
%struct.io_uring_sq = type { i32, i32, i32*, i64*, %struct.io_uring_sqe* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.io_uring_sqe* @io_uring_get_sqe(%struct.io_uring* %0) #0 {
  %2 = alloca %struct.io_uring_sqe*, align 8
  %3 = alloca %struct.io_uring*, align 8
  %4 = alloca %struct.io_uring_sq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.io_uring_sqe*, align 8
  store %struct.io_uring* %0, %struct.io_uring** %3, align 8
  %7 = load %struct.io_uring*, %struct.io_uring** %3, align 8
  %8 = getelementptr inbounds %struct.io_uring, %struct.io_uring* %7, i32 0, i32 0
  store %struct.io_uring_sq* %8, %struct.io_uring_sq** %4, align 8
  %9 = load %struct.io_uring_sq*, %struct.io_uring_sq** %4, align 8
  %10 = getelementptr inbounds %struct.io_uring_sq, %struct.io_uring_sq* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.io_uring_sq*, %struct.io_uring_sq** %4, align 8
  %15 = getelementptr inbounds %struct.io_uring_sq, %struct.io_uring_sq* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sub i32 %13, %16
  %18 = load %struct.io_uring_sq*, %struct.io_uring_sq** %4, align 8
  %19 = getelementptr inbounds %struct.io_uring_sq, %struct.io_uring_sq* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp ugt i32 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store %struct.io_uring_sqe* null, %struct.io_uring_sqe** %2, align 8
  br label %42

24:                                               ; preds = %1
  %25 = load %struct.io_uring_sq*, %struct.io_uring_sq** %4, align 8
  %26 = getelementptr inbounds %struct.io_uring_sq, %struct.io_uring_sq* %25, i32 0, i32 4
  %27 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %26, align 8
  %28 = load %struct.io_uring_sq*, %struct.io_uring_sq** %4, align 8
  %29 = getelementptr inbounds %struct.io_uring_sq, %struct.io_uring_sq* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = load %struct.io_uring_sq*, %struct.io_uring_sq** %4, align 8
  %33 = getelementptr inbounds %struct.io_uring_sq, %struct.io_uring_sq* %32, i32 0, i32 3
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %34, align 8
  %36 = and i64 %31, %35
  %37 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %27, i64 %36
  store %struct.io_uring_sqe* %37, %struct.io_uring_sqe** %6, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.io_uring_sq*, %struct.io_uring_sq** %4, align 8
  %40 = getelementptr inbounds %struct.io_uring_sq, %struct.io_uring_sq* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %6, align 8
  store %struct.io_uring_sqe* %41, %struct.io_uring_sqe** %2, align 8
  br label %42

42:                                               ; preds = %24, %23
  %43 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %2, align 8
  ret %struct.io_uring_sqe* %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
