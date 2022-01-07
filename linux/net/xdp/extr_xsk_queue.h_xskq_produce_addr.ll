; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk_queue.h_xskq_produce_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk_queue.h_xskq_produce_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsk_queue = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xdp_umem_ring = type { i32* }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xsk_queue*, i32)* @xskq_produce_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xskq_produce_addr(%struct.xsk_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xsk_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xdp_umem_ring*, align 8
  store %struct.xsk_queue* %0, %struct.xsk_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.xsk_queue*, %struct.xsk_queue** %4, align 8
  %8 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = bitcast %struct.TYPE_2__* %9 to %struct.xdp_umem_ring*
  store %struct.xdp_umem_ring* %10, %struct.xdp_umem_ring** %6, align 8
  %11 = load %struct.xsk_queue*, %struct.xsk_queue** %4, align 8
  %12 = load %struct.xsk_queue*, %struct.xsk_queue** %4, align 8
  %13 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @xskq_nb_free(%struct.xsk_queue* %11, i32 %14, i32 1)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOSPC, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %45

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.xdp_umem_ring*, %struct.xdp_umem_ring** %6, align 8
  %23 = getelementptr inbounds %struct.xdp_umem_ring, %struct.xdp_umem_ring* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.xsk_queue*, %struct.xsk_queue** %4, align 8
  %26 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = sext i32 %27 to i64
  %30 = load %struct.xsk_queue*, %struct.xsk_queue** %4, align 8
  %31 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = and i64 %29, %32
  %34 = getelementptr inbounds i32, i32* %24, i64 %33
  store i32 %21, i32* %34, align 4
  %35 = call i32 (...) @smp_wmb()
  %36 = load %struct.xsk_queue*, %struct.xsk_queue** %4, align 8
  %37 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.xsk_queue*, %struct.xsk_queue** %4, align 8
  %42 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @WRITE_ONCE(i32 %40, i32 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %20, %17
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @xskq_nb_free(%struct.xsk_queue*, i32, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
