; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_sap.c_llc_sap_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_sap.c_llc_sap_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_sap = type { i32 }
%struct.sk_buff = type { i32, %struct.sock* }
%struct.sock = type { i32 }
%struct.llc_sap_state_ev = type { i64, i32 }

@LLC_SAP_EV_TYPE_PDU = common dso_local global i32 0, align 4
@sock_efree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.llc_sap*, %struct.sk_buff*, %struct.sock*)* @llc_sap_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llc_sap_rcv(%struct.llc_sap* %0, %struct.sk_buff* %1, %struct.sock* %2) #0 {
  %4 = alloca %struct.llc_sap*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.llc_sap_state_ev*, align 8
  store %struct.llc_sap* %0, %struct.llc_sap** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.sock* %2, %struct.sock** %6, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = call %struct.llc_sap_state_ev* @llc_sap_ev(%struct.sk_buff* %8)
  store %struct.llc_sap_state_ev* %9, %struct.llc_sap_state_ev** %7, align 8
  %10 = load i32, i32* @LLC_SAP_EV_TYPE_PDU, align 4
  %11 = load %struct.llc_sap_state_ev*, %struct.llc_sap_state_ev** %7, align 8
  %12 = getelementptr inbounds %struct.llc_sap_state_ev, %struct.llc_sap_state_ev* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load %struct.llc_sap_state_ev*, %struct.llc_sap_state_ev** %7, align 8
  %14 = getelementptr inbounds %struct.llc_sap_state_ev, %struct.llc_sap_state_ev* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call i32 @skb_orphan(%struct.sk_buff* %15)
  %17 = load %struct.sock*, %struct.sock** %6, align 8
  %18 = call i32 @sock_hold(%struct.sock* %17)
  %19 = load %struct.sock*, %struct.sock** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  store %struct.sock* %19, %struct.sock** %21, align 8
  %22 = load i32, i32* @sock_efree, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.llc_sap*, %struct.llc_sap** %4, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i32 @llc_sap_state_process(%struct.llc_sap* %25, %struct.sk_buff* %26)
  ret void
}

declare dso_local %struct.llc_sap_state_ev* @llc_sap_ev(%struct.sk_buff*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @llc_sap_state_process(%struct.llc_sap*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
