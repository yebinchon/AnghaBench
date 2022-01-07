; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_c_ev.c_llc_conn_ev_rx_xxx_cmd_pbit_set_1.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_c_ev.c_llc_conn_ev_rx_xxx_cmd_pbit_set_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_pdu_sn = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_conn_ev_rx_xxx_cmd_pbit_set_1(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.llc_pdu_sn*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 1, i32* %5, align 4
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff* %7)
  store %struct.llc_pdu_sn* %8, %struct.llc_pdu_sn** %6, align 8
  %9 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %6, align 8
  %10 = call i64 @LLC_PDU_IS_CMD(%struct.llc_pdu_sn* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %2
  %13 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %6, align 8
  %14 = call i64 @LLC_PDU_TYPE_IS_I(%struct.llc_pdu_sn* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %6, align 8
  %18 = call i64 @LLC_PDU_TYPE_IS_S(%struct.llc_pdu_sn* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16, %12
  %21 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %6, align 8
  %22 = call i64 @LLC_I_PF_IS_1(%struct.llc_pdu_sn* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %24, %20
  br label %36

26:                                               ; preds = %16
  %27 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %6, align 8
  %28 = call i64 @LLC_PDU_TYPE_IS_U(%struct.llc_pdu_sn* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %6, align 8
  %32 = call i64 @LLC_U_PF_IS_1(%struct.llc_pdu_sn* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %30, %26
  br label %36

36:                                               ; preds = %35, %25
  br label %37

37:                                               ; preds = %36, %2
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff*) #1

declare dso_local i64 @LLC_PDU_IS_CMD(%struct.llc_pdu_sn*) #1

declare dso_local i64 @LLC_PDU_TYPE_IS_I(%struct.llc_pdu_sn*) #1

declare dso_local i64 @LLC_PDU_TYPE_IS_S(%struct.llc_pdu_sn*) #1

declare dso_local i64 @LLC_I_PF_IS_1(%struct.llc_pdu_sn*) #1

declare dso_local i64 @LLC_PDU_TYPE_IS_U(%struct.llc_pdu_sn*) #1

declare dso_local i64 @LLC_U_PF_IS_1(%struct.llc_pdu_sn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
