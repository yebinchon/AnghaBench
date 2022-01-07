; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_iopoll_reap_events.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_iopoll_reap_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ring_ctx = type { i32, i32, i32 }

@IORING_SETUP_IOPOLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_ring_ctx*)* @io_iopoll_reap_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_iopoll_reap_events(%struct.io_ring_ctx* %0) #0 {
  %2 = alloca %struct.io_ring_ctx*, align 8
  %3 = alloca i32, align 4
  store %struct.io_ring_ctx* %0, %struct.io_ring_ctx** %2, align 8
  %4 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @IORING_SETUP_IOPOLL, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %29

11:                                               ; preds = %1
  %12 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  br label %15

15:                                               ; preds = %21, %11
  %16 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %16, i32 0, i32 2
  %18 = call i32 @list_empty(i32* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  %22 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %23 = call i32 @io_iopoll_getevents(%struct.io_ring_ctx* %22, i32* %3, i32 1)
  %24 = call i32 (...) @cond_resched()
  br label %15

25:                                               ; preds = %15
  %26 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %27 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %26, i32 0, i32 1
  %28 = call i32 @mutex_unlock(i32* %27)
  br label %29

29:                                               ; preds = %25, %10
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @io_iopoll_getevents(%struct.io_ring_ctx*, i32*, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
