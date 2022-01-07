; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_c_ac.c_llc_conn_ac_send_i_rsp_f_set_ackpf.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_c_ac.c_llc_conn_ac_send_i_rsp_f_set_ackpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_sock = type { %struct.TYPE_5__, %struct.TYPE_4__*, i32, i32, i32, %struct.llc_sap* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.llc_sap = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@LLC_PDU_TYPE_I = common dso_local global i32 0, align 4
@LLC_PDU_RSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @llc_conn_ac_send_i_rsp_f_set_ackpf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_conn_ac_send_i_rsp_f_set_ackpf(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.llc_sock*, align 8
  %7 = alloca %struct.llc_sap*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.llc_sock* @llc_sk(%struct.sock* %8)
  store %struct.llc_sock* %9, %struct.llc_sock** %6, align 8
  %10 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %11 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %10, i32 0, i32 5
  %12 = load %struct.llc_sap*, %struct.llc_sap** %11, align 8
  store %struct.llc_sap* %12, %struct.llc_sap** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = load i32, i32* @LLC_PDU_TYPE_I, align 4
  %15 = load %struct.llc_sap*, %struct.llc_sap** %7, align 8
  %16 = getelementptr inbounds %struct.llc_sap, %struct.llc_sap* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %20 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @LLC_PDU_RSP, align 4
  %24 = call i32 @llc_pdu_header_init(%struct.sk_buff* %13, i32 %14, i32 %18, i32 %22, i32 %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %27 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %30 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %33 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @llc_pdu_init_as_i_cmd(%struct.sk_buff* %25, i32 %28, i32 %31, i32 %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %38 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %43 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @llc_mac_hdr_init(%struct.sk_buff* %36, i32 %41, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i64 @likely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %2
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i32 @skb_get(%struct.sk_buff* %54)
  %56 = load %struct.sock*, %struct.sock** %3, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = call i32 @llc_conn_send_pdu(%struct.sock* %56, %struct.sk_buff* %57)
  %59 = load %struct.sock*, %struct.sock** %3, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = call i32 @llc_conn_ac_inc_vs_by_1(%struct.sock* %59, %struct.sk_buff* %60)
  br label %62

62:                                               ; preds = %53, %2
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local i32 @llc_pdu_header_init(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @llc_pdu_init_as_i_cmd(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @llc_mac_hdr_init(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @llc_conn_send_pdu(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @llc_conn_ac_inc_vs_by_1(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
