; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/bnep/extr_netdev.c_bnep_net_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/bnep/extr_netdev.c_bnep_net_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.bnep_session = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sock* }
%struct.sock = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"skb %p, dev %p\00", align 1
@BNEP_TX_QUEUE_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"tx queue is full\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @bnep_net_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnep_net_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.bnep_session*, align 8
  %6 = alloca %struct.sock*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.bnep_session* @netdev_priv(%struct.net_device* %7)
  store %struct.bnep_session* %8, %struct.bnep_session** %5, align 8
  %9 = load %struct.bnep_session*, %struct.bnep_session** %5, align 8
  %10 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %13, %struct.sock** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %14, %struct.net_device* %15)
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call i32 @netif_trans_update(%struct.net_device* %17)
  %19 = load %struct.sock*, %struct.sock** %6, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = call i32 @skb_queue_tail(i32* %20, %struct.sk_buff* %21)
  %23 = load %struct.sock*, %struct.sock** %6, align 8
  %24 = call i32 @sk_sleep(%struct.sock* %23)
  %25 = call i32 @wake_up_interruptible(i32 %24)
  %26 = load %struct.sock*, %struct.sock** %6, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  %28 = call i64 @skb_queue_len(i32* %27)
  %29 = load i64, i64* @BNEP_TX_QUEUE_LEN, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = call i32 @netif_stop_queue(%struct.net_device* %33)
  br label %35

35:                                               ; preds = %31, %2
  %36 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %36
}

declare dso_local %struct.bnep_session* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @wake_up_interruptible(i32) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
