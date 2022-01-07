; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_stp_bpdu.c_br_send_bpdu.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_stp_bpdu.c_br_send_bpdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { %struct.TYPE_5__*, i32, i32 }

@LLC_RESERVE = common dso_local global i64 0, align 8
@ETH_P_802_2 = common dso_local global i32 0, align 4
@TC_PRIO_CONTROL = common dso_local global i32 0, align 4
@LLC_PDU_TYPE_U = common dso_local global i32 0, align 4
@LLC_SAP_BSPAN = common dso_local global i32 0, align 4
@LLC_PDU_CMD = common dso_local global i32 0, align 4
@NFPROTO_BRIDGE = common dso_local global i32 0, align 4
@NF_BR_LOCAL_OUT = common dso_local global i32 0, align 4
@br_send_bpdu_finish = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge_port*, i8*, i32)* @br_send_bpdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_send_bpdu(%struct.net_bridge_port* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.net_bridge_port*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = sext i32 %8 to i64
  %10 = load i64, i64* @LLC_RESERVE, align 8
  %11 = add nsw i64 %9, %10
  %12 = call %struct.sk_buff* @dev_alloc_skb(i64 %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %70

16:                                               ; preds = %3
  %17 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %18 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %21, align 8
  %22 = load i32, i32* @ETH_P_802_2, align 4
  %23 = call i32 @htons(i32 %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @TC_PRIO_CONTROL, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = load i64, i64* @LLC_RESERVE, align 8
  %31 = call i32 @skb_reserve(%struct.sk_buff* %29, i64 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @__skb_put_data(%struct.sk_buff* %32, i8* %33, i32 %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %38 = load i32, i32* @LLC_SAP_BSPAN, align 4
  %39 = load i32, i32* @LLC_SAP_BSPAN, align 4
  %40 = load i32, i32* @LLC_PDU_CMD, align 4
  %41 = call i32 @llc_pdu_header_init(%struct.sk_buff* %36, i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = call i32 @llc_pdu_init_as_ui_cmd(%struct.sk_buff* %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %46 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %51 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @llc_mac_hdr_init(%struct.sk_buff* %44, i32 %49, i32 %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = call i32 @skb_reset_mac_header(%struct.sk_buff* %56)
  %58 = load i32, i32* @NFPROTO_BRIDGE, align 4
  %59 = load i32, i32* @NF_BR_LOCAL_OUT, align 4
  %60 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %61 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = call i32 @dev_net(%struct.TYPE_5__* %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i32, i32* @br_send_bpdu_finish, align 4
  %69 = call i32 @NF_HOOK(i32 %58, i32 %59, i32 %63, i32* null, %struct.sk_buff* %64, i32* null, %struct.TYPE_5__* %67, i32 %68)
  br label %70

70:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @__skb_put_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @llc_pdu_header_init(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @llc_pdu_init_as_ui_cmd(%struct.sk_buff*) #1

declare dso_local i32 @llc_mac_hdr_init(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @NF_HOOK(i32, i32, i32, i32*, %struct.sk_buff*, i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @dev_net(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
