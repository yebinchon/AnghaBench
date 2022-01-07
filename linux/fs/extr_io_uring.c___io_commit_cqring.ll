; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c___io_commit_cqring.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c___io_commit_cqring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ring_ctx = type { i64, i32, i32, %struct.io_rings* }
%struct.io_rings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_ring_ctx*)* @__io_commit_cqring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__io_commit_cqring(%struct.io_ring_ctx* %0) #0 {
  %2 = alloca %struct.io_ring_ctx*, align 8
  %3 = alloca %struct.io_rings*, align 8
  store %struct.io_ring_ctx* %0, %struct.io_ring_ctx** %2, align 8
  %4 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %4, i32 0, i32 3
  %6 = load %struct.io_rings*, %struct.io_rings** %5, align 8
  store %struct.io_rings* %6, %struct.io_rings** %3, align 8
  %7 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.io_rings*, %struct.io_rings** %3, align 8
  %11 = getelementptr inbounds %struct.io_rings, %struct.io_rings* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @READ_ONCE(i32 %13)
  %15 = icmp ne i64 %9, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %1
  %17 = load %struct.io_rings*, %struct.io_rings** %3, align 8
  %18 = getelementptr inbounds %struct.io_rings, %struct.io_rings* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %21 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @smp_store_release(i32* %19, i64 %22)
  %24 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %24, i32 0, i32 2
  %26 = call i64 @wq_has_sleeper(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %16
  %29 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %30 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %29, i32 0, i32 2
  %31 = call i32 @wake_up_interruptible(i32* %30)
  %32 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %33 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %32, i32 0, i32 1
  %34 = load i32, i32* @SIGIO, align 4
  %35 = load i32, i32* @POLL_IN, align 4
  %36 = call i32 @kill_fasync(i32* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %28, %16
  br label %38

38:                                               ; preds = %37, %1
  ret void
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @smp_store_release(i32*, i64) #1

declare dso_local i64 @wq_has_sleeper(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
