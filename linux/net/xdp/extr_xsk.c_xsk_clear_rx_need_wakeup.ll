; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c_xsk_clear_rx_need_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c_xsk_clear_rx_need_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_umem = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@XDP_WAKEUP_RX = common dso_local global i32 0, align 4
@XDP_RING_NEED_WAKEUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xsk_clear_rx_need_wakeup(%struct.xdp_umem* %0) #0 {
  %2 = alloca %struct.xdp_umem*, align 8
  store %struct.xdp_umem* %0, %struct.xdp_umem** %2, align 8
  %3 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %4 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @XDP_WAKEUP_RX, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %27

10:                                               ; preds = %1
  %11 = load i32, i32* @XDP_RING_NEED_WAKEUP, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %14 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %12
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @XDP_WAKEUP_RX, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %24 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %10, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
