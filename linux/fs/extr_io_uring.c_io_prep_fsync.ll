; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_prep_fsync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_prep_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_kiocb = type { i32, %struct.io_ring_ctx* }
%struct.io_ring_ctx = type { i32 }
%struct.io_uring_sqe = type { i64, i64, i64 }

@EBADF = common dso_local global i32 0, align 4
@IORING_SETUP_IOPOLL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_kiocb*, %struct.io_uring_sqe*)* @io_prep_fsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_prep_fsync(%struct.io_kiocb* %0, %struct.io_uring_sqe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.io_kiocb*, align 8
  %5 = alloca %struct.io_uring_sqe*, align 8
  %6 = alloca %struct.io_ring_ctx*, align 8
  store %struct.io_kiocb* %0, %struct.io_kiocb** %4, align 8
  store %struct.io_uring_sqe* %1, %struct.io_uring_sqe** %5, align 8
  %7 = load %struct.io_kiocb*, %struct.io_kiocb** %4, align 8
  %8 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %7, i32 0, i32 1
  %9 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %8, align 8
  store %struct.io_ring_ctx* %9, %struct.io_ring_ctx** %6, align 8
  %10 = load %struct.io_kiocb*, %struct.io_kiocb** %4, align 8
  %11 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EBADF, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %52

17:                                               ; preds = %2
  %18 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IORING_SETUP_IOPOLL, align 4
  %22 = and i32 %20, %21
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %52

28:                                               ; preds = %17
  %29 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %30 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %35 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %40 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %38, %33, %28
  %44 = phi i1 [ true, %33 ], [ true, %28 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %52

51:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %48, %25, %14
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
