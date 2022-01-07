; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_conn.c_llc_conn_resend_i_pdu_as_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_conn.c_llc_conn_resend_i_pdu_as_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_pdu_sn = type { i32 }
%struct.llc_sock = type { i32, i32 }

@LLC_PDU_CMD = common dso_local global i32 0, align 4
@LLC_2_SEQ_NBR_MODULO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @llc_conn_resend_i_pdu_as_cmd(%struct.sock* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.llc_pdu_sn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.llc_sock*, align 8
  %11 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %11, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @llc_conn_remove_acked_pdus(%struct.sock* %12, i64 %13, i32* %9)
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %60

18:                                               ; preds = %3
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = call %struct.llc_sock* @llc_sk(%struct.sock* %19)
  store %struct.llc_sock* %20, %struct.llc_sock** %10, align 8
  br label %21

21:                                               ; preds = %26, %18
  %22 = load %struct.llc_sock*, %struct.llc_sock** %10, align 8
  %23 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %22, i32 0, i32 1
  %24 = call %struct.sk_buff* @skb_dequeue(i32* %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %7, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %26, label %45

26:                                               ; preds = %21
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = call %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff* %27)
  store %struct.llc_pdu_sn* %28, %struct.llc_pdu_sn** %8, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = load i32, i32* @LLC_PDU_CMD, align 4
  %31 = call i32 @llc_pdu_set_cmd_rsp(%struct.sk_buff* %29, i32 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @llc_pdu_set_pf_bit(%struct.sk_buff* %32, i64 %33)
  %35 = load %struct.sock*, %struct.sock** %4, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 0
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = call i32 @skb_queue_tail(i32* %36, %struct.sk_buff* %37)
  store i64 0, i64* %6, align 8
  %39 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %8, align 8
  %40 = call i32 @LLC_I_GET_NS(%struct.llc_pdu_sn* %39)
  %41 = load %struct.llc_sock*, %struct.llc_sock** %10, align 8
  %42 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i64, i64* %11, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %11, align 8
  br label %21

45:                                               ; preds = %21
  %46 = load i64, i64* %11, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load %struct.llc_sock*, %struct.llc_sock** %10, align 8
  %50 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  %53 = load i32, i32* @LLC_2_SEQ_NBR_MODULO, align 4
  %54 = srem i32 %52, %53
  %55 = load %struct.llc_sock*, %struct.llc_sock** %10, align 8
  %56 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %48, %45
  %58 = load %struct.sock*, %struct.sock** %4, align 8
  %59 = call i32 @llc_conn_send_pdus(%struct.sock* %58)
  br label %60

60:                                               ; preds = %57, %17
  ret void
}

declare dso_local i32 @llc_conn_remove_acked_pdus(%struct.sock*, i64, i32*) #1

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff*) #1

declare dso_local i32 @llc_pdu_set_cmd_rsp(%struct.sk_buff*, i32) #1

declare dso_local i32 @llc_pdu_set_pf_bit(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @LLC_I_GET_NS(%struct.llc_pdu_sn*) #1

declare dso_local i32 @llc_conn_send_pdus(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
