; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk_diag.c_xsk_diag_put_rings_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk_diag.c_xsk_diag_put_rings_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_sock = type { i64, i64 }
%struct.sk_buff = type { i32 }

@XDP_DIAG_RX_RING = common dso_local global i32 0, align 4
@XDP_DIAG_TX_RING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdp_sock*, %struct.sk_buff*)* @xsk_diag_put_rings_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsk_diag_put_rings_cfg(%struct.xdp_sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.xdp_sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.xdp_sock* %0, %struct.xdp_sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.xdp_sock*, %struct.xdp_sock** %3, align 8
  %7 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.xdp_sock*, %struct.xdp_sock** %3, align 8
  %12 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @XDP_DIAG_RX_RING, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @xsk_diag_put_ring(i64 %13, i32 %14, %struct.sk_buff* %15)
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %10, %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %17
  %21 = load %struct.xdp_sock*, %struct.xdp_sock** %3, align 8
  %22 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.xdp_sock*, %struct.xdp_sock** %3, align 8
  %27 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @XDP_DIAG_TX_RING, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call i32 @xsk_diag_put_ring(i64 %28, i32 %29, %struct.sk_buff* %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %25, %20, %17
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @xsk_diag_put_ring(i64, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
