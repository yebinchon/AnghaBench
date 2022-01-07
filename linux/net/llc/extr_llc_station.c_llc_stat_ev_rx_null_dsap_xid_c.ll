; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_station.c_llc_stat_ev_rx_null_dsap_xid_c.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_station.c_llc_stat_ev_rx_null_dsap_xid_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.llc_pdu_un = type { i32 }

@LLC_1_PDU_CMD_XID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @llc_stat_ev_rx_null_dsap_xid_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_stat_ev_rx_null_dsap_xid_c(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.llc_pdu_un*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %4 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %5 = call %struct.llc_pdu_un* @llc_pdu_un_hdr(%struct.sk_buff* %4)
  store %struct.llc_pdu_un* %5, %struct.llc_pdu_un** %3, align 8
  %6 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %3, align 8
  %7 = call i64 @LLC_PDU_IS_CMD(%struct.llc_pdu_un* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %3, align 8
  %11 = call i64 @LLC_PDU_TYPE_IS_U(%struct.llc_pdu_un* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %3, align 8
  %15 = call i64 @LLC_U_PDU_CMD(%struct.llc_pdu_un* %14)
  %16 = load i64, i64* @LLC_1_PDU_CMD_XID, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %3, align 8
  %20 = getelementptr inbounds %struct.llc_pdu_un, %struct.llc_pdu_un* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %18, %13, %9, %1
  %25 = phi i1 [ false, %13 ], [ false, %9 ], [ false, %1 ], [ %23, %18 ]
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 0, i32 1
  ret i32 %27
}

declare dso_local %struct.llc_pdu_un* @llc_pdu_un_hdr(%struct.sk_buff*) #1

declare dso_local i64 @LLC_PDU_IS_CMD(%struct.llc_pdu_un*) #1

declare dso_local i64 @LLC_PDU_TYPE_IS_U(%struct.llc_pdu_un*) #1

declare dso_local i64 @LLC_U_PDU_CMD(%struct.llc_pdu_un*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
