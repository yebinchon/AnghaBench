; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_async_list_from_sqe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_async_list_from_sqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async_list = type { i32 }
%struct.io_ring_ctx = type { %struct.async_list* }
%struct.io_uring_sqe = type { i32 }

@READ = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.async_list* (%struct.io_ring_ctx*, %struct.io_uring_sqe*)* @io_async_list_from_sqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.async_list* @io_async_list_from_sqe(%struct.io_ring_ctx* %0, %struct.io_uring_sqe* %1) #0 {
  %3 = alloca %struct.async_list*, align 8
  %4 = alloca %struct.io_ring_ctx*, align 8
  %5 = alloca %struct.io_uring_sqe*, align 8
  store %struct.io_ring_ctx* %0, %struct.io_ring_ctx** %4, align 8
  store %struct.io_uring_sqe* %1, %struct.io_uring_sqe** %5, align 8
  %6 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %7 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %21 [
    i32 131, label %9
    i32 130, label %9
    i32 129, label %15
    i32 128, label %15
  ]

9:                                                ; preds = %2, %2
  %10 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %10, i32 0, i32 0
  %12 = load %struct.async_list*, %struct.async_list** %11, align 8
  %13 = load i64, i64* @READ, align 8
  %14 = getelementptr inbounds %struct.async_list, %struct.async_list* %12, i64 %13
  store %struct.async_list* %14, %struct.async_list** %3, align 8
  br label %22

15:                                               ; preds = %2, %2
  %16 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %16, i32 0, i32 0
  %18 = load %struct.async_list*, %struct.async_list** %17, align 8
  %19 = load i64, i64* @WRITE, align 8
  %20 = getelementptr inbounds %struct.async_list, %struct.async_list* %18, i64 %19
  store %struct.async_list* %20, %struct.async_list** %3, align 8
  br label %22

21:                                               ; preds = %2
  store %struct.async_list* null, %struct.async_list** %3, align 8
  br label %22

22:                                               ; preds = %21, %15, %9
  %23 = load %struct.async_list*, %struct.async_list** %3, align 8
  ret %struct.async_list* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
