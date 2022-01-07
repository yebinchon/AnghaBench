; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c___io_queue_sqe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c___io_queue_sqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ring_ctx = type { i32 }
%struct.io_kiocb = type { i32, i32, i32, i32 }
%struct.sqe_submit = type { %struct.io_uring_sqe* }
%struct.io_uring_sqe = type { i32 }
%struct.async_list = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@REQ_F_NOWAIT = common dso_local global i32 0, align 4
@REQ_F_MUST_PUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@io_sq_wq_submit_work = common dso_local global i32 0, align 4
@REQ_F_LINK = common dso_local global i32 0, align 4
@REQ_F_FAIL_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_ring_ctx*, %struct.io_kiocb*, %struct.sqe_submit*)* @__io_queue_sqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__io_queue_sqe(%struct.io_ring_ctx* %0, %struct.io_kiocb* %1, %struct.sqe_submit* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.io_ring_ctx*, align 8
  %6 = alloca %struct.io_kiocb*, align 8
  %7 = alloca %struct.sqe_submit*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.io_uring_sqe*, align 8
  %10 = alloca %struct.async_list*, align 8
  store %struct.io_ring_ctx* %0, %struct.io_ring_ctx** %5, align 8
  store %struct.io_kiocb* %1, %struct.io_kiocb** %6, align 8
  store %struct.sqe_submit* %2, %struct.sqe_submit** %7, align 8
  %11 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %5, align 8
  %12 = load %struct.io_kiocb*, %struct.io_kiocb** %6, align 8
  %13 = load %struct.sqe_submit*, %struct.sqe_submit** %7, align 8
  %14 = call i32 @__io_submit_sqe(%struct.io_ring_ctx* %11, %struct.io_kiocb* %12, %struct.sqe_submit* %13, i32 1)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @EAGAIN, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %75

19:                                               ; preds = %3
  %20 = load %struct.io_kiocb*, %struct.io_kiocb** %6, align 8
  %21 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @REQ_F_NOWAIT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.io_kiocb*, %struct.io_kiocb** %6, align 8
  %28 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @REQ_F_MUST_PUNT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %75

33:                                               ; preds = %26, %19
  %34 = load %struct.sqe_submit*, %struct.sqe_submit** %7, align 8
  %35 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %34, i32 0, i32 0
  %36 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %35, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.io_uring_sqe* @kmemdup(%struct.io_uring_sqe* %36, i32 4, i32 %37)
  store %struct.io_uring_sqe* %38, %struct.io_uring_sqe** %9, align 8
  %39 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %9, align 8
  %40 = icmp ne %struct.io_uring_sqe* %39, null
  br i1 %40, label %41, label %74

41:                                               ; preds = %33
  %42 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %9, align 8
  %43 = load %struct.sqe_submit*, %struct.sqe_submit** %7, align 8
  %44 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %43, i32 0, i32 0
  store %struct.io_uring_sqe* %42, %struct.io_uring_sqe** %44, align 8
  %45 = load %struct.io_kiocb*, %struct.io_kiocb** %6, align 8
  %46 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %45, i32 0, i32 3
  %47 = load %struct.sqe_submit*, %struct.sqe_submit** %7, align 8
  %48 = call i32 @memcpy(i32* %46, %struct.sqe_submit* %47, i32 8)
  %49 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %5, align 8
  %50 = load %struct.sqe_submit*, %struct.sqe_submit** %7, align 8
  %51 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %50, i32 0, i32 0
  %52 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %51, align 8
  %53 = call %struct.async_list* @io_async_list_from_sqe(%struct.io_ring_ctx* %49, %struct.io_uring_sqe* %52)
  store %struct.async_list* %53, %struct.async_list** %10, align 8
  %54 = load %struct.async_list*, %struct.async_list** %10, align 8
  %55 = load %struct.io_kiocb*, %struct.io_kiocb** %6, align 8
  %56 = call i32 @io_add_to_prev_work(%struct.async_list* %54, %struct.io_kiocb* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %73, label %58

58:                                               ; preds = %41
  %59 = load %struct.async_list*, %struct.async_list** %10, align 8
  %60 = icmp ne %struct.async_list* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.async_list*, %struct.async_list** %10, align 8
  %63 = getelementptr inbounds %struct.async_list, %struct.async_list* %62, i32 0, i32 0
  %64 = call i32 @atomic_inc(i32* %63)
  br label %65

65:                                               ; preds = %61, %58
  %66 = load %struct.io_kiocb*, %struct.io_kiocb** %6, align 8
  %67 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %66, i32 0, i32 2
  %68 = load i32, i32* @io_sq_wq_submit_work, align 4
  %69 = call i32 @INIT_WORK(i32* %67, i32 %68)
  %70 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %5, align 8
  %71 = load %struct.io_kiocb*, %struct.io_kiocb** %6, align 8
  %72 = call i32 @io_queue_async_work(%struct.io_ring_ctx* %70, %struct.io_kiocb* %71)
  br label %73

73:                                               ; preds = %65, %41
  store i32 0, i32* %4, align 4
  br label %104

74:                                               ; preds = %33
  br label %75

75:                                               ; preds = %74, %26, %3
  %76 = load %struct.io_kiocb*, %struct.io_kiocb** %6, align 8
  %77 = call i32 @io_put_req(%struct.io_kiocb* %76)
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %75
  %81 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %5, align 8
  %82 = load %struct.io_kiocb*, %struct.io_kiocb** %6, align 8
  %83 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @io_cqring_add_event(%struct.io_ring_ctx* %81, i32 %84, i32 %85)
  %87 = load %struct.io_kiocb*, %struct.io_kiocb** %6, align 8
  %88 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @REQ_F_LINK, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %80
  %94 = load i32, i32* @REQ_F_FAIL_LINK, align 4
  %95 = load %struct.io_kiocb*, %struct.io_kiocb** %6, align 8
  %96 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %93, %80
  %100 = load %struct.io_kiocb*, %struct.io_kiocb** %6, align 8
  %101 = call i32 @io_put_req(%struct.io_kiocb* %100)
  br label %102

102:                                              ; preds = %99, %75
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %102, %73
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @__io_submit_sqe(%struct.io_ring_ctx*, %struct.io_kiocb*, %struct.sqe_submit*, i32) #1

declare dso_local %struct.io_uring_sqe* @kmemdup(%struct.io_uring_sqe*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.sqe_submit*, i32) #1

declare dso_local %struct.async_list* @io_async_list_from_sqe(%struct.io_ring_ctx*, %struct.io_uring_sqe*) #1

declare dso_local i32 @io_add_to_prev_work(%struct.async_list*, %struct.io_kiocb*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @io_queue_async_work(%struct.io_ring_ctx*, %struct.io_kiocb*) #1

declare dso_local i32 @io_put_req(%struct.io_kiocb*) #1

declare dso_local i32 @io_cqring_add_event(%struct.io_ring_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
