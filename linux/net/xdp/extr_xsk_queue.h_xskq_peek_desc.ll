; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk_queue.h_xskq_peek_desc.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk_queue.h_xskq_peek_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsk_queue = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xdp_desc = type { i32 }
%struct.xdp_umem = type { i32 }

@RX_BATCH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xdp_desc* (%struct.xsk_queue*, %struct.xdp_desc*, %struct.xdp_umem*)* @xskq_peek_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xdp_desc* @xskq_peek_desc(%struct.xsk_queue* %0, %struct.xdp_desc* %1, %struct.xdp_umem* %2) #0 {
  %4 = alloca %struct.xsk_queue*, align 8
  %5 = alloca %struct.xdp_desc*, align 8
  %6 = alloca %struct.xdp_umem*, align 8
  store %struct.xsk_queue* %0, %struct.xsk_queue** %4, align 8
  store %struct.xdp_desc* %1, %struct.xdp_desc** %5, align 8
  store %struct.xdp_umem* %2, %struct.xdp_umem** %6, align 8
  %7 = load %struct.xsk_queue*, %struct.xsk_queue** %4, align 8
  %8 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.xsk_queue*, %struct.xsk_queue** %4, align 8
  %11 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %3
  %15 = call i32 (...) @smp_mb()
  %16 = load %struct.xsk_queue*, %struct.xsk_queue** %4, align 8
  %17 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.xsk_queue*, %struct.xsk_queue** %4, align 8
  %22 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @WRITE_ONCE(i32 %20, i64 %23)
  %25 = load %struct.xsk_queue*, %struct.xsk_queue** %4, align 8
  %26 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.xsk_queue*, %struct.xsk_queue** %4, align 8
  %29 = load i32, i32* @RX_BATCH_SIZE, align 4
  %30 = call i64 @xskq_nb_avail(%struct.xsk_queue* %28, i32 %29)
  %31 = add nsw i64 %27, %30
  %32 = load %struct.xsk_queue*, %struct.xsk_queue** %4, align 8
  %33 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = call i32 (...) @smp_rmb()
  br label %35

35:                                               ; preds = %14, %3
  %36 = load %struct.xsk_queue*, %struct.xsk_queue** %4, align 8
  %37 = load %struct.xdp_desc*, %struct.xdp_desc** %5, align 8
  %38 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %39 = call %struct.xdp_desc* @xskq_validate_desc(%struct.xsk_queue* %36, %struct.xdp_desc* %37, %struct.xdp_umem* %38)
  ret %struct.xdp_desc* %39
}

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @WRITE_ONCE(i32, i64) #1

declare dso_local i64 @xskq_nb_avail(%struct.xsk_queue*, i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local %struct.xdp_desc* @xskq_validate_desc(%struct.xsk_queue*, %struct.xdp_desc*, %struct.xdp_umem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
