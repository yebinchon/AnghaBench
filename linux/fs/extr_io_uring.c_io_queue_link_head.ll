; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_queue_link_head.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_queue_link_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ring_ctx = type { i32, i32 }
%struct.sqe_submit = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.io_kiocb = type { i32, i32 }

@REQ_F_IO_DRAIN = common dso_local global i32 0, align 4
@EIOCBQUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_ring_ctx*, %struct.io_kiocb*, %struct.sqe_submit*, %struct.io_kiocb*)* @io_queue_link_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_queue_link_head(%struct.io_ring_ctx* %0, %struct.io_kiocb* %1, %struct.sqe_submit* %2, %struct.io_kiocb* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.io_ring_ctx*, align 8
  %7 = alloca %struct.io_kiocb*, align 8
  %8 = alloca %struct.sqe_submit*, align 8
  %9 = alloca %struct.io_kiocb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.io_ring_ctx* %0, %struct.io_ring_ctx** %6, align 8
  store %struct.io_kiocb* %1, %struct.io_kiocb** %7, align 8
  store %struct.sqe_submit* %2, %struct.sqe_submit** %8, align 8
  store %struct.io_kiocb* %3, %struct.io_kiocb** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.io_kiocb*, %struct.io_kiocb** %9, align 8
  %13 = icmp ne %struct.io_kiocb* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %6, align 8
  %16 = load %struct.io_kiocb*, %struct.io_kiocb** %7, align 8
  %17 = load %struct.sqe_submit*, %struct.sqe_submit** %8, align 8
  %18 = call i32 @io_queue_sqe(%struct.io_ring_ctx* %15, %struct.io_kiocb* %16, %struct.sqe_submit* %17)
  store i32 %18, i32* %5, align 4
  br label %73

19:                                               ; preds = %4
  %20 = load i32, i32* @REQ_F_IO_DRAIN, align 4
  %21 = load %struct.io_kiocb*, %struct.io_kiocb** %7, align 8
  %22 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %6, align 8
  %26 = load %struct.io_kiocb*, %struct.io_kiocb** %7, align 8
  %27 = load %struct.sqe_submit*, %struct.sqe_submit** %8, align 8
  %28 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = call i32 @io_req_defer(%struct.io_ring_ctx* %25, %struct.io_kiocb* %26, %struct.TYPE_2__* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %19
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @EIOCBQUEUED, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load %struct.io_kiocb*, %struct.io_kiocb** %7, align 8
  %40 = call i32 @io_free_req(%struct.io_kiocb* %39)
  %41 = load %struct.io_kiocb*, %struct.io_kiocb** %9, align 8
  %42 = call i32 @__io_free_req(%struct.io_kiocb* %41)
  %43 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %6, align 8
  %44 = load %struct.sqe_submit*, %struct.sqe_submit** %8, align 8
  %45 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @io_cqring_add_event(%struct.io_ring_ctx* %43, i32 %48, i32 %49)
  store i32 0, i32* %5, align 4
  br label %73

51:                                               ; preds = %33
  br label %53

52:                                               ; preds = %19
  store i32 1, i32* %11, align 4
  br label %53

53:                                               ; preds = %52, %51
  %54 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %6, align 8
  %55 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %54, i32 0, i32 0
  %56 = call i32 @spin_lock_irq(i32* %55)
  %57 = load %struct.io_kiocb*, %struct.io_kiocb** %9, align 8
  %58 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %57, i32 0, i32 0
  %59 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %6, align 8
  %60 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %59, i32 0, i32 1
  %61 = call i32 @list_add_tail(i32* %58, i32* %60)
  %62 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %6, align 8
  %63 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %62, i32 0, i32 0
  %64 = call i32 @spin_unlock_irq(i32* %63)
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %53
  %68 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %6, align 8
  %69 = load %struct.io_kiocb*, %struct.io_kiocb** %7, align 8
  %70 = load %struct.sqe_submit*, %struct.sqe_submit** %8, align 8
  %71 = call i32 @__io_queue_sqe(%struct.io_ring_ctx* %68, %struct.io_kiocb* %69, %struct.sqe_submit* %70)
  store i32 %71, i32* %5, align 4
  br label %73

72:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %67, %38, %14
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @io_queue_sqe(%struct.io_ring_ctx*, %struct.io_kiocb*, %struct.sqe_submit*) #1

declare dso_local i32 @io_req_defer(%struct.io_ring_ctx*, %struct.io_kiocb*, %struct.TYPE_2__*) #1

declare dso_local i32 @io_free_req(%struct.io_kiocb*) #1

declare dso_local i32 @__io_free_req(%struct.io_kiocb*) #1

declare dso_local i32 @io_cqring_add_event(%struct.io_ring_ctx*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @__io_queue_sqe(%struct.io_ring_ctx*, %struct.io_kiocb*, %struct.sqe_submit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
