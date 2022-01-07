; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_c_ac.c_llc_conn_ac_send_frmr_rsp_f_set_x.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_c_ac.c_llc_conn_ac_send_frmr_rsp_f_set_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_pdu_sn = type { i32 }
%struct.llc_sock = type { %struct.TYPE_5__, %struct.TYPE_6__*, i32, i32, %struct.llc_sap*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.llc_sap = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@LLC_PDU_TYPE_U = common dso_local global i32 0, align 4
@LLC_PDU_RSP = common dso_local global i32 0, align 4
@INCORRECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_conn_ac_send_frmr_rsp_f_set_x(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.llc_pdu_sn*, align 8
  %9 = alloca %struct.llc_sock*, align 8
  %10 = alloca %struct.llc_sap*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load i32, i32* @ENOBUFS, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff* %13)
  store %struct.llc_pdu_sn* %14, %struct.llc_pdu_sn** %8, align 8
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = call %struct.llc_sock* @llc_sk(%struct.sock* %15)
  store %struct.llc_sock* %16, %struct.llc_sock** %9, align 8
  %17 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %8, align 8
  %18 = bitcast %struct.llc_pdu_sn* %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %21 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %8, align 8
  %23 = call i64 @LLC_PDU_IS_CMD(%struct.llc_pdu_sn* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @llc_pdu_decode_pf_bit(%struct.sk_buff* %26, i64* %5)
  br label %29

28:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %29

29:                                               ; preds = %28, %25
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %32 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %35 = call %struct.sk_buff* @llc_alloc_frame(%struct.sock* %30, %struct.TYPE_6__* %33, i32 %34, i32 4)
  store %struct.sk_buff* %35, %struct.sk_buff** %7, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  br i1 %37, label %38, label %84

38:                                               ; preds = %29
  %39 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %40 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %39, i32 0, i32 4
  %41 = load %struct.llc_sap*, %struct.llc_sap** %40, align 8
  store %struct.llc_sap* %41, %struct.llc_sap** %10, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %44 = load %struct.llc_sap*, %struct.llc_sap** %10, align 8
  %45 = getelementptr inbounds %struct.llc_sap, %struct.llc_sap* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %49 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @LLC_PDU_RSP, align 4
  %53 = call i32 @llc_pdu_header_init(%struct.sk_buff* %42, i32 %43, i32 %47, i32 %51, i32 %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %8, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %58 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %61 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @INCORRECT, align 4
  %64 = call i32 @llc_pdu_init_as_frmr_rsp(%struct.sk_buff* %54, %struct.llc_pdu_sn* %55, i64 %56, i32 %59, i32 %62, i32 %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %66 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %67 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %72 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @llc_mac_hdr_init(%struct.sk_buff* %65, i32 %70, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %38
  br label %87

80:                                               ; preds = %38
  %81 = load %struct.sock*, %struct.sock** %3, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %83 = call i32 @llc_conn_send_pdu(%struct.sock* %81, %struct.sk_buff* %82)
  br label %84

84:                                               ; preds = %80, %29
  br label %85

85:                                               ; preds = %87, %84
  %86 = load i32, i32* %6, align 4
  ret i32 %86

87:                                               ; preds = %79
  %88 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %89 = call i32 @kfree_skb(%struct.sk_buff* %88)
  br label %85
}

declare dso_local %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff*) #1

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local i64 @LLC_PDU_IS_CMD(%struct.llc_pdu_sn*) #1

declare dso_local i32 @llc_pdu_decode_pf_bit(%struct.sk_buff*, i64*) #1

declare dso_local %struct.sk_buff* @llc_alloc_frame(%struct.sock*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @llc_pdu_header_init(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @llc_pdu_init_as_frmr_rsp(%struct.sk_buff*, %struct.llc_pdu_sn*, i64, i32, i32, i32) #1

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
