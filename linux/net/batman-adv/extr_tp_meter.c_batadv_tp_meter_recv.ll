; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_tp_meter.c_batadv_tp_meter_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_tp_meter.c_batadv_tp_meter_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.sk_buff = type { i64 }
%struct.batadv_icmp_tp_packet = type { i32 }

@BATADV_DBG_TP_METER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Received unknown TP Metric packet type %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_tp_meter_recv(%struct.batadv_priv* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.batadv_icmp_tp_packet*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.batadv_icmp_tp_packet*
  store %struct.batadv_icmp_tp_packet* %9, %struct.batadv_icmp_tp_packet** %5, align 8
  %10 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %5, align 8
  %11 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %21 [
    i32 128, label %13
    i32 129, label %17
  ]

13:                                               ; preds = %2
  %14 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @batadv_tp_recv_msg(%struct.batadv_priv* %14, %struct.sk_buff* %15)
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call i32 @batadv_tp_recv_ack(%struct.batadv_priv* %18, %struct.sk_buff* %19)
  br label %28

21:                                               ; preds = %2
  %22 = load i32, i32* @BATADV_DBG_TP_METER, align 4
  %23 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %24 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %5, align 8
  %25 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @batadv_dbg(i32 %22, %struct.batadv_priv* %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %21, %17, %13
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i32 @consume_skb(%struct.sk_buff* %29)
  ret void
}

declare dso_local i32 @batadv_tp_recv_msg(%struct.batadv_priv*, %struct.sk_buff*) #1

declare dso_local i32 @batadv_tp_recv_ack(%struct.batadv_priv*, %struct.sk_buff*) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
