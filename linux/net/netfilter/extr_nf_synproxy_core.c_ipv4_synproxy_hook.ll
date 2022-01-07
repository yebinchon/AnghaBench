; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_synproxy_core.c_ipv4_synproxy_hook.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_synproxy_core.c_ipv4_synproxy_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_hook_state = type { %struct.net* }
%struct.net = type { i32 }
%struct.synproxy_net = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.nf_conn = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ip_ct_tcp }
%struct.ip_ct_tcp = type { i32 }
%struct.nf_conn_synproxy = type { i64, i64, i64 }
%struct.synproxy_options = type { i32, i64, i64 }
%struct.tcphdr = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@NF_DROP = common dso_local global i32 0, align 4
@IP_CT_DIR_ORIGINAL = common dso_local global i32 0, align 4
@NF_STOLEN = common dso_local global i32 0, align 4
@NF_SYNPROXY_OPT_TIMESTAMP = common dso_local global i32 0, align 4
@IPCT_SYNPROXY = common dso_local global i32 0, align 4
@NF_SYNPROXY_OPT_MSS = common dso_local global i32 0, align 4
@NF_SYNPROXY_OPT_WSCALE = common dso_local global i32 0, align 4
@NF_SYNPROXY_OPT_SACK_PERM = common dso_local global i32 0, align 4
@IPCT_SEQADJ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv4_synproxy_hook(i8* %0, %struct.sk_buff* %1, %struct.nf_hook_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nf_hook_state*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.synproxy_net*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nf_conn*, align 8
  %12 = alloca %struct.nf_conn_synproxy*, align 8
  %13 = alloca %struct.synproxy_options, align 8
  %14 = alloca %struct.ip_ct_tcp*, align 8
  %15 = alloca %struct.tcphdr*, align 8
  %16 = alloca %struct.tcphdr, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.nf_hook_state* %2, %struct.nf_hook_state** %7, align 8
  %18 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %19 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %18, i32 0, i32 0
  %20 = load %struct.net*, %struct.net** %19, align 8
  store %struct.net* %20, %struct.net** %8, align 8
  %21 = load %struct.net*, %struct.net** %8, align 8
  %22 = call %struct.synproxy_net* @synproxy_pernet(%struct.net* %21)
  store %struct.synproxy_net* %22, %struct.synproxy_net** %9, align 8
  %23 = bitcast %struct.synproxy_options* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 24, i1 false)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %24, i32* %10)
  store %struct.nf_conn* %25, %struct.nf_conn** %11, align 8
  %26 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %27 = icmp ne %struct.nf_conn* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %29, i32* %4, align 4
  br label %279

30:                                               ; preds = %3
  %31 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %32 = call %struct.nf_conn_synproxy* @nfct_synproxy(%struct.nf_conn* %31)
  store %struct.nf_conn_synproxy* %32, %struct.nf_conn_synproxy** %12, align 8
  %33 = load %struct.nf_conn_synproxy*, %struct.nf_conn_synproxy** %12, align 8
  %34 = icmp ne %struct.nf_conn_synproxy* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %36, i32* %4, align 4
  br label %279

