; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_ipv6.c_dccp_v6_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_ipv6.c_dccp_v6_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.dccp_hdr = type { i64, i32, i32, i32, i32 }
%struct.sock = type { i64 }
%struct.request_sock = type { %struct.sock* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"dropped packet with invalid checksum\0A\00", align 1
@DCCP_PKT_WITHOUT_ACK_SEQ = common dso_local global i32 0, align 4
@dccp_hashinfo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"failed to look up flow ID in table and get corresponding socket\0A\00", align 1
@DCCP_TIME_WAIT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"sk->sk_state == DCCP_TIME_WAIT: do_time_wait\0A\00", align 1
@DCCP_NEW_SYN_RECV = common dso_local global i64 0, align 8
@DCCP_LISTEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"Packet CsCov %d does not satisfy MinCsCov %d\0A\00", align 1
@XFRM_POLICY_IN = common dso_local global i32 0, align 4
@DCCP_PKT_RESET = common dso_local global i64 0, align 8
@DCCP_RESET_CODE_NO_CONNECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @dccp_v6_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_v6_rcv(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.dccp_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.request_sock*, align 8
  %9 = alloca %struct.sock*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = call i64 @dccp_invalid_packet(%struct.sk_buff* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %204

14:                                               ; preds = %1
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = call %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i64 @dccp_v6_csum_finish(%struct.sk_buff* %15, i32* %18, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = call i32 @DCCP_WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %204

26:                                               ; preds = %14
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = call %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff* %27)
  store %struct.dccp_hdr* %28, %struct.dccp_hdr** %4, align 8
  %29 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %30 = call i32 @dccp_hdr_seq(%struct.dccp_hdr* %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = call %struct.TYPE_6__* @DCCP_SKB_CB(%struct.sk_buff* %31)
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 8
  %34 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %35 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = call %struct.TYPE_6__* @DCCP_SKB_CB(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i64 %36, i64* %39, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = call i64 @dccp_packet_without_ack(%struct.sk_buff* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %26
  %44 = load i32, i32* @DCCP_PKT_WITHOUT_ACK_SEQ, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = call %struct.TYPE_6__* @DCCP_SKB_CB(%struct.sk_buff* %45)
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 4
  br label %54

48:                                               ; preds = %26
  %49 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %50 = call i32 @dccp_hdr_ack_seq(%struct.sk_buff* %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %52 = call %struct.TYPE_6__* @DCCP_SKB_CB(%struct.sk_buff* %51)
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %43
  br label %55

55:                                               ; preds = %103, %54
  %56 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %57 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %58 = call i32 @__dccp_hdr_len(%struct.dccp_hdr* %57)
  %59 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %60 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %63 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %66 = call i32 @inet6_iif(%struct.sk_buff* %65)
  %67 = call %struct.sock* @__inet6_lookup_skb(i32* @dccp_hashinfo, %struct.sk_buff* %56, i32 %58, i32 %61, i32 %64, i32 %66, i32 0, i32* %5)
  store %struct.sock* %67, %struct.sock** %6, align 8
  %68 = load %struct.sock*, %struct.sock** %6, align 8
  %69 = icmp ne %struct.sock* %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %55
  %71 = call i32 (i8*, ...) @dccp_pr_debug(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  br label %183

72:                                               ; preds = %55
  %73 = load %struct.sock*, %struct.sock** %6, align 8
  %74 = getelementptr inbounds %struct.sock, %struct.sock* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DCCP_TIME_WAIT, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = call i32 (i8*, ...) @dccp_pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.sock*, %struct.sock** %6, align 8
  %81 = call i32 @inet_twsk(%struct.sock* %80)
  %82 = call i32 @inet_twsk_put(i32 %81)
  br label %183

83:                                               ; preds = %72
  %84 = load %struct.sock*, %struct.sock** %6, align 8
  %85 = getelementptr inbounds %struct.sock, %struct.sock* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @DCCP_NEW_SYN_RECV, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %140

89:                                               ; preds = %83
  %90 = load %struct.sock*, %struct.sock** %6, align 8
  %91 = call %struct.request_sock* @inet_reqsk(%struct.sock* %90)
  store %struct.request_sock* %91, %struct.request_sock** %8, align 8
  %92 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %93 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %92, i32 0, i32 0
  %94 = load %struct.sock*, %struct.sock** %93, align 8
  store %struct.sock* %94, %struct.sock** %6, align 8
  %95 = load %struct.sock*, %struct.sock** %6, align 8
  %96 = getelementptr inbounds %struct.sock, %struct.sock* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @DCCP_LISTEN, align 8
  %99 = icmp ne i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %89
  %104 = load %struct.sock*, %struct.sock** %6, align 8
  %105 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %106 = call i32 @inet_csk_reqsk_queue_drop_and_put(%struct.sock* %104, %struct.request_sock* %105)
  br label %55

107:                                              ; preds = %89
  %108 = load %struct.sock*, %struct.sock** %6, align 8
  %109 = call i32 @sock_hold(%struct.sock* %108)
  store i32 1, i32* %5, align 4
  %110 = load %struct.sock*, %struct.sock** %6, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %112 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %113 = call %struct.sock* @dccp_check_req(%struct.sock* %110, %struct.sk_buff* %111, %struct.request_sock* %112)
  store %struct.sock* %113, %struct.sock** %9, align 8
  %114 = load %struct.sock*, %struct.sock** %9, align 8
  %115 = icmp ne %struct.sock* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %107
  %117 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %118 = call i32 @reqsk_put(%struct.request_sock* %117)
  br label %207

119:                                              ; preds = %107
  %120 = load %struct.sock*, %struct.sock** %9, align 8
  %121 = load %struct.sock*, %struct.sock** %6, align 8
  %122 = icmp eq %struct.sock* %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %125 = call i32 @reqsk_put(%struct.request_sock* %124)
  br label %139

126:                                              ; preds = %119
  %127 = load %struct.sock*, %struct.sock** %6, align 8
  %128 = load %struct.sock*, %struct.sock** %9, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %130 = call i64 @dccp_child_process(%struct.sock* %127, %struct.sock* %128, %struct.sk_buff* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load %struct.sock*, %struct.sock** %6, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %135 = call i32 @dccp_v6_ctl_send_reset(%struct.sock* %133, %struct.sk_buff* %134)
  br label %207

136:                                              ; preds = %126
  %137 = load %struct.sock*, %struct.sock** %6, align 8
  %138 = call i32 @sock_put(%struct.sock* %137)
  store i32 0, i32* %2, align 4
  br label %214

139:                                              ; preds = %123
  br label %140

140:                                              ; preds = %139, %83
  %141 = load %struct.sock*, %struct.sock** %6, align 8
  %142 = call %struct.TYPE_5__* @dccp_sk(%struct.sock* %141)
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %7, align 4
  %145 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %146 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %140
  %150 = load i32, i32* %7, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %149
  %153 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %154 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %152, %149
  %159 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %160 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = call i32 (i8*, ...) @dccp_pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %161, i32 %162)
  br label %207

164:                                              ; preds = %152, %140
  %165 = load %struct.sock*, %struct.sock** %6, align 8
  %166 = load i32, i32* @XFRM_POLICY_IN, align 4
  %167 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %168 = call i32 @xfrm6_policy_check(%struct.sock* %165, i32 %166, %struct.sk_buff* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %164
  br label %207

171:                                              ; preds = %164
  %172 = load %struct.sock*, %struct.sock** %6, align 8
  %173 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %174 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %175 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = mul nsw i32 %176, 4
  %178 = load i32, i32* %5, align 4
  %179 = call i64 @__sk_receive_skb(%struct.sock* %172, %struct.sk_buff* %173, i32 1, i32 %177, i32 %178)
  %180 = icmp ne i64 %179, 0
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i32 -1, i32 0
  store i32 %182, i32* %2, align 4
  br label %214

183:                                              ; preds = %78, %70
  %184 = load i32, i32* @XFRM_POLICY_IN, align 4
  %185 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %186 = call i32 @xfrm6_policy_check(%struct.sock* null, i32 %184, %struct.sk_buff* %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %183
  br label %204

189:                                              ; preds = %183
  %190 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %191 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @DCCP_PKT_RESET, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %203

195:                                              ; preds = %189
  %196 = load i32, i32* @DCCP_RESET_CODE_NO_CONNECTION, align 4
  %197 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %198 = call %struct.TYPE_6__* @DCCP_SKB_CB(%struct.sk_buff* %197)
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  store i32 %196, i32* %199, align 8
  %200 = load %struct.sock*, %struct.sock** %6, align 8
  %201 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %202 = call i32 @dccp_v6_ctl_send_reset(%struct.sock* %200, %struct.sk_buff* %201)
  br label %203

203:                                              ; preds = %195, %189
  br label %204

204:                                              ; preds = %213, %203, %188, %24, %13
  %205 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %206 = call i32 @kfree_skb(%struct.sk_buff* %205)
  store i32 0, i32* %2, align 4
  br label %214

207:                                              ; preds = %170, %158, %132, %116
  %208 = load i32, i32* %5, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load %struct.sock*, %struct.sock** %6, align 8
  %212 = call i32 @sock_put(%struct.sock* %211)
  br label %213

213:                                              ; preds = %210, %207
  br label %204

214:                                              ; preds = %204, %171, %136
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local i64 @dccp_invalid_packet(%struct.sk_buff*) #1

declare dso_local i64 @dccp_v6_csum_finish(%struct.sk_buff*, i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @DCCP_WARN(i8*) #1

declare dso_local %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @dccp_hdr_seq(%struct.dccp_hdr*) #1

declare dso_local %struct.TYPE_6__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @dccp_packet_without_ack(%struct.sk_buff*) #1

declare dso_local i32 @dccp_hdr_ack_seq(%struct.sk_buff*) #1

declare dso_local %struct.sock* @__inet6_lookup_skb(i32*, %struct.sk_buff*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @__dccp_hdr_len(%struct.dccp_hdr*) #1

declare dso_local i32 @inet6_iif(%struct.sk_buff*) #1

declare dso_local i32 @dccp_pr_debug(i8*, ...) #1

declare dso_local i32 @inet_twsk_put(i32) #1

declare dso_local i32 @inet_twsk(%struct.sock*) #1

declare dso_local %struct.request_sock* @inet_reqsk(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @inet_csk_reqsk_queue_drop_and_put(%struct.sock*, %struct.request_sock*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local %struct.sock* @dccp_check_req(%struct.sock*, %struct.sk_buff*, %struct.request_sock*) #1

declare dso_local i32 @reqsk_put(%struct.request_sock*) #1

declare dso_local i64 @dccp_child_process(%struct.sock*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @dccp_v6_ctl_send_reset(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local %struct.TYPE_5__* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @xfrm6_policy_check(%struct.sock*, i32, %struct.sk_buff*) #1

declare dso_local i64 @__sk_receive_skb(%struct.sock*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
