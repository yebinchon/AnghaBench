; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_c_ac.c_llc_conn_ac_send_dm_rsp_f_set_p.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_c_ac.c_llc_conn_ac_send_dm_rsp_f_set_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_sock = type { %struct.TYPE_5__, %struct.TYPE_6__*, %struct.llc_sap* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.llc_sap = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@LLC_PDU_TYPE_U = common dso_local global i32 0, align 4
@LLC_PDU_RSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_conn_ac_send_dm_rsp_f_set_p(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.llc_sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.llc_sap*, align 8
  %9 = alloca i32, align 4
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
  %19 = call %struct.sk_buff* @llc_alloc_frame(%struct.sock* %14, %struct.TYPE_6__* %17, i32 %18, i32 0)
  store %struct.sk_buff* %19, %struct.sk_buff** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %22, label %62

22:                                               ; preds = %2
  %23 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %24 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %23, i32 0, i32 2
  %25 = load %struct.llc_sap*, %struct.llc_sap** %24, align 8
  store %struct.llc_sap* %25, %struct.llc_sap** %8, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @llc_pdu_decode_pf_bit(%struct.sk_buff* %26, i32* %9)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %30 = load %struct.llc_sap*, %struct.llc_sap** %8, align 8
  %31 = getelementptr inbounds %struct.llc_sap, %struct.llc_sap* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %35 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @LLC_PDU_RSP, align 4
  %39 = call i32 @llc_pdu_header_init(%struct.sk_buff* %28, i32 %29, i32 %33, i32 %37, i32 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @llc_pdu_init_as_dm_rsp(%struct.sk_buff* %40, i32 %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %45 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %50 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @llc_mac_hdr_init(%struct.sk_buff* %43, i32 %48, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %22
  br label %65

58:                                               ; preds = %22
  %59 = load %struct.sock*, %struct.sock** %3, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = call i32 @llc_conn_send_pdu(%struct.sock* %59, %struct.sk_buff* %60)
  br label %62

62:                                               ; preds = %58, %2
  br label %63

63:                                               ; preds = %65, %62
  %64 = load i32, i32* %5, align 4
  ret i32 %64

65:                                               ; preds = %57
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = call i32 @kfree_skb(%struct.sk_buff* %66)
  br label %63
}

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @llc_alloc_frame(%struct.sock*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @llc_pdu_decode_pf_bit(%struct.sk_buff*, i32*) #1

declare dso_local i32 @llc_pdu_header_init(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @llc_pdu_init_as_dm_rsp(%struct.sk_buff*, i32) #1

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
