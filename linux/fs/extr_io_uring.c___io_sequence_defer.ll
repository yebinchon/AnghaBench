; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c___io_sequence_defer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c___io_sequence_defer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ring_ctx = type { i64, i64, i32 }
%struct.io_kiocb = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_ring_ctx*, %struct.io_kiocb*)* @__io_sequence_defer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__io_sequence_defer(%struct.io_ring_ctx* %0, %struct.io_kiocb* %1) #0 {
  %3 = alloca %struct.io_ring_ctx*, align 8
  %4 = alloca %struct.io_kiocb*, align 8
  store %struct.io_ring_ctx* %0, %struct.io_ring_ctx** %3, align 8
  store %struct.io_kiocb* %1, %struct.io_kiocb** %4, align 8
  %5 = load %struct.io_kiocb*, %struct.io_kiocb** %4, align 8
  %6 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %10, %13
  %15 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %15, i32 0, i32 2
  %17 = call i64 @atomic_read(i32* %16)
  %18 = add nsw i64 %14, %17
  %19 = icmp ne i64 %7, %18
  %20 = zext i1 %19 to i32
  ret i32 %20
}

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
