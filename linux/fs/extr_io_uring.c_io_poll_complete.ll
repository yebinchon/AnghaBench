; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_poll_complete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_poll_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ring_ctx = type { i32 }
%struct.io_kiocb = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_ring_ctx*, %struct.io_kiocb*, i32)* @io_poll_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_poll_complete(%struct.io_ring_ctx* %0, %struct.io_kiocb* %1, i32 %2) #0 {
  %4 = alloca %struct.io_ring_ctx*, align 8
  %5 = alloca %struct.io_kiocb*, align 8
  %6 = alloca i32, align 4
  store %struct.io_ring_ctx* %0, %struct.io_ring_ctx** %4, align 8
  store %struct.io_kiocb* %1, %struct.io_kiocb** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %8 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %11 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %12 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @mangle_poll(i32 %14)
  %16 = call i32 @io_cqring_fill_event(%struct.io_ring_ctx* %10, i32 %13, i32 %15)
  %17 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %18 = call i32 @io_commit_cqring(%struct.io_ring_ctx* %17)
  ret void
}

declare dso_local i32 @io_cqring_fill_event(%struct.io_ring_ctx*, i32, i32) #1

declare dso_local i32 @mangle_poll(i32) #1

declare dso_local i32 @io_commit_cqring(%struct.io_ring_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
