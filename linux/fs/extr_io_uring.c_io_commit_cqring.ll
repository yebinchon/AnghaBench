; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_commit_cqring.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_commit_cqring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ring_ctx = type { i32 }
%struct.io_kiocb = type { i32 }

@REQ_F_SHADOW_DRAIN = common dso_local global i32 0, align 4
@REQ_F_IO_DRAINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_ring_ctx*)* @io_commit_cqring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_commit_cqring(%struct.io_ring_ctx* %0) #0 {
  %2 = alloca %struct.io_ring_ctx*, align 8
  %3 = alloca %struct.io_kiocb*, align 8
  store %struct.io_ring_ctx* %0, %struct.io_ring_ctx** %2, align 8
  br label %4

4:                                                ; preds = %8, %1
  %5 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %6 = call %struct.io_kiocb* @io_get_timeout_req(%struct.io_ring_ctx* %5)
  store %struct.io_kiocb* %6, %struct.io_kiocb** %3, align 8
  %7 = icmp ne %struct.io_kiocb* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load %struct.io_kiocb*, %struct.io_kiocb** %3, align 8
  %10 = call i32 @io_kill_timeout(%struct.io_kiocb* %9)
  br label %4

11:                                               ; preds = %4
  %12 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %13 = call i32 @__io_commit_cqring(%struct.io_ring_ctx* %12)
  br label %14

14:                                               ; preds = %28, %25, %11
  %15 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %16 = call %struct.io_kiocb* @io_get_deferred_req(%struct.io_ring_ctx* %15)
  store %struct.io_kiocb* %16, %struct.io_kiocb** %3, align 8
  %17 = icmp ne %struct.io_kiocb* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %14
  %19 = load %struct.io_kiocb*, %struct.io_kiocb** %3, align 8
  %20 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @REQ_F_SHADOW_DRAIN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.io_kiocb*, %struct.io_kiocb** %3, align 8
  %27 = call i32 @__io_free_req(%struct.io_kiocb* %26)
  br label %14

28:                                               ; preds = %18
  %29 = load i32, i32* @REQ_F_IO_DRAINED, align 4
  %30 = load %struct.io_kiocb*, %struct.io_kiocb** %3, align 8
  %31 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %35 = load %struct.io_kiocb*, %struct.io_kiocb** %3, align 8
  %36 = call i32 @io_queue_async_work(%struct.io_ring_ctx* %34, %struct.io_kiocb* %35)
  br label %14

37:                                               ; preds = %14
  ret void
}

declare dso_local %struct.io_kiocb* @io_get_timeout_req(%struct.io_ring_ctx*) #1

declare dso_local i32 @io_kill_timeout(%struct.io_kiocb*) #1

declare dso_local i32 @__io_commit_cqring(%struct.io_ring_ctx*) #1

declare dso_local %struct.io_kiocb* @io_get_deferred_req(%struct.io_ring_ctx*) #1

declare dso_local i32 @__io_free_req(%struct.io_kiocb*) #1

declare dso_local i32 @io_queue_async_work(%struct.io_ring_ctx*, %struct.io_kiocb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
