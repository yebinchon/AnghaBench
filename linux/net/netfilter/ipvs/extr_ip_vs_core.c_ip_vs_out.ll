; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_out.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.sk_buff = type { i64, i64 }
%struct.ip_vs_iphdr = type { i64, i32, i32, i32 }
%struct.ip_vs_protocol = type { i64, i32, i32 }
%struct.ip_vs_proto_data = type { %struct.ip_vs_protocol* }
%struct.ip_vs_conn = type { i32 }
%struct.sock = type { i64 }
%struct.TYPE_4__ = type { i64 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@NF_INET_LOCAL_OUT = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i64 0, align 8
@IPPROTO_ICMP = common dso_local global i64 0, align 8
@NF_STOLEN = common dso_local global i32 0, align 4
@ip_vs_conn_out_get_proto = common dso_local global i32 0, align 4
@IP_VS_CONN_F_MASQ = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_SCTP = common dso_local global i64 0, align 8
@ICMP_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMP_PORT_UNREACH = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"ip_vs_out: packet continues traversal as normal\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@ICMPV6_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMPV6_PORT_UNREACH = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netns_ipvs*, i32, %struct.sk_buff*, i32)* @ip_vs_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_out(%struct.netns_ipvs* %0, i32 %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.netns_ipvs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ip_vs_iphdr, align 8
  %11 = alloca %struct.ip_vs_protocol*, align 8
  %12 = alloca %struct.ip_vs_proto_data*, align 8
  %13 = alloca %struct.ip_vs_conn*, align 8
  %14 = alloca %struct.sock*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [2 x i32], align 4
  %18 = alloca i32*, align 8
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = call i32 @EnterFunction(i32 11)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %25, i32* %5, align 4
  br label %291

26:                                               ; preds = %4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = call %struct.sock* @skb_to_full_sk(%struct.sk_buff* %27)
  store %struct.sock* %28, %struct.sock** %14, align 8
  %29 = load %struct.sock*, %struct.sock** %14, align 8
  %30 = icmp ne %struct.sock* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @NF_INET_LOCAL_OUT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @AF_INET, align 4
  %38 = icmp eq i32 %36, %37
  br label %39

39:                                               ; preds = %35, %31, %26
  %40 = phi i1 [ false, %31 ], [ false, %26 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load %struct.sock*, %struct.sock** %14, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PF_INET, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load %struct.sock*, %struct.sock** %14, align 8
  %52 = call %struct.TYPE_4__* @inet_sk(%struct.sock* %51)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %57, i32* %5, align 4
  br label %291

58:                                               ; preds = %50, %44
  br label %59

59:                                               ; preds = %58, %39
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = call i32 @skb_dst(%struct.sk_buff* %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %68, i32* %5, align 4
  br label %291

69:                                               ; preds = %59
  %70 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %71 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %75, i32* %5, align 4
  br label %291

76:                                               ; preds = %69
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %79 = call i32 @ip_vs_fill_iph_skb(i32 %77, %struct.sk_buff* %78, i32 0, %struct.ip_vs_iphdr* %10)
  %80 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %10, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IPPROTO_ICMP, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %76
  %88 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @ip_vs_out_icmp(%struct.netns_ipvs* %88, %struct.sk_buff* %89, i32* %15, i32 %90)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* %16, align 4
  store i32 %95, i32* %5, align 4
  br label %291

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %96, %76
  %98 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %99 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %10, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call %struct.ip_vs_proto_data* @ip_vs_proto_data_get(%struct.netns_ipvs* %98, i64 %100)
  store %struct.ip_vs_proto_data* %101, %struct.ip_vs_proto_data** %12, align 8
  %102 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %12, align 8
  %103 = icmp ne %struct.ip_vs_proto_data* %102, null
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %97
  %109 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %109, i32* %5, align 4
  br label %291

110:                                              ; preds = %97
  %111 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %12, align 8
  %112 = getelementptr inbounds %struct.ip_vs_proto_data, %struct.ip_vs_proto_data* %111, i32 0, i32 0
  %113 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %112, align 8
  store %struct.ip_vs_protocol* %113, %struct.ip_vs_protocol** %11, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %115 = call i32 @ip_hdr(%struct.sk_buff* %114)
  %116 = call i64 @ip_is_fragment(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %110
  %119 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %11, align 8
  %120 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  br label %124

124:                                              ; preds = %118, %110
  %125 = phi i1 [ false, %110 ], [ %123, %118 ]
  %126 = zext i1 %125 to i32
  %127 = call i64 @unlikely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %124
  %130 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @ip_vs_defrag_user(i32 %132)
  %134 = call i64 @ip_vs_gather_frags(%struct.netns_ipvs* %130, %struct.sk_buff* %131, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %129
  %137 = load i32, i32* @NF_STOLEN, align 4
  store i32 %137, i32* %5, align 4
  br label %291

138:                                              ; preds = %129
  %139 = load i32, i32* @AF_INET, align 4
  %140 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %141 = call i32 @ip_vs_fill_iph_skb(i32 %139, %struct.sk_buff* %140, i32 0, %struct.ip_vs_iphdr* %10)
  br label %142

142:                                              ; preds = %138, %124
  %143 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %11, align 8
  %144 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @ip_vs_conn_out_get_proto, align 4
  %147 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %150 = call %struct.ip_vs_conn* @INDIRECT_CALL_1(i32 %145, i32 %146, %struct.netns_ipvs* %147, i32 %148, %struct.sk_buff* %149, %struct.ip_vs_iphdr* %10)
  store %struct.ip_vs_conn* %150, %struct.ip_vs_conn** %13, align 8
  %151 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %152 = call i64 @likely(%struct.ip_vs_conn* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %142
  %155 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %156 = call i64 @IP_VS_FWD_METHOD(%struct.ip_vs_conn* %155)
  %157 = load i64, i64* @IP_VS_CONN_F_MASQ, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %288

160:                                              ; preds = %154
  %161 = load i32, i32* %9, align 4
  %162 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %163 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %12, align 8
  %164 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @handle_response(i32 %161, %struct.sk_buff* %162, %struct.ip_vs_proto_data* %163, %struct.ip_vs_conn* %164, %struct.ip_vs_iphdr* %10, i32 %165)
  store i32 %166, i32* %5, align 4
  br label %291

167:                                              ; preds = %142
  %168 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %169 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %168, i32 0, i32 1
  %170 = call i64 @atomic_read(i32* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %196

172:                                              ; preds = %167
  %173 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %11, align 8
  %174 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @IPPROTO_UDP, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %195

178:                                              ; preds = %172
  %179 = load i32, i32* %7, align 4
  %180 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %181 = load i32, i32* %9, align 4
  %182 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %183 = call %struct.ip_vs_conn* @__ip_vs_rs_conn_out(i32 %179, %struct.netns_ipvs* %180, i32 %181, %struct.sk_buff* %182, %struct.ip_vs_iphdr* %10)
  store %struct.ip_vs_conn* %183, %struct.ip_vs_conn** %13, align 8
  %184 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %185 = call i64 @likely(%struct.ip_vs_conn* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %178
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %190 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %12, align 8
  %191 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @handle_response(i32 %188, %struct.sk_buff* %189, %struct.ip_vs_proto_data* %190, %struct.ip_vs_conn* %191, %struct.ip_vs_iphdr* %10, i32 %192)
  store i32 %193, i32* %5, align 4
  br label %291

194:                                              ; preds = %178
  br label %195

195:                                              ; preds = %194, %172
  br label %196

196:                                              ; preds = %195, %167
  %197 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %198 = call i64 @sysctl_nat_icmp_send(%struct.netns_ipvs* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %279

200:                                              ; preds = %196
  %201 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %11, align 8
  %202 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @IPPROTO_TCP, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %218, label %206

206:                                              ; preds = %200
  %207 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %11, align 8
  %208 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @IPPROTO_UDP, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %218, label %212

212:                                              ; preds = %206
  %213 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %11, align 8
  %214 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @IPPROTO_SCTP, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %279

218:                                              ; preds = %212, %206, %200
  %219 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %220 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %10, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %223 = call i32* @frag_safe_skb_hp(%struct.sk_buff* %219, i32 %221, i32 8, i32* %222)
  store i32* %223, i32** %18, align 8
  %224 = load i32*, i32** %18, align 8
  %225 = icmp eq i32* %224, null
  br i1 %225, label %226, label %228

226:                                              ; preds = %218
  %227 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %227, i32* %5, align 4
  br label %291

228:                                              ; preds = %218
  %229 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %230 = load i32, i32* %9, align 4
  %231 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %10, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %10, i32 0, i32 3
  %234 = load i32*, i32** %18, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 0
  %236 = load i32, i32* %235, align 4
  %237 = call i64 @ip_vs_has_real_service(%struct.netns_ipvs* %229, i32 %230, i64 %232, i32* %233, i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %278

239:                                              ; preds = %228
  %240 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %10, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @IPPROTO_TCP, align 8
  %243 = icmp ne i64 %241, %242
  br i1 %243, label %244, label %249

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %10, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @IPPROTO_SCTP, align 8
  %248 = icmp ne i64 %246, %247
  br i1 %248, label %271, label %249

249:                                              ; preds = %244, %239
  %250 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %10, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @IPPROTO_TCP, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %260

254:                                              ; preds = %249
  %255 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %256 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %10, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @is_tcp_reset(%struct.sk_buff* %255, i32 %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %271

260:                                              ; preds = %254, %249
  %261 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %10, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @IPPROTO_SCTP, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %277

265:                                              ; preds = %260
  %266 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %267 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %10, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @is_sctp_abort(%struct.sk_buff* %266, i32 %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %277, label %271

271:                                              ; preds = %265, %254, %244
  %272 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %273 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  %274 = load i32, i32* @ICMP_PORT_UNREACH, align 4
  %275 = call i32 @icmp_send(%struct.sk_buff* %272, i32 %273, i32 %274, i32 0)
  %276 = load i32, i32* @NF_DROP, align 4
  store i32 %276, i32* %5, align 4
  br label %291

277:                                              ; preds = %265, %260
  br label %278

278:                                              ; preds = %277, %228
  br label %279

279:                                              ; preds = %278, %212, %196
  br label %280

280:                                              ; preds = %288, %279
  %281 = load i32, i32* %9, align 4
  %282 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %11, align 8
  %283 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %284 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %10, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @IP_VS_DBG_PKT(i32 12, i32 %281, %struct.ip_vs_protocol* %282, %struct.sk_buff* %283, i32 %285, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %287 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %287, i32* %5, align 4
  br label %291

288:                                              ; preds = %159
  %289 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %290 = call i32 @__ip_vs_conn_put(%struct.ip_vs_conn* %289)
  br label %280

291:                                              ; preds = %280, %271, %226, %187, %160, %136, %108, %94, %74, %67, %56, %24
  %292 = load i32, i32* %5, align 4
  ret i32 %292
}

declare dso_local i32 @EnterFunction(i32) #1

declare dso_local %struct.sock* @skb_to_full_sk(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_4__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @ip_vs_fill_iph_skb(i32, %struct.sk_buff*, i32, %struct.ip_vs_iphdr*) #1

declare dso_local i32 @ip_vs_out_icmp(%struct.netns_ipvs*, %struct.sk_buff*, i32*, i32) #1

declare dso_local %struct.ip_vs_proto_data* @ip_vs_proto_data_get(%struct.netns_ipvs*, i64) #1

declare dso_local i64 @ip_is_fragment(i32) #1

declare dso_local i32 @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ip_vs_gather_frags(%struct.netns_ipvs*, %struct.sk_buff*, i32) #1

declare dso_local i32 @ip_vs_defrag_user(i32) #1

declare dso_local %struct.ip_vs_conn* @INDIRECT_CALL_1(i32, i32, %struct.netns_ipvs*, i32, %struct.sk_buff*, %struct.ip_vs_iphdr*) #1

declare dso_local i64 @likely(%struct.ip_vs_conn*) #1

declare dso_local i64 @IP_VS_FWD_METHOD(%struct.ip_vs_conn*) #1

declare dso_local i32 @handle_response(i32, %struct.sk_buff*, %struct.ip_vs_proto_data*, %struct.ip_vs_conn*, %struct.ip_vs_iphdr*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.ip_vs_conn* @__ip_vs_rs_conn_out(i32, %struct.netns_ipvs*, i32, %struct.sk_buff*, %struct.ip_vs_iphdr*) #1

declare dso_local i64 @sysctl_nat_icmp_send(%struct.netns_ipvs*) #1

declare dso_local i32* @frag_safe_skb_hp(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i64 @ip_vs_has_real_service(%struct.netns_ipvs*, i32, i64, i32*, i32) #1

declare dso_local i32 @is_tcp_reset(%struct.sk_buff*, i32) #1

declare dso_local i32 @is_sctp_abort(%struct.sk_buff*, i32) #1

declare dso_local i32 @icmp_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @IP_VS_DBG_PKT(i32, i32, %struct.ip_vs_protocol*, %struct.sk_buff*, i32, i8*) #1

declare dso_local i32 @__ip_vs_conn_put(%struct.ip_vs_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
