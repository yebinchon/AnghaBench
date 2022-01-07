; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_conn.c_llc_conn_send_pdus.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_conn.c_llc_conn_send_pdus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.llc_pdu_sn = type { i32 }
%struct.TYPE_4__ = type { i32 }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @llc_conn_send_pdus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llc_conn_send_pdus(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.llc_pdu_sn*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  br label %6

6:                                                ; preds = %40, %1
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 0
  %9 = call %struct.sk_buff* @skb_dequeue(i32* %8)
  store %struct.sk_buff* %9, %struct.sk_buff** %3, align 8
  %10 = icmp ne %struct.sk_buff* %9, null
  br i1 %10, label %11, label %43

11:                                               ; preds = %6
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = call %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff* %12)
  store %struct.llc_pdu_sn* %13, %struct.llc_pdu_sn** %4, align 8
  %14 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %4, align 8
  %15 = call i64 @LLC_PDU_TYPE_IS_I(%struct.llc_pdu_sn* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %11
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IFF_LOOPBACK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %17
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  %29 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %27, i32 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %5, align 8
  %30 = load %struct.sock*, %struct.sock** %2, align 8
  %31 = call %struct.TYPE_4__* @llc_sk(%struct.sock* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = call i32 @skb_queue_tail(i32* %32, %struct.sk_buff* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  br label %43

38:                                               ; preds = %26
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %39, %struct.sk_buff** %3, align 8
  br label %40

40:                                               ; preds = %38, %17, %11
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = call i32 @dev_queue_xmit(%struct.sk_buff* %41)
  br label %6

43:                                               ; preds = %37, %6
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff*) #1

declare dso_local i64 @LLC_PDU_TYPE_IS_I(%struct.llc_pdu_sn*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @llc_sk(%struct.sock*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
