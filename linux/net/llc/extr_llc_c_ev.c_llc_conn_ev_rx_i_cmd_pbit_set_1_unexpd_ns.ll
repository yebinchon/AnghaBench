; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_c_ev.c_llc_conn_ev_rx_i_cmd_pbit_set_1_unexpd_ns.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_c_ev.c_llc_conn_ev_rx_i_cmd_pbit_set_1_unexpd_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_pdu_sn = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_conn_ev_rx_i_cmd_pbit_set_1_unexpd_ns(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.llc_pdu_sn*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff* %8)
  store %struct.llc_pdu_sn* %9, %struct.llc_pdu_sn** %5, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.TYPE_2__* @llc_sk(%struct.sock* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %5, align 8
  %15 = call i64 @LLC_I_GET_NS(%struct.llc_pdu_sn* %14)
  store i64 %15, i64* %7, align 8
  %16 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %5, align 8
  %17 = call i64 @LLC_PDU_IS_CMD(%struct.llc_pdu_sn* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %2
  %20 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %5, align 8
  %21 = call i64 @LLC_PDU_TYPE_IS_I(%struct.llc_pdu_sn* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %5, align 8
  %25 = call i64 @LLC_I_PF_IS_1(%struct.llc_pdu_sn* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = call %struct.TYPE_2__* @llc_sk(%struct.sock* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @llc_util_ns_inside_rx_window(i64 %32, i64 %33, i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %31, %27, %23, %19, %2
  %42 = phi i1 [ false, %27 ], [ false, %23 ], [ false, %19 ], [ false, %2 ], [ %40, %31 ]
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 0, i32 1
  ret i32 %44
}

declare dso_local %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @llc_sk(%struct.sock*) #1

declare dso_local i64 @LLC_I_GET_NS(%struct.llc_pdu_sn*) #1

declare dso_local i64 @LLC_PDU_IS_CMD(%struct.llc_pdu_sn*) #1

declare dso_local i64 @LLC_PDU_TYPE_IS_I(%struct.llc_pdu_sn*) #1

declare dso_local i64 @LLC_I_PF_IS_1(%struct.llc_pdu_sn*) #1

declare dso_local i32 @llc_util_ns_inside_rx_window(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
