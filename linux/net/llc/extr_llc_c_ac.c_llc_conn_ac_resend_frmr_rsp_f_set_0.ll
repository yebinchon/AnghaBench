; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_c_ac.c_llc_conn_ac_resend_frmr_rsp_f_set_0.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_c_ac.c_llc_conn_ac_resend_frmr_rsp_f_set_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_sock = type { %struct.TYPE_5__, %struct.TYPE_6__*, i32, i32, i32, %struct.llc_sap* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.llc_sap = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.llc_pdu_sn = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@LLC_PDU_TYPE_U = common dso_local global i32 0, align 4
@LLC_PDU_RSP = common dso_local global i32 0, align 4
@INCORRECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_conn_ac_resend_frmr_rsp_f_set_0(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.llc_sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.llc_sap*, align 8
  %9 = alloca %struct.llc_pdu_sn*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @ENOBUFS, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call %struct.llc_sock* @llc_sk(%struct.sock* %12)
  store %struct.llc_sock* %13, %struct.llc_sock** %6, align 8
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %16 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %19 = call %struct.sk_buff* @llc_alloc_frame(%struct.sock* %14, %struct.TYPE_6__* %17, i32 %18, i32 4)
  store %struct.sk_buff* %19, %struct.sk_buff** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %22, label %70

22:                                               ; preds = %2
  %23 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %24 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %23, i32 0, i32 5
  %25 = load %struct.llc_sap*, %struct.llc_sap** %24, align 8
  store %struct.llc_sap* %25, %struct.llc_sap** %8, align 8
  %26 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %27 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %26, i32 0, i32 4
  %28 = bitcast i32* %27 to %struct.llc_pdu_sn*
  store %struct.llc_pdu_sn* %28, %struct.llc_pdu_sn** %9, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %31 = load %struct.llc_sap*, %struct.llc_sap** %8, align 8
  %32 = getelementptr inbounds %struct.llc_sap, %struct.llc_sap* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %36 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @LLC_PDU_RSP, align 4
  %40 = call i32 @llc_pdu_header_init(%struct.sk_buff* %29, i32 %30, i32 %34, i32 %38, i32 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %9, align 8
  %43 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %44 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %47 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @INCORRECT, align 4
  %50 = call i32 @llc_pdu_init_as_frmr_rsp(%struct.sk_buff* %41, %struct.llc_pdu_sn* %42, i32 0, i32 %45, i32 %48, i32 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %53 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %58 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @llc_mac_hdr_init(%struct.sk_buff* %51, i32 %56, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %22
  br label %73

66:                                               ; preds = %22
  %67 = load %struct.sock*, %struct.sock** %3, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = call i32 @llc_conn_send_pdu(%struct.sock* %67, %struct.sk_buff* %68)
  br label %70

70:                                               ; preds = %66, %2
  br label %71

71:                                               ; preds = %73, %70
  %72 = load i32, i32* %5, align 4
  ret i32 %72

73:                                               ; preds = %65
  %74 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %75 = call i32 @kfree_skb(%struct.sk_buff* %74)
  br label %71
}

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @llc_alloc_frame(%struct.sock*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @llc_pdu_header_init(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @llc_pdu_init_as_frmr_rsp(%struct.sk_buff*, %struct.llc_pdu_sn*, i32, i32, i32, i32) #1

declare dso_local i32 @llc_mac_hdr_init(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @llc_conn_send_pdu(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
