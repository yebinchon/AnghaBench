; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_minisocks.c_dccp_check_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_minisocks.c_dccp_check_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.request_sock = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.sock*, %struct.sk_buff*)* }
%struct.dccp_request_sock = type { i32, i64, i64, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32, i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.sock* (%struct.sock*, %struct.sk_buff*, %struct.request_sock*, i32*, %struct.request_sock*, i32*)* }

@DCCP_PKT_REQUEST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Retransmitted REQUEST\0A\00", align 1
@DCCP_RESET_CODE_PACKET_ERROR = common dso_local global i32 0, align 4
@DCCP_PKT_ACK = common dso_local global i64 0, align 8
@DCCP_PKT_DATAACK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"Invalid ACK number: ack_seq=%llu, dreq_iss=%llu, dreq_gss=%llu\0A\00", align 1
@DCCP_RESET_CODE_TOO_BUSY = common dso_local global i32 0, align 4
@DCCP_PKT_RESET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @dccp_check_req(%struct.sock* %0, %struct.sk_buff* %1, %struct.request_sock* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.request_sock*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.dccp_request_sock*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.request_sock* %2, %struct.request_sock** %6, align 8
  store %struct.sock* null, %struct.sock** %7, align 8
  %10 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %11 = call %struct.dccp_request_sock* @dccp_rsk(%struct.request_sock* %10)
  store %struct.dccp_request_sock* %11, %struct.dccp_request_sock** %8, align 8
  %12 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %8, align 8
  %13 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call %struct.TYPE_9__* @dccp_hdr(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DCCP_PKT_REQUEST, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call %struct.TYPE_10__* @DCCP_SKB_CB(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %8, align 8
  %27 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @after48(i32 %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %21
  %32 = call i32 (i8*, ...) @dccp_pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call %struct.TYPE_10__* @DCCP_SKB_CB(%struct.sk_buff* %33)
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %8, align 8
  %38 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.sock*, %struct.sock** %4, align 8
  %40 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %41 = call i32 @inet_rtx_syn_ack(%struct.sock* %39, %struct.request_sock* %40)
  br label %42

42:                                               ; preds = %31, %21
  br label %139

43:                                               ; preds = %3
  %44 = load i32, i32* @DCCP_RESET_CODE_PACKET_ERROR, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = call %struct.TYPE_10__* @DCCP_SKB_CB(%struct.sk_buff* %45)
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = call %struct.TYPE_9__* @dccp_hdr(%struct.sk_buff* %48)
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DCCP_PKT_ACK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %43
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = call %struct.TYPE_9__* @dccp_hdr(%struct.sk_buff* %55)
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DCCP_PKT_DATAACK, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %119

62:                                               ; preds = %54, %43
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = call %struct.TYPE_10__* @DCCP_SKB_CB(%struct.sk_buff* %63)
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %8, align 8
  %68 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %8, align 8
  %71 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @between48(i64 %66, i64 %69, i64 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %62
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = call %struct.TYPE_10__* @DCCP_SKB_CB(%struct.sk_buff* %76)
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %8, align 8
  %81 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %8, align 8
  %84 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (i8*, ...) @dccp_pr_debug(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i64 %79, i64 %82, i64 %85)
  br label %119

87:                                               ; preds = %62
  %88 = load %struct.sock*, %struct.sock** %4, align 8
  %89 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %8, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = call i64 @dccp_parse_options(%struct.sock* %88, %struct.dccp_request_sock* %89, %struct.sk_buff* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %119

94:                                               ; preds = %87
  %95 = load %struct.sock*, %struct.sock** %4, align 8
  %96 = call %struct.TYPE_8__* @inet_csk(%struct.sock* %95)
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.sock* (%struct.sock*, %struct.sk_buff*, %struct.request_sock*, i32*, %struct.request_sock*, i32*)*, %struct.sock* (%struct.sock*, %struct.sk_buff*, %struct.request_sock*, i32*, %struct.request_sock*, i32*)** %99, align 8
  %101 = load %struct.sock*, %struct.sock** %4, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %103 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %104 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %105 = call %struct.sock* %100(%struct.sock* %101, %struct.sk_buff* %102, %struct.request_sock* %103, i32* null, %struct.request_sock* %104, i32* %9)
  store %struct.sock* %105, %struct.sock** %7, align 8
  %106 = load %struct.sock*, %struct.sock** %7, align 8
  %107 = icmp ne %struct.sock* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %94
  %109 = load %struct.sock*, %struct.sock** %4, align 8
  %110 = load %struct.sock*, %struct.sock** %7, align 8
  %111 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call %struct.sock* @inet_csk_complete_hashdance(%struct.sock* %109, %struct.sock* %110, %struct.request_sock* %111, i32 %112)
  store %struct.sock* %113, %struct.sock** %7, align 8
  br label %139

114:                                              ; preds = %94
  %115 = load i32, i32* @DCCP_RESET_CODE_TOO_BUSY, align 4
  %116 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %117 = call %struct.TYPE_10__* @DCCP_SKB_CB(%struct.sk_buff* %116)
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 8
  br label %119

119:                                              ; preds = %114, %93, %75, %61
  %120 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %121 = call %struct.TYPE_9__* @dccp_hdr(%struct.sk_buff* %120)
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @DCCP_PKT_RESET, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %119
  %127 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %128 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %127, i32 0, i32 0
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32 (%struct.sock*, %struct.sk_buff*)*, i32 (%struct.sock*, %struct.sk_buff*)** %130, align 8
  %132 = load %struct.sock*, %struct.sock** %4, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %134 = call i32 %131(%struct.sock* %132, %struct.sk_buff* %133)
  br label %135

135:                                              ; preds = %126, %119
  %136 = load %struct.sock*, %struct.sock** %4, align 8
  %137 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %138 = call i32 @inet_csk_reqsk_queue_drop(%struct.sock* %136, %struct.request_sock* %137)
  br label %139

139:                                              ; preds = %135, %108, %42
  %140 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %8, align 8
  %141 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %140, i32 0, i32 0
  %142 = call i32 @spin_unlock_bh(i32* %141)
  %143 = load %struct.sock*, %struct.sock** %7, align 8
  ret %struct.sock* %143
}

declare dso_local %struct.dccp_request_sock* @dccp_rsk(%struct.request_sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.TYPE_9__* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @after48(i32, i32) #1

declare dso_local %struct.TYPE_10__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dccp_pr_debug(i8*, ...) #1

declare dso_local i32 @inet_rtx_syn_ack(%struct.sock*, %struct.request_sock*) #1

declare dso_local i32 @between48(i64, i64, i64) #1

declare dso_local i64 @dccp_parse_options(%struct.sock*, %struct.dccp_request_sock*, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_8__* @inet_csk(%struct.sock*) #1

declare dso_local %struct.sock* @inet_csk_complete_hashdance(%struct.sock*, %struct.sock*, %struct.request_sock*, i32) #1

declare dso_local i32 @inet_csk_reqsk_queue_drop(%struct.sock*, %struct.request_sock*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
