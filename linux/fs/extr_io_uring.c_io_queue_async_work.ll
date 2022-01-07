; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_queue_async_work.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_queue_async_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ring_ctx = type { i32* }
%struct.io_kiocb = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@IOCB_DIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_ring_ctx*, %struct.io_kiocb*)* @io_queue_async_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_queue_async_work(%struct.io_ring_ctx* %0, %struct.io_kiocb* %1) #0 {
  %3 = alloca %struct.io_ring_ctx*, align 8
  %4 = alloca %struct.io_kiocb*, align 8
  %5 = alloca i32, align 4
  store %struct.io_ring_ctx* %0, %struct.io_ring_ctx** %3, align 8
  store %struct.io_kiocb* %1, %struct.io_kiocb** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.io_kiocb*, %struct.io_kiocb** %4, align 8
  %7 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load %struct.io_kiocb*, %struct.io_kiocb** %4, align 8
  %13 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %28 [
    i32 129, label %18
    i32 128, label %18
  ]

18:                                               ; preds = %11, %11
  %19 = load %struct.io_kiocb*, %struct.io_kiocb** %4, align 8
  %20 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IOCB_DIRECT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %11, %18
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.io_kiocb*, %struct.io_kiocb** %4, align 8
  %38 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %37, i32 0, i32 0
  %39 = call i32 @queue_work(i32 %36, i32* %38)
  ret void
}

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
