; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_output.c_dccp_xmit_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_output.c_dccp_xmit_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.dccp_sock = type { i32, i32, i64, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i8* }

@DCCP_PARTOPEN = common dso_local global i64 0, align 8
@DCCP_FEATNEG_OVERHEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Payload too large (%d) for featneg.\0A\00", align 1
@ICSK_TIME_DACK = common dso_local global i32 0, align 4
@DCCP_RTO_MAX = common dso_local global i32 0, align 4
@DCCP_PKT_DATAACK = common dso_local global i8* null, align 8
@DCCP_PKT_DATA = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"transmit_skb() returned err=%d\0A\00", align 1
@DCCP_PKT_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @dccp_xmit_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dccp_xmit_packet(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dccp_sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %8)
  store %struct.dccp_sock* %9, %struct.dccp_sock** %5, align 8
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = call %struct.sk_buff* @dccp_qpolicy_pop(%struct.sock* %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = icmp eq %struct.sk_buff* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %106

18:                                               ; preds = %1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load %struct.sock*, %struct.sock** %2, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DCCP_PARTOPEN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %64

27:                                               ; preds = %18
  %28 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %29 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @DCCP_FEATNEG_OVERHEAD, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %34 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %33, i32 0, i32 4
  %35 = call i32 @list_empty(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @DCCP_WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.sock*, %struct.sock** %2, align 8
  %45 = call i32 @dccp_send_ack(%struct.sock* %44)
  %46 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %47 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %46, i32 0, i32 4
  %48 = call i32 @dccp_feat_list_purge(i32* %47)
  br label %49

49:                                               ; preds = %41, %37, %27
  %50 = load %struct.sock*, %struct.sock** %2, align 8
  %51 = call i32 @inet_csk_schedule_ack(%struct.sock* %50)
  %52 = load %struct.sock*, %struct.sock** %2, align 8
  %53 = load i32, i32* @ICSK_TIME_DACK, align 4
  %54 = load %struct.sock*, %struct.sock** %2, align 8
  %55 = call %struct.TYPE_3__* @inet_csk(%struct.sock* %54)
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DCCP_RTO_MAX, align 4
  %59 = call i32 @inet_csk_reset_xmit_timer(%struct.sock* %52, i32 %53, i32 %57, i32 %58)
  %60 = load i8*, i8** @DCCP_PKT_DATAACK, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %61)
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i8* %60, i8** %63, align 8
  br label %79

64:                                               ; preds = %18
  %65 = load %struct.sock*, %struct.sock** %2, align 8
  %66 = call i64 @dccp_ack_pending(%struct.sock* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i8*, i8** @DCCP_PKT_DATAACK, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %70)
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i8* %69, i8** %72, align 8
  br label %78

73:                                               ; preds = %64
  %74 = load i8*, i8** @DCCP_PKT_DATA, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %75)
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i8* %74, i8** %77, align 8
  br label %78

78:                                               ; preds = %73, %68
  br label %79

79:                                               ; preds = %78, %49
  %80 = load %struct.sock*, %struct.sock** %2, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %82 = call i32 @dccp_transmit_skb(%struct.sock* %80, %struct.sk_buff* %81)
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* %3, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @dccp_pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %85, %79
  %89 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %90 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.sock*, %struct.sock** %2, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @ccid_hc_tx_packet_sent(i32 %91, %struct.sock* %92, i32 %93)
  %95 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %96 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %88
  %100 = load %struct.sock*, %struct.sock** %2, align 8
  %101 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %102 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @DCCP_PKT_SYNC, align 4
  %105 = call i32 @dccp_send_sync(%struct.sock* %100, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %17, %99, %88
  ret void
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @dccp_qpolicy_pop(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @DCCP_WARN(i8*, i32) #1

declare dso_local i32 @dccp_send_ack(%struct.sock*) #1

declare dso_local i32 @dccp_feat_list_purge(i32*) #1

declare dso_local i32 @inet_csk_schedule_ack(%struct.sock*) #1

declare dso_local i32 @inet_csk_reset_xmit_timer(%struct.sock*, i32, i32, i32) #1

declare dso_local %struct.TYPE_3__* @inet_csk(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @dccp_ack_pending(%struct.sock*) #1

declare dso_local i32 @dccp_transmit_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @dccp_pr_debug(i8*, i32) #1

declare dso_local i32 @ccid_hc_tx_packet_sent(i32, %struct.sock*, i32) #1

declare dso_local i32 @dccp_send_sync(%struct.sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
