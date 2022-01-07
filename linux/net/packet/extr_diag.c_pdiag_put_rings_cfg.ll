; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_diag.c_pdiag_put_rings_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_diag.c_pdiag_put_rings_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_sock = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@PACKET_DIAG_RX_RING = common dso_local global i32 0, align 4
@PACKET_DIAG_TX_RING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_sock*, %struct.sk_buff*)* @pdiag_put_rings_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdiag_put_rings_cfg(%struct.packet_sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.packet_sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.packet_sock* %0, %struct.packet_sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.packet_sock*, %struct.packet_sock** %3, align 8
  %7 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.packet_sock*, %struct.packet_sock** %3, align 8
  %10 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %9, i32 0, i32 3
  %11 = load %struct.packet_sock*, %struct.packet_sock** %3, align 8
  %12 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PACKET_DIAG_RX_RING, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @pdiag_put_ring(i32* %10, i32 %13, i32 %14, %struct.sk_buff* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %2
  %20 = load %struct.packet_sock*, %struct.packet_sock** %3, align 8
  %21 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %20, i32 0, i32 2
  %22 = load %struct.packet_sock*, %struct.packet_sock** %3, align 8
  %23 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PACKET_DIAG_TX_RING, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @pdiag_put_ring(i32* %21, i32 %24, i32 %25, %struct.sk_buff* %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %19, %2
  %29 = load %struct.packet_sock*, %struct.packet_sock** %3, align 8
  %30 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pdiag_put_ring(i32*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
