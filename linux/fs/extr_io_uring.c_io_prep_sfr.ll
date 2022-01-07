; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_prep_sfr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_prep_sfr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_kiocb = type { i32, %struct.io_ring_ctx* }
%struct.io_ring_ctx = type { i32 }
%struct.io_uring_sqe = type { i64, i64, i64 }

@EBADF = common dso_local global i32 0, align 4
@IORING_SETUP_IOPOLL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_kiocb*, %struct.io_uring_sqe*)* @io_prep_sfr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_prep_sfr(%struct.io_kiocb* %0, %struct.io_uring_sqe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.io_kiocb*, align 8
  %5 = alloca %struct.io_uring_sqe*, align 8
  %6 = alloca %struct.io_ring_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.io_kiocb* %0, %struct.io_kiocb** %4, align 8
  store %struct.io_uring_sqe* %1, %struct.io_uring_sqe** %5, align 8
  %8 = load %struct.io_kiocb*, %struct.io_kiocb** %4, align 8
  %9 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %8, i32 0, i32 1
  %10 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %9, align 8
  store %struct.io_ring_ctx* %10, %struct.io_ring_ctx** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.io_kiocb*, %struct.io_kiocb** %4, align 8
  %12 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EBADF, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %54

18:                                               ; preds = %2
  %19 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %6, align 8
  %20 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IORING_SETUP_IOPOLL, align 4
  %23 = and i32 %21, %22
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %54

29:                                               ; preds = %18
  %30 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %31 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %36 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %41 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %39, %34, %29
  %45 = phi i1 [ true, %34 ], [ true, %29 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %49, %26, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
