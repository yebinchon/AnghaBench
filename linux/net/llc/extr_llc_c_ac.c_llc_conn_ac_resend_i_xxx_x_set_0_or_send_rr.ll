; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_c_ac.c_llc_conn_ac_resend_i_xxx_x_set_0_or_send_rr.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_c_ac.c_llc_conn_ac_resend_i_xxx_x_set_0_or_send_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_pdu_sn = type { i32 }
%struct.llc_sock = type { %struct.TYPE_5__, %struct.TYPE_6__*, i32, %struct.llc_sap* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.llc_sap = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@LLC_PDU_TYPE_U = common dso_local global i32 0, align 4
@LLC_PDU_RSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_conn_ac_resend_i_xxx_x_set_0_or_send_rr(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.llc_pdu_sn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.llc_sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.llc_sap*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff* %11)
  store %struct.llc_pdu_sn* %12, %struct.llc_pdu_sn** %6, align 8
  %13 = load i32, i32* @ENOBUFS, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = call %struct.llc_sock* @llc_sk(%struct.sock* %15)
  store %struct.llc_sock* %16, %struct.llc_sock** %8, align 8
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %19 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %22 = call %struct.sk_buff* @llc_alloc_frame(%struct.sock* %17, %struct.TYPE_6__* %20, i32 %21, i32 0)
  store %struct.sk_buff* %22, %struct.sk_buff** %9, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %25, label %71

25:                                               ; preds = %2
  %26 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %27 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %26, i32 0, i32 3
  %28 = load %struct.llc_sap*, %struct.llc_sap** %27, align 8
  store %struct.llc_sap* %28, %struct.llc_sap** %10, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %30 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %31 = load %struct.llc_sap*, %struct.llc_sap** %10, align 8
  %32 = getelementptr inbounds %struct.llc_sap, %struct.llc_sap* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %36 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @LLC_PDU_RSP, align 4
  %40 = call i32 @llc_pdu_header_init(%struct.sk_buff* %29, i32 %30, i32 %34, i32 %38, i32 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %42 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %43 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @llc_pdu_init_as_rr_rsp(%struct.sk_buff* %41, i32 0, i32 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %47 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %48 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %53 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @llc_mac_hdr_init(%struct.sk_buff* %46, i32 %51, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i64 @likely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %25
  %64 = load %struct.sock*, %struct.sock** %3, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = call i32 @llc_conn_send_pdu(%struct.sock* %64, %struct.sk_buff* %65)
  br label %70

67:                                               ; preds = %25
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = call i32 @kfree_skb(%struct.sk_buff* %68)
  br label %70

70:                                               ; preds = %67, %63
  br label %71

71:                                               ; preds = %70, %2
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %6, align 8
  %76 = call i32 @LLC_I_GET_NR(%struct.llc_pdu_sn* %75)
  store i32 %76, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %77 = load %struct.sock*, %struct.sock** %3, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @llc_conn_resend_i_pdu_as_cmd(%struct.sock* %77, i32 %78, i32 0)
  br label %80

80:                                               ; preds = %74, %71
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff*) #1

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @llc_alloc_frame(%struct.sock*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @llc_pdu_header_init(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @llc_pdu_init_as_rr_rsp(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @llc_mac_hdr_init(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @llc_conn_send_pdu(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @LLC_I_GET_NR(%struct.llc_pdu_sn*) #1

declare dso_local i32 @llc_conn_resend_i_pdu_as_cmd(%struct.sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
