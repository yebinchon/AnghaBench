; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_req_defer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_req_defer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ring_ctx = type { i32, i32 }
%struct.io_kiocb = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.io_uring_sqe* }
%struct.io_uring_sqe = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@io_sq_wq_submit_work = common dso_local global i32 0, align 4
@EIOCBQUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_ring_ctx*, %struct.io_kiocb*, %struct.io_uring_sqe*)* @io_req_defer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_req_defer(%struct.io_ring_ctx* %0, %struct.io_kiocb* %1, %struct.io_uring_sqe* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.io_ring_ctx*, align 8
  %6 = alloca %struct.io_kiocb*, align 8
  %7 = alloca %struct.io_uring_sqe*, align 8
  %8 = alloca %struct.io_uring_sqe*, align 8
  store %struct.io_ring_ctx* %0, %struct.io_ring_ctx** %5, align 8
  store %struct.io_kiocb* %1, %struct.io_kiocb** %6, align 8
  store %struct.io_uring_sqe* %2, %struct.io_uring_sqe** %7, align 8
  %9 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %5, align 8
  %10 = load %struct.io_kiocb*, %struct.io_kiocb** %6, align 8
  %11 = call i32 @io_sequence_defer(%struct.io_ring_ctx* %9, %struct.io_kiocb* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %14, i32 0, i32 1
  %16 = call i64 @list_empty(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %68

19:                                               ; preds = %13, %3
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.io_uring_sqe* @kmalloc(i32 4, i32 %20)
  store %struct.io_uring_sqe* %21, %struct.io_uring_sqe** %8, align 8
  %22 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %8, align 8
  %23 = icmp ne %struct.io_uring_sqe* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %68

27:                                               ; preds = %19
  %28 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %28, i32 0, i32 0
  %30 = call i32 @spin_lock_irq(i32* %29)
  %31 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %5, align 8
  %32 = load %struct.io_kiocb*, %struct.io_kiocb** %6, align 8
  %33 = call i32 @io_sequence_defer(%struct.io_ring_ctx* %31, %struct.io_kiocb* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %27
  %36 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %5, align 8
  %37 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %36, i32 0, i32 1
  %38 = call i64 @list_empty(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %5, align 8
  %42 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock_irq(i32* %42)
  %44 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %8, align 8
  %45 = call i32 @kfree(%struct.io_uring_sqe* %44)
  store i32 0, i32* %4, align 4
  br label %68

46:                                               ; preds = %35, %27
  %47 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %8, align 8
  %48 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %7, align 8
  %49 = call i32 @memcpy(%struct.io_uring_sqe* %47, %struct.io_uring_sqe* %48, i32 4)
  %50 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %8, align 8
  %51 = load %struct.io_kiocb*, %struct.io_kiocb** %6, align 8
  %52 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store %struct.io_uring_sqe* %50, %struct.io_uring_sqe** %53, align 8
  %54 = load %struct.io_kiocb*, %struct.io_kiocb** %6, align 8
  %55 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %54, i32 0, i32 1
  %56 = load i32, i32* @io_sq_wq_submit_work, align 4
  %57 = call i32 @INIT_WORK(i32* %55, i32 %56)
  %58 = load %struct.io_kiocb*, %struct.io_kiocb** %6, align 8
  %59 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %58, i32 0, i32 0
  %60 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %5, align 8
  %61 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %60, i32 0, i32 1
  %62 = call i32 @list_add_tail(i32* %59, i32* %61)
  %63 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %5, align 8
  %64 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock_irq(i32* %64)
  %66 = load i32, i32* @EIOCBQUEUED, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %46, %40, %24, %18
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @io_sequence_defer(%struct.io_ring_ctx*, %struct.io_kiocb*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.io_uring_sqe* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kfree(%struct.io_uring_sqe*) #1

declare dso_local i32 @memcpy(%struct.io_uring_sqe*, %struct.io_uring_sqe*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
