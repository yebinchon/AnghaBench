; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_c_ev.c_llc_conn_ev_rx_xxx_cmd_pbit_set_x.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_c_ev.c_llc_conn_ev_rx_xxx_cmd_pbit_set_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_pdu_un = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_conn_ev_rx_xxx_cmd_pbit_set_x(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.llc_pdu_un*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 1, i32* %5, align 4
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call %struct.llc_pdu_un* @llc_pdu_un_hdr(%struct.sk_buff* %7)
  store %struct.llc_pdu_un* %8, %struct.llc_pdu_un** %6, align 8
  %9 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %6, align 8
  %10 = call i64 @LLC_PDU_IS_CMD(%struct.llc_pdu_un* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %6, align 8
  %14 = call i64 @LLC_PDU_TYPE_IS_I(%struct.llc_pdu_un* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %6, align 8
  %18 = call i64 @LLC_PDU_TYPE_IS_S(%struct.llc_pdu_un* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %12
  store i32 0, i32* %5, align 4
  br label %31

21:                                               ; preds = %16
  %22 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %6, align 8
  %23 = call i64 @LLC_PDU_TYPE_IS_U(%struct.llc_pdu_un* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %6, align 8
  %27 = call i32 @LLC_U_PDU_CMD(%struct.llc_pdu_un* %26)
  switch i32 %27, label %29 [
    i32 128, label %28
    i32 129, label %28
  ]

28:                                               ; preds = %25, %25
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %25, %28
  br label %30

30:                                               ; preds = %29, %21
  br label %31

31:                                               ; preds = %30, %20
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local %struct.llc_pdu_un* @llc_pdu_un_hdr(%struct.sk_buff*) #1

declare dso_local i64 @LLC_PDU_IS_CMD(%struct.llc_pdu_un*) #1

declare dso_local i64 @LLC_PDU_TYPE_IS_I(%struct.llc_pdu_un*) #1

declare dso_local i64 @LLC_PDU_TYPE_IS_S(%struct.llc_pdu_un*) #1

declare dso_local i64 @LLC_PDU_TYPE_IS_U(%struct.llc_pdu_un*) #1

declare dso_local i32 @LLC_U_PDU_CMD(%struct.llc_pdu_un*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
