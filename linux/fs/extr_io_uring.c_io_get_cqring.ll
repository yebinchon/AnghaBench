; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_get_cqring.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_get_cqring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_uring_cqe = type { i32 }
%struct.io_ring_ctx = type { i32, i32, %struct.io_rings* }
%struct.io_rings = type { i32, %struct.io_uring_cqe*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.io_uring_cqe* (%struct.io_ring_ctx*)* @io_get_cqring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.io_uring_cqe* @io_get_cqring(%struct.io_ring_ctx* %0) #0 {
  %2 = alloca %struct.io_uring_cqe*, align 8
  %3 = alloca %struct.io_ring_ctx*, align 8
  %4 = alloca %struct.io_rings*, align 8
  %5 = alloca i32, align 4
  store %struct.io_ring_ctx* %0, %struct.io_ring_ctx** %3, align 8
  %6 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %6, i32 0, i32 2
  %8 = load %struct.io_rings*, %struct.io_rings** %7, align 8
  store %struct.io_rings* %8, %struct.io_rings** %4, align 8
  %9 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.io_rings*, %struct.io_rings** %4, align 8
  %14 = getelementptr inbounds %struct.io_rings, %struct.io_rings* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @READ_ONCE(i32 %16)
  %18 = sub i32 %12, %17
  %19 = load %struct.io_rings*, %struct.io_rings** %4, align 8
  %20 = getelementptr inbounds %struct.io_rings, %struct.io_rings* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store %struct.io_uring_cqe* null, %struct.io_uring_cqe** %2, align 8
  br label %39

24:                                               ; preds = %1
  %25 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = load %struct.io_rings*, %struct.io_rings** %4, align 8
  %30 = getelementptr inbounds %struct.io_rings, %struct.io_rings* %29, i32 0, i32 1
  %31 = load %struct.io_uring_cqe*, %struct.io_uring_cqe** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %32, %35
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.io_uring_cqe, %struct.io_uring_cqe* %31, i64 %37
  store %struct.io_uring_cqe* %38, %struct.io_uring_cqe** %2, align 8
  br label %39

39:                                               ; preds = %24, %23
  %40 = load %struct.io_uring_cqe*, %struct.io_uring_cqe** %2, align 8
  ret %struct.io_uring_cqe* %40
}

declare dso_local i32 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