37:                                               ; preds = %30
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call i64 @nf_is_loopback_packet(%struct.sk_buff* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = call %struct.TYPE_6__* @ip_hdr(%struct.sk_buff* %42)
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IPPROTO_TCP, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41, %37
  %49 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %49, i32* %4, align 4
  br label %279

50:                                               ; preds = %41
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = call i32 @ip_hdrlen(%struct.sk_buff* %51)
  store i32 %52, i32* %17, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = load i32, i32* %17, align 4
  %55 = call %struct.tcphdr* @skb_header_pointer(%struct.sk_buff* %53, i32 %54, i32 20, %struct.tcphdr* %16)
  store %struct.tcphdr* %55, %struct.tcphdr** %15, align 8
  %56 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %57 = icmp ne %struct.tcphdr* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* @NF_DROP, align 4
  store i32 %59, i32* %4, align 4
  br label %279

60:                                               ; preds = %50
  %61 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %62 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store %struct.ip_ct_tcp* %63, %struct.ip_ct_tcp** %14, align 8
  %64 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %14, align 8
  %65 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %269 [
    i32 130, label %67
    i32 128, label %118
    i32 129, label %186
  ]

67:                                               ; preds = %60
  %68 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %69 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %67
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @CTINFO2DIR(i32 %73)
  %75 = load i32, i32* @IP_CT_DIR_ORIGINAL, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %72
  %78 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.nf_conn_synproxy*, %struct.nf_conn_synproxy** %12, align 8
  %81 = getelementptr inbounds %struct.nf_conn_synproxy, %struct.nf_conn_synproxy* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %84 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @ntohl(i32 %85)
  %87 = sub nsw i64 %82, %86
  %88 = add nsw i64 %87, 1
  %89 = call i32 @nf_ct_seqadj_init(%struct.nf_conn* %78, i32 %79, i64 %88)
  br label %270

90:                                               ; preds = %72, %67
  %91 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %92 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %97 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @CTINFO2DIR(i32 %101)
  %103 = load i32, i32* @IP_CT_DIR_ORIGINAL, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %100, %95, %90
  br label %270

106:                                              ; preds = %100
  %107 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @nf_ct_seqadj_init(%struct.nf_conn* %107, i32 %108, i64 0)
  %110 = load %struct.nf_conn_synproxy*, %struct.nf_conn_synproxy** %12, align 8
  %111 = getelementptr inbounds %struct.nf_conn_synproxy, %struct.nf_conn_synproxy* %110, i32 0, i32 2
  store i64 0, i64* %111, align 8
  %112 = load %struct.synproxy_net*, %struct.synproxy_net** %9, align 8
  %113 = getelementptr inbounds %struct.synproxy_net, %struct.synproxy_net* %112, i32 0, i32 0
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @this_cpu_inc(i32 %116)
  br label %118

118:                                              ; preds = %60, %106
  %119 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %120 = load i32, i32* %17, align 4
  %121 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %122 = call i32 @synproxy_parse_options(%struct.sk_buff* %119, i32 %120, %struct.tcphdr* %121, %struct.synproxy_options* %13)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %118
  %125 = load i32, i32* @NF_DROP, align 4
  store i32 %125, i32* %4, align 4
  br label %279

126:                                              ; preds = %118
  %127 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %128 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %165, label %131

131:                                              ; preds = %126
  %132 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %133 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %165

136:                                              ; preds = %131
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @CTINFO2DIR(i32 %137)
  %139 = load i32, i32* @IP_CT_DIR_ORIGINAL, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %165

141:                                              ; preds = %136
  %142 = load %struct.net*, %struct.net** %8, align 8
  %143 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %144 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %145 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %146 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @ntohl(i32 %147)
  %149 = add nsw i64 %148, 1
  %150 = trunc i64 %149 to i32
  %151 = call i32 @synproxy_recv_client_ack(%struct.net* %142, %struct.sk_buff* %143, %struct.tcphdr* %144, %struct.synproxy_options* %13, i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %141
  %154 = load %struct.synproxy_net*, %struct.synproxy_net** %9, align 8
  %155 = getelementptr inbounds %struct.synproxy_net, %struct.synproxy_net* %154, i32 0, i32 0
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @this_cpu_inc(i32 %158)
  %160 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %161 = call i32 @consume_skb(%struct.sk_buff* %160)
  %162 = load i32, i32* @NF_STOLEN, align 4
  store i32 %162, i32* %4, align 4
  br label %279

163:                                              ; preds = %141
  %164 = load i32, i32* @NF_DROP, align 4
  store i32 %164, i32* %4, align 4
  br label %279

165:                                              ; preds = %136, %131, %126
  %166 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %167 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = call i64 @ntohl(i32 %168)
  %170 = load %struct.nf_conn_synproxy*, %struct.nf_conn_synproxy** %12, align 8
  %171 = getelementptr inbounds %struct.nf_conn_synproxy, %struct.nf_conn_synproxy* %170, i32 0, i32 0
  store i64 %169, i64* %171, align 8
  %172 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %13, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @NF_SYNPROXY_OPT_TIMESTAMP, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %165
  %178 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %13, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.nf_conn_synproxy*, %struct.nf_conn_synproxy** %12, align 8
  %181 = getelementptr inbounds %struct.nf_conn_synproxy, %struct.nf_conn_synproxy* %180, i32 0, i32 1
  store i64 %179, i64* %181, align 8
  br label %182

182:                                              ; preds = %177, %165
  %183 = load i32, i32* @IPCT_SYNPROXY, align 4
  %184 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %185 = call i32 @nf_conntrack_event_cache(i32 %183, %struct.nf_conn* %184)
  br label %270

186:                                              ; preds = %60
  %187 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %188 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %186
  %192 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %193 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %191, %186
  br label %270

197:                                              ; preds = %191
  %198 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %199 = load i32, i32* %17, align 4
  %200 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %201 = call i32 @synproxy_parse_options(%struct.sk_buff* %198, i32 %199, %struct.tcphdr* %200, %struct.synproxy_options* %13)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %197
  %204 = load i32, i32* @NF_DROP, align 4
  store i32 %204, i32* %4, align 4
  br label %279

205:                                              ; preds = %197
  %206 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %13, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @NF_SYNPROXY_OPT_TIMESTAMP, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %223

211:                                              ; preds = %205
  %212 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %13, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.nf_conn_synproxy*, %struct.nf_conn_synproxy** %12, align 8
  %215 = getelementptr inbounds %struct.nf_conn_synproxy, %struct.nf_conn_synproxy* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = sub nsw i64 %213, %216
  %218 = load %struct.nf_conn_synproxy*, %struct.nf_conn_synproxy** %12, align 8
  %219 = getelementptr inbounds %struct.nf_conn_synproxy, %struct.nf_conn_synproxy* %218, i32 0, i32 2
  store i64 %217, i64* %219, align 8
  %220 = load i32, i32* @IPCT_SYNPROXY, align 4
  %221 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %222 = call i32 @nf_conntrack_event_cache(i32 %220, %struct.nf_conn* %221)
  br label %223

223:                                              ; preds = %211, %205
  %224 = load i32, i32* @NF_SYNPROXY_OPT_MSS, align 4
  %225 = load i32, i32* @NF_SYNPROXY_OPT_WSCALE, align 4
  %226 = or i32 %224, %225
  %227 = load i32, i32* @NF_SYNPROXY_OPT_SACK_PERM, align 4
  %228 = or i32 %226, %227
  %229 = xor i32 %228, -1
  %230 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %13, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = and i32 %231, %229
  store i32 %232, i32* %230, align 8
  %233 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %13, i32 0, i32 2
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %13, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = call i32 @swap(i64 %234, i64 %236)
  %238 = load %struct.net*, %struct.net** %8, align 8
  %239 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %14, align 8
  %240 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %241 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %242 = call i32 @synproxy_send_server_ack(%struct.net* %238, %struct.ip_ct_tcp* %239, %struct.sk_buff* %240, %struct.tcphdr* %241, %struct.synproxy_options* %13)
  %243 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %244 = load i32, i32* %10, align 4
  %245 = load %struct.nf_conn_synproxy*, %struct.nf_conn_synproxy** %12, align 8
  %246 = getelementptr inbounds %struct.nf_conn_synproxy, %struct.nf_conn_synproxy* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %249 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = call i64 @ntohl(i32 %250)
  %252 = sub nsw i64 %247, %251
  %253 = call i32 @nf_ct_seqadj_init(%struct.nf_conn* %243, i32 %244, i64 %252)
  %254 = load i32, i32* @IPCT_SEQADJ, align 4
  %255 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %256 = call i32 @nf_conntrack_event_cache(i32 %254, %struct.nf_conn* %255)
  %257 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %13, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %13, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = call i32 @swap(i64 %258, i64 %260)
  %262 = load %struct.net*, %struct.net** %8, align 8
  %263 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %264 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %265 = call i32 @synproxy_send_client_ack(%struct.net* %262, %struct.sk_buff* %263, %struct.tcphdr* %264, %struct.synproxy_options* %13)
  %266 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %267 = call i32 @consume_skb(%struct.sk_buff* %266)
  %268 = load i32, i32* @NF_STOLEN, align 4
  store i32 %268, i32* %4, align 4
  br label %279

269:                                              ; preds = %60
  br label %270

270:                                              ; preds = %269, %196, %182, %105, %77
  %271 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %272 = load i32, i32* %17, align 4
  %273 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %274 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %275 = load i32, i32* %10, align 4
  %276 = load %struct.nf_conn_synproxy*, %struct.nf_conn_synproxy** %12, align 8
  %277 = call i32 @synproxy_tstamp_adjust(%struct.sk_buff* %271, i32 %272, %struct.tcphdr* %273, %struct.nf_conn* %274, i32 %275, %struct.nf_conn_synproxy* %276)
  %278 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %278, i32* %4, align 4
  br label %279

279:                                              ; preds = %270, %223, %203, %163, %153, %124, %58, %48, %35, %28
  %280 = load i32, i32* %4, align 4
  ret i32 %280
}

declare dso_local %struct.synproxy_net* @synproxy_pernet(%struct.net*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local %struct.nf_conn_synproxy* @nfct_synproxy(%struct.nf_conn*) #1

declare dso_local i64 @nf_is_loopback_packet(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.tcphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i32 @nf_ct_seqadj_init(%struct.nf_conn*, i32, i64) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i32 @synproxy_parse_options(%struct.sk_buff*, i32, %struct.tcphdr*, %struct.synproxy_options*) #1

declare dso_local i32 @synproxy_recv_client_ack(%struct.net*, %struct.sk_buff*, %struct.tcphdr*, %struct.synproxy_options*, i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @nf_conntrack_event_cache(i32, %struct.nf_conn*) #1

declare dso_local i32 @swap(i64, i64) #1

declare dso_local i32 @synproxy_send_server_ack(%struct.net*, %struct.ip_ct_tcp*, %struct.sk_buff*, %struct.tcphdr*, %struct.synproxy_options*) #1

declare dso_local i32 @synproxy_send_client_ack(%struct.net*, %struct.sk_buff*, %struct.tcphdr*, %struct.synproxy_options*) #1

declare dso_local i32 @synproxy_tstamp_adjust(%struct.sk_buff*, i32, %struct.tcphdr*, %struct.nf_conn*, i32, %struct.nf_conn_synproxy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
