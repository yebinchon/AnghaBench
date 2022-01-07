; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_queue_sqe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_queue_sqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ring_ctx = type { i32 }
%struct.io_kiocb = type { i32 }
%struct.sqe_submit = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EIOCBQUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_ring_ctx*, %struct.io_kiocb*, %struct.sqe_submit*)* @io_queue_sqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_queue_sqe(%struct.io_ring_ctx* %0, %struct.io_kiocb* %1, %struct.sqe_submit* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.io_ring_ctx*, align 8
  %6 = alloca %struct.io_kiocb*, align 8
  %7 = alloca %struct.sqe_submit*, align 8
  %8 = alloca i32, align 4
  store %struct.io_ring_ctx* %0, %struct.io_ring_ctx** %5, align 8
  store %struct.io_kiocb* %1, %struct.io_kiocb** %6, align 8
  store %struct.sqe_submit* %2, %struct.sqe_submit** %7, align 8
  %9 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %5, align 8
  %10 = load %struct.io_kiocb*, %struct.io_kiocb** %6, align 8
  %11 = load %struct.sqe_submit*, %struct.sqe_submit** %7, align 8
  %12 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = call i32 @io_req_defer(%struct.io_ring_ctx* %9, %struct.io_kiocb* %10, %struct.TYPE_2__* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @EIOCBQUEUED, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.io_kiocb*, %struct.io_kiocb** %6, align 8
  %24 = call i32 @io_free_req(%struct.io_kiocb* %23)
  %25 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %5, align 8
  %26 = load %struct.sqe_submit*, %struct.sqe_submit** %7, align 8
  %27 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @io_cqring_add_event(%struct.io_ring_ctx* %25, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %22, %17
  store i32 0, i32* %4, align 4
  br label %39

34:                                               ; preds = %3
  %35 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %5, align 8
  %36 = load %struct.io_kiocb*, %struct.io_kiocb** %6, align 8
  %37 = load %struct.sqe_submit*, %struct.sqe_submit** %7, align 8
  %38 = call i32 @__io_queue_sqe(%struct.io_ring_ctx* %35, %struct.io_kiocb* %36, %struct.sqe_submit* %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %34, %33
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @io_req_defer(%struct.io_ring_ctx*, %struct.io_kiocb*, %struct.TYPE_2__*) #1

declare dso_local i32 @io_free_req(%struct.io_kiocb*) #1

declare dso_local i32 @io_cqring_add_event(%struct.io_ring_ctx*, i32, i32) #1

declare dso_local i32 @__io_queue_sqe(%struct.io_ring_ctx*, %struct.io_kiocb*, %struct.sqe_submit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
