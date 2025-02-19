; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_c_ac.c_llc_conn_ac_upd_p_flag.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_c_ac.c_llc_conn_ac_upd_p_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_pdu_sn = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_conn_ac_upd_p_flag(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.llc_pdu_sn*, align 8
  %6 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff* %7)
  store %struct.llc_pdu_sn* %8, %struct.llc_pdu_sn** %5, align 8
  %9 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %5, align 8
  %10 = call i64 @LLC_PDU_IS_RSP(%struct.llc_pdu_sn* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i32 @llc_pdu_decode_pf_bit(%struct.sk_buff* %13, i64* %6)
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = call i32 @llc_conn_set_p_flag(%struct.sock* %18, i32 0)
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @llc_conn_ac_stop_p_timer(%struct.sock* %20, %struct.sk_buff* %21)
  br label %23

23:                                               ; preds = %17, %12
  br label %24

24:                                               ; preds = %23, %2
  ret i32 0
}

declare dso_local %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff*) #1

declare dso_local i64 @LLC_PDU_IS_RSP(%struct.llc_pdu_sn*) #1

declare dso_local i32 @llc_pdu_decode_pf_bit(%struct.sk_buff*, i64*) #1

declare dso_local i32 @llc_conn_set_p_flag(%struct.sock*, i32) #1

declare dso_local i32 @llc_conn_ac_stop_p_timer(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
