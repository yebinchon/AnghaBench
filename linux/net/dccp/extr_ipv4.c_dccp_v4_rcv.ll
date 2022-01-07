; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_ipv4.c_dccp_v4_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_ipv4.c_dccp_v4_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.dccp_hdr = type { i64, i32, i32, i32, i32 }
%struct.iphdr = type { i32, i32 }
%struct.sock = type { i64 }
%struct.request_sock = type { %struct.sock* }
%struct.TYPE_4__ = type { i64, i32, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"dropped packet with invalid checksum\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"%8.8s src=%pI4@%-5d dst=%pI4@%-5d seq=%llu\00", align 1
@DCCP_PKT_WITHOUT_ACK_SEQ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c", ack=%llu\0A\00", align 1
@dccp_hashinfo = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"failed to look up flow ID in table and get corresponding socket\0A\00", align 1
@DCCP_TIME_WAIT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [46 x i8] c"sk->sk_state == DCCP_TIME_WAIT: do_time_wait\0A\00", align 1
@DCCP_NEW_SYN_RECV = common dso_local global i64 0, align 8
@DCCP_LISTEN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [46 x i8] c"Packet CsCov %d does not satisfy MinCsCov %d\0A\00", align 1
@XFRM_POLICY_IN = common dso_local global i32 0, align 4
@DCCP_PKT_RESET = common dso_local global i64 0, align 8
@DCCP_RESET_CODE_NO_CONNECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @dccp_v4_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_v4_rcv(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.dccp_hdr*, align 8
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.request_sock*, align 8
  %10 = alloca %struct.sock*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = call i64 @dccp_invalid_packet(%struct.sk_buff* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %231

15:                                               ; preds = %1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %16)
  store %struct.iphdr* %17, %struct.iphdr** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %20 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %23 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @dccp_v4_csum_finish(%struct.sk_buff* %18, i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = call i32 @DCCP_WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %231

29:                                               ; preds = %15
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = call %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff* %30)
  store %struct.dccp_hdr* %31, %struct.dccp_hdr** %4, align 8
  %32 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %33 = call i64 @dccp_hdr_seq(%struct.dccp_hdr* %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  store i64 %33, i64* %36, align 8
  %37 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %38 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  %43 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %44 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @dccp_packet_name(i64 %45)
  %47 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %48 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %47, i32 0, i32 1
  %49 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %50 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ntohs(i32 %51)
  %53 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %54 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %53, i32 0, i32 0
  %55 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %56 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ntohs(i32 %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %60 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = call i32 (i8*, ...) @dccp_pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32* %48, i32 %52, i32* %54, i32 %58, i64 %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %65 = call i64 @dccp_packet_without_ack(%struct.sk_buff* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %29
  %68 = load i64, i64* @DCCP_PKT_WITHOUT_ACK_SEQ, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %70 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %69)
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store i64 %68, i64* %71, align 8
  %72 = call i32 (i8*, ...) @dccp_pr_debug_cat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %84

73:                                               ; preds = %29
  %74 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %75 = call i64 @dccp_hdr_ack_seq(%struct.sk_buff* %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %77 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %76)
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store i64 %75, i64* %78, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %80 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %79)
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = call i32 (i8*, ...) @dccp_pr_debug_cat(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %82)
  br label %84

84:                                               ; preds = %73, %67
  br label %85

85:                                               ; preds = %131, %84
  %86 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %87 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %88 = call i32 @__dccp_hdr_len(%struct.dccp_hdr* %87)
  %89 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %90 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %93 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call %struct.sock* @__inet_lookup_skb(i32* @dccp_hashinfo, %struct.sk_buff* %86, i32 %88, i32 %91, i32 %94, i32 0, i32* %6)
  store %struct.sock* %95, %struct.sock** %7, align 8
  %96 = load %struct.sock*, %struct.sock** %7, align 8
  %97 = icmp ne %struct.sock* %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %85
  %99 = call i32 (i8*, ...) @dccp_pr_debug(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0))
  br label %210

100:                                              ; preds = %85
  %101 = load %struct.sock*, %struct.sock** %7, align 8
  %102 = getelementptr inbounds %struct.sock, %struct.sock* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @DCCP_TIME_WAIT, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = call i32 (i8*, ...) @dccp_pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %108 = load %struct.sock*, %struct.sock** %7, align 8
  %109 = call i32 @inet_twsk(%struct.sock* %108)
  %110 = call i32 @inet_twsk_put(i32 %109)
  br label %210

111:                                              ; preds = %100
  %112 = load %struct.sock*, %struct.sock** %7, align 8
  %113 = getelementptr inbounds %struct.sock, %struct.sock* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @DCCP_NEW_SYN_RECV, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %168

117:                                              ; preds = %111
  %118 = load %struct.sock*, %struct.sock** %7, align 8
  %119 = call %struct.request_sock* @inet_reqsk(%struct.sock* %118)
  store %struct.request_sock* %119, %struct.request_sock** %9, align 8
  %120 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %121 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %120, i32 0, i32 0
  %122 = load %struct.sock*, %struct.sock** %121, align 8
  store %struct.sock* %122, %struct.sock** %7, align 8
  %123 = load %struct.sock*, %struct.sock** %7, align 8
  %124 = getelementptr inbounds %struct.sock, %struct.sock* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @DCCP_LISTEN, align 8
  %127 = icmp ne i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = call i64 @unlikely(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %117
  %132 = load %struct.sock*, %struct.sock** %7, align 8
  %133 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %134 = call i32 @inet_csk_reqsk_queue_drop_and_put(%struct.sock* %132, %struct.request_sock* %133)
  br label %85

135:                                              ; preds = %117
  %136 = load %struct.sock*, %struct.sock** %7, align 8
  %137 = call i32 @sock_hold(%struct.sock* %136)
  store i32 1, i32* %6, align 4
  %138 = load %struct.sock*, %struct.sock** %7, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %140 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %141 = call %struct.sock* @dccp_check_req(%struct.sock* %138, %struct.sk_buff* %139, %struct.request_sock* %140)
  store %struct.sock* %141, %struct.sock** %10, align 8
  %142 = load %struct.sock*, %struct.sock** %10, align 8
  %143 = icmp ne %struct.sock* %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %135
  %145 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %146 = call i32 @reqsk_put(%struct.request_sock* %145)
  br label %234

147:                                              ; preds = %135
  %148 = load %struct.sock*, %struct.sock** %10, align 8
  %149 = load %struct.sock*, %struct.sock** %7, align 8
  %150 = icmp eq %struct.sock* %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %153 = call i32 @reqsk_put(%struct.request_sock* %152)
  br label %167

154:                                              ; preds = %147
  %155 = load %struct.sock*, %struct.sock** %7, align 8
  %156 = load %struct.sock*, %struct.sock** %10, align 8
  %157 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %158 = call i64 @dccp_child_process(%struct.sock* %155, %struct.sock* %156, %struct.sk_buff* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %154
  %161 = load %struct.sock*, %struct.sock** %7, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %163 = call i32 @dccp_v4_ctl_send_reset(%struct.sock* %161, %struct.sk_buff* %162)
  br label %234

164:                                              ; preds = %154
  %165 = load %struct.sock*, %struct.sock** %7, align 8
  %166 = call i32 @sock_put(%struct.sock* %165)
  store i32 0, i32* %2, align 4
  br label %241

167:                                              ; preds = %151
  br label %168

168:                                              ; preds = %167, %111
  %169 = load %struct.sock*, %struct.sock** %7, align 8
  %170 = call %struct.TYPE_3__* @dccp_sk(%struct.sock* %169)
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %8, align 4
  %173 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %174 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %192

177:                                              ; preds = %168
  %178 = load i32, i32* %8, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %177
  %181 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %182 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %180, %177
  %187 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %188 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = call i32 (i8*, ...) @dccp_pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %189, i32 %190)
  br label %234

192:                                              ; preds = %180, %168
  %193 = load %struct.sock*, %struct.sock** %7, align 8
  %194 = load i32, i32* @XFRM_POLICY_IN, align 4
  %195 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %196 = call i32 @xfrm4_policy_check(%struct.sock* %193, i32 %194, %struct.sk_buff* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %192
  br label %234

199:                                              ; preds = %192
  %200 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %201 = call i32 @nf_reset_ct(%struct.sk_buff* %200)
  %202 = load %struct.sock*, %struct.sock** %7, align 8
  %203 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %204 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %205 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 %206, 4
  %208 = load i32, i32* %6, align 4
  %209 = call i32 @__sk_receive_skb(%struct.sock* %202, %struct.sk_buff* %203, i32 1, i32 %207, i32 %208)
  store i32 %209, i32* %2, align 4
  br label %241

210:                                              ; preds = %106, %98
  %211 = load i32, i32* @XFRM_POLICY_IN, align 4
  %212 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %213 = call i32 @xfrm4_policy_check(%struct.sock* null, i32 %211, %struct.sk_buff* %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %210
  br label %231

216:                                              ; preds = %210
  %217 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %218 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @DCCP_PKT_RESET, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %230

222:                                              ; preds = %216
  %223 = load i32, i32* @DCCP_RESET_CODE_NO_CONNECTION, align 4
  %224 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %225 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %224)
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 1
  store i32 %223, i32* %226, align 8
  %227 = load %struct.sock*, %struct.sock** %7, align 8
  %228 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %229 = call i32 @dccp_v4_ctl_send_reset(%struct.sock* %227, %struct.sk_buff* %228)
  br label %230

230:                                              ; preds = %222, %216
  br label %231

231:                                              ; preds = %240, %230, %215, %27, %14
  %232 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %233 = call i32 @kfree_skb(%struct.sk_buff* %232)
  store i32 0, i32* %2, align 4
  br label %241

234:                                              ; preds = %198, %186, %160, %144
  %235 = load i32, i32* %6, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load %struct.sock*, %struct.sock** %7, align 8
  %239 = call i32 @sock_put(%struct.sock* %238)
  br label %240

240:                                              ; preds = %237, %234
  br label %231

241:                                              ; preds = %231, %199, %164
  %242 = load i32, i32* %2, align 4
  ret i32 %242
}

declare dso_local i64 @dccp_invalid_packet(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @dccp_v4_csum_finish(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @DCCP_WARN(i8*) #1

declare dso_local %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @dccp_hdr_seq(%struct.dccp_hdr*) #1

declare dso_local %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dccp_pr_debug(i8*, ...) #1

declare dso_local i32 @dccp_packet_name(i64) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @dccp_packet_without_ack(%struct.sk_buff*) #1

declare dso_local i32 @dccp_pr_debug_cat(i8*, ...) #1

declare dso_local i64 @dccp_hdr_ack_seq(%struct.sk_buff*) #1

declare dso_local %struct.sock* @__inet_lookup_skb(i32*, %struct.sk_buff*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @__dccp_hdr_len(%struct.dccp_hdr*) #1

declare dso_local i32 @inet_twsk_put(i32) #1

declare dso_local i32 @inet_twsk(%struct.sock*) #1

declare dso_local %struct.request_sock* @inet_reqsk(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @inet_csk_reqsk_queue_drop_and_put(%struct.sock*, %struct.request_sock*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local %struct.sock* @dccp_check_req(%struct.sock*, %struct.sk_buff*, %struct.request_sock*) #1

declare dso_local i32 @reqsk_put(%struct.request_sock*) #1

declare dso_local i64 @dccp_child_process(%struct.sock*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @dccp_v4_ctl_send_reset(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local %struct.TYPE_3__* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @xfrm4_policy_check(%struct.sock*, i32, %struct.sk_buff*) #1

declare dso_local i32 @nf_reset_ct(%struct.sk_buff*) #1

declare dso_local i32 @__sk_receive_skb(%struct.sock*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
