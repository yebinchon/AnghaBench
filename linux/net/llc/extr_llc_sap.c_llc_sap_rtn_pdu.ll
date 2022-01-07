; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_sap.c_llc_sap_rtn_pdu.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_sap.c_llc_sap_rtn_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_sap = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_sap_state_ev = type { i32, i32 }
%struct.llc_pdu_un = type { i32 }

@LLC_TEST_PRIM = common dso_local global i32 0, align 4
@LLC_XID_PRIM = common dso_local global i32 0, align 4
@LLC_DATAUNIT_PRIM = common dso_local global i32 0, align 4
@LLC_IND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @llc_sap_rtn_pdu(%struct.llc_sap* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.llc_sap*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.llc_sap_state_ev*, align 8
  %6 = alloca %struct.llc_pdu_un*, align 8
  store %struct.llc_sap* %0, %struct.llc_sap** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call %struct.llc_sap_state_ev* @llc_sap_ev(%struct.sk_buff* %7)
  store %struct.llc_sap_state_ev* %8, %struct.llc_sap_state_ev** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.llc_pdu_un* @llc_pdu_un_hdr(%struct.sk_buff* %9)
  store %struct.llc_pdu_un* %10, %struct.llc_pdu_un** %6, align 8
  %11 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %6, align 8
  %12 = call i32 @LLC_U_PDU_RSP(%struct.llc_pdu_un* %11)
  switch i32 %12, label %25 [
    i32 130, label %13
    i32 128, label %17
    i32 129, label %21
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @LLC_TEST_PRIM, align 4
  %15 = load %struct.llc_sap_state_ev*, %struct.llc_sap_state_ev** %5, align 8
  %16 = getelementptr inbounds %struct.llc_sap_state_ev, %struct.llc_sap_state_ev* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  br label %25

17:                                               ; preds = %2
  %18 = load i32, i32* @LLC_XID_PRIM, align 4
  %19 = load %struct.llc_sap_state_ev*, %struct.llc_sap_state_ev** %5, align 8
  %20 = getelementptr inbounds %struct.llc_sap_state_ev, %struct.llc_sap_state_ev* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @LLC_DATAUNIT_PRIM, align 4
  %23 = load %struct.llc_sap_state_ev*, %struct.llc_sap_state_ev** %5, align 8
  %24 = getelementptr inbounds %struct.llc_sap_state_ev, %struct.llc_sap_state_ev* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %2, %21, %17, %13
  %26 = load i32, i32* @LLC_IND, align 4
  %27 = load %struct.llc_sap_state_ev*, %struct.llc_sap_state_ev** %5, align 8
  %28 = getelementptr inbounds %struct.llc_sap_state_ev, %struct.llc_sap_state_ev* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  ret void
}

declare dso_local %struct.llc_sap_state_ev* @llc_sap_ev(%struct.sk_buff*) #1

declare dso_local %struct.llc_pdu_un* @llc_pdu_un_hdr(%struct.sk_buff*) #1

declare dso_local i32 @LLC_U_PDU_RSP(%struct.llc_pdu_un*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
