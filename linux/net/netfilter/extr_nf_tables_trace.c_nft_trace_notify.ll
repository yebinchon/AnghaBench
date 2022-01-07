; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_trace.c_nft_trace_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_trace.c_nft_trace_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_traceinfo = type { i32, i32, %struct.TYPE_12__*, %struct.TYPE_14__*, %struct.TYPE_11__*, %struct.nft_pktinfo* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.nft_pktinfo = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.nfgenmsg = type { i64, i32, i32 }
%struct.nlmsghdr = type { i32 }
%struct.sk_buff = type { i32 }

@NFNLGRP_NFTRACE = common dso_local global i32 0, align 4
@NFT_TRACETYPE_LL_HSIZE = common dso_local global i32 0, align 4
@NFT_TRACETYPE_NETWORK_HSIZE = common dso_local global i32 0, align 4
@NFT_TRACETYPE_TRANSPORT_HSIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NFNL_SUBSYS_NFTABLES = common dso_local global i32 0, align 4
@NFT_MSG_TRACE = common dso_local global i32 0, align 4
@NFNETLINK_V0 = common dso_local global i32 0, align 4
@NFTA_TRACE_NFPROTO = common dso_local global i32 0, align 4
@NFTA_TRACE_TYPE = common dso_local global i32 0, align 4
@NFTA_TRACE_CHAIN = common dso_local global i32 0, align 4
@NFTA_TRACE_TABLE = common dso_local global i32 0, align 4
@NFTA_TRACE_VERDICT = common dso_local global i32 0, align 4
@NFTA_TRACE_POLICY = common dso_local global i32 0, align 4
@NFTA_TRACE_MARK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nft_trace_notify(%struct.nft_traceinfo* %0) #0 {
  %2 = alloca %struct.nft_traceinfo*, align 8
  %3 = alloca %struct.nft_pktinfo*, align 8
  %4 = alloca %struct.nfgenmsg*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nft_traceinfo* %0, %struct.nft_traceinfo** %2, align 8
  %9 = load %struct.nft_traceinfo*, %struct.nft_traceinfo** %2, align 8
  %10 = getelementptr inbounds %struct.nft_traceinfo, %struct.nft_traceinfo* %9, i32 0, i32 5
  %11 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %10, align 8
  store %struct.nft_pktinfo* %11, %struct.nft_pktinfo** %3, align 8
  %12 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %3, align 8
  %13 = call i32 @nft_net(%struct.nft_pktinfo* %12)
  %14 = load i32, i32* @NFNLGRP_NFTRACE, align 4
  %15 = call i32 @nfnetlink_has_listeners(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %260

18:                                               ; preds = %1
  %19 = call i32 @nlmsg_total_size(i32 16)
  %20 = load %struct.nft_traceinfo*, %struct.nft_traceinfo** %2, align 8
  %21 = getelementptr inbounds %struct.nft_traceinfo, %struct.nft_traceinfo* %20, i32 0, i32 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strlen(i32 %26)
  %28 = call i32 @nla_total_size(i32 %27)
  %29 = add i32 %19, %28
  %30 = load %struct.nft_traceinfo*, %struct.nft_traceinfo** %2, align 8
  %31 = getelementptr inbounds %struct.nft_traceinfo, %struct.nft_traceinfo* %30, i32 0, i32 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @strlen(i32 %34)
  %36 = call i32 @nla_total_size(i32 %35)
  %37 = add i32 %29, %36
  %38 = call i32 @nla_total_size_64bit(i32 4)
  %39 = add i32 %37, %38
  %40 = call i32 @nla_total_size(i32 4)
  %41 = add i32 %39, %40
  %42 = call i32 @nla_total_size(i32 0)
  %43 = add i32 %41, %42
  %44 = call i32 @nla_total_size(i32 4)
  %45 = add i32 %43, %44
  %46 = call i32 @nla_total_size(i32 4)
  %47 = add i32 %45, %46
  %48 = load i32, i32* @NFT_TRACETYPE_LL_HSIZE, align 4
  %49 = call i32 @nla_total_size(i32 %48)
  %50 = add i32 %47, %49
  %51 = load i32, i32* @NFT_TRACETYPE_NETWORK_HSIZE, align 4
  %52 = call i32 @nla_total_size(i32 %51)
  %53 = add i32 %50, %52
  %54 = load i32, i32* @NFT_TRACETYPE_TRANSPORT_HSIZE, align 4
  %55 = call i32 @nla_total_size(i32 %54)
  %56 = add i32 %53, %55
  %57 = call i32 @nla_total_size(i32 4)
  %58 = add i32 %56, %57
  %59 = call i32 @nla_total_size(i32 4)
  %60 = add i32 %58, %59
  %61 = call i32 @nla_total_size(i32 4)
  %62 = add i32 %60, %61
  %63 = call i32 @nla_total_size(i32 4)
  %64 = add i32 %62, %63
  %65 = call i32 @nla_total_size(i32 4)
  %66 = add i32 %64, %65
  %67 = call i32 @nla_total_size(i32 4)
  %68 = add i32 %66, %67
  %69 = call i32 @nla_total_size(i32 4)
  %70 = add i32 %68, %69
  store i32 %70, i32* %7, align 4
  %71 = load %struct.nft_traceinfo*, %struct.nft_traceinfo** %2, align 8
  %72 = call i64 @nft_trace_have_verdict_chain(%struct.nft_traceinfo* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %18
  %75 = load %struct.nft_traceinfo*, %struct.nft_traceinfo** %2, align 8
  %76 = getelementptr inbounds %struct.nft_traceinfo, %struct.nft_traceinfo* %75, i32 0, i32 3
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @strlen(i32 %81)
  %83 = call i32 @nla_total_size(i32 %82)
  %84 = load i32, i32* %7, align 4
  %85 = add i32 %84, %83
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %74, %18
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @GFP_ATOMIC, align 4
  %89 = call %struct.sk_buff* @nlmsg_new(i32 %87, i32 %88)
  store %struct.sk_buff* %89, %struct.sk_buff** %6, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %91 = icmp ne %struct.sk_buff* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %86
  br label %260

93:                                               ; preds = %86
  %94 = load i32, i32* @NFNL_SUBSYS_NFTABLES, align 4
  %95 = load i32, i32* @NFT_MSG_TRACE, align 4
  %96 = call i32 @nfnl_msg_type(i32 %94, i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %97, i32 0, i32 0, i32 %98, i32 16, i32 0)
  store %struct.nlmsghdr* %99, %struct.nlmsghdr** %5, align 8
  %100 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %101 = icmp ne %struct.nlmsghdr* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %93
  br label %256

103:                                              ; preds = %93
  %104 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %105 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %104)
  store %struct.nfgenmsg* %105, %struct.nfgenmsg** %4, align 8
  %106 = load %struct.nft_traceinfo*, %struct.nft_traceinfo** %2, align 8
  %107 = getelementptr inbounds %struct.nft_traceinfo, %struct.nft_traceinfo* %106, i32 0, i32 2
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.nfgenmsg*, %struct.nfgenmsg** %4, align 8
  %114 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @NFNETLINK_V0, align 4
  %116 = load %struct.nfgenmsg*, %struct.nfgenmsg** %4, align 8
  %117 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 8
  %118 = load %struct.nfgenmsg*, %struct.nfgenmsg** %4, align 8
  %119 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %118, i32 0, i32 0
  store i64 0, i64* %119, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %121 = load i32, i32* @NFTA_TRACE_NFPROTO, align 4
  %122 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %3, align 8
  %123 = call i32 @nft_pf(%struct.nft_pktinfo* %122)
  %124 = call i32 @htonl(i32 %123)
  %125 = call i64 @nla_put_be32(%struct.sk_buff* %120, i32 %121, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %103
  br label %256

128:                                              ; preds = %103
  %129 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %130 = load i32, i32* @NFTA_TRACE_TYPE, align 4
  %131 = load %struct.nft_traceinfo*, %struct.nft_traceinfo** %2, align 8
  %132 = getelementptr inbounds %struct.nft_traceinfo, %struct.nft_traceinfo* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @htonl(i32 %133)
  %135 = call i64 @nla_put_be32(%struct.sk_buff* %129, i32 %130, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %128
  br label %256

138:                                              ; preds = %128
  %139 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %140 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %3, align 8
  %141 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %140, i32 0, i32 0
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  %143 = call i64 @trace_fill_id(%struct.sk_buff* %139, %struct.TYPE_13__* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  br label %256

146:                                              ; preds = %138
  %147 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %148 = load i32, i32* @NFTA_TRACE_CHAIN, align 4
  %149 = load %struct.nft_traceinfo*, %struct.nft_traceinfo** %2, align 8
  %150 = getelementptr inbounds %struct.nft_traceinfo, %struct.nft_traceinfo* %149, i32 0, i32 4
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i64 @nla_put_string(%struct.sk_buff* %147, i32 %148, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %146
  br label %256

157:                                              ; preds = %146
  %158 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %159 = load i32, i32* @NFTA_TRACE_TABLE, align 4
  %160 = load %struct.nft_traceinfo*, %struct.nft_traceinfo** %2, align 8
  %161 = getelementptr inbounds %struct.nft_traceinfo, %struct.nft_traceinfo* %160, i32 0, i32 4
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @nla_put_string(%struct.sk_buff* %158, i32 %159, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %157
  br label %256

170:                                              ; preds = %157
  %171 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %172 = load %struct.nft_traceinfo*, %struct.nft_traceinfo** %2, align 8
  %173 = call i64 @nf_trace_fill_rule_info(%struct.sk_buff* %171, %struct.nft_traceinfo* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  br label %256

176:                                              ; preds = %170
  %177 = load %struct.nft_traceinfo*, %struct.nft_traceinfo** %2, align 8
  %178 = getelementptr inbounds %struct.nft_traceinfo, %struct.nft_traceinfo* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  switch i32 %179, label %204 [
    i32 129, label %180
    i32 128, label %180
    i32 131, label %181
    i32 130, label %181
    i32 132, label %191
  ]

180:                                              ; preds = %176, %176
  br label %204

181:                                              ; preds = %176, %176
  %182 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %183 = load i32, i32* @NFTA_TRACE_VERDICT, align 4
  %184 = load %struct.nft_traceinfo*, %struct.nft_traceinfo** %2, align 8
  %185 = getelementptr inbounds %struct.nft_traceinfo, %struct.nft_traceinfo* %184, i32 0, i32 3
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %185, align 8
  %187 = call i32 @nft_verdict_dump(%struct.sk_buff* %182, i32 %183, %struct.TYPE_14__* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %181
  br label %256

190:                                              ; preds = %181
  br label %204

191:                                              ; preds = %176
  %192 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %193 = load i32, i32* @NFTA_TRACE_POLICY, align 4
  %194 = load %struct.nft_traceinfo*, %struct.nft_traceinfo** %2, align 8
  %195 = getelementptr inbounds %struct.nft_traceinfo, %struct.nft_traceinfo* %194, i32 0, i32 2
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @htonl(i32 %198)
  %200 = call i64 @nla_put_be32(%struct.sk_buff* %192, i32 %193, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %191
  br label %256

203:                                              ; preds = %191
  br label %204

204:                                              ; preds = %176, %203, %190, %180
  %205 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %3, align 8
  %206 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %205, i32 0, i32 0
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %223

211:                                              ; preds = %204
  %212 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %213 = load i32, i32* @NFTA_TRACE_MARK, align 4
  %214 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %3, align 8
  %215 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %214, i32 0, i32 0
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @htonl(i32 %218)
  %220 = call i64 @nla_put_be32(%struct.sk_buff* %212, i32 %213, i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %211
  br label %256

223:                                              ; preds = %211, %204
  %224 = load %struct.nft_traceinfo*, %struct.nft_traceinfo** %2, align 8
  %225 = getelementptr inbounds %struct.nft_traceinfo, %struct.nft_traceinfo* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %246, label %228

228:                                              ; preds = %223
  %229 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %230 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %3, align 8
  %231 = call i32 @nft_in(%struct.nft_pktinfo* %230)
  %232 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %3, align 8
  %233 = call i32 @nft_out(%struct.nft_pktinfo* %232)
  %234 = call i64 @nf_trace_fill_dev_info(%struct.sk_buff* %229, i32 %231, i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %228
  br label %256

237:                                              ; preds = %228
  %238 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %239 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %3, align 8
  %240 = call i64 @nf_trace_fill_pkt_info(%struct.sk_buff* %238, %struct.nft_pktinfo* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %237
  br label %256

243:                                              ; preds = %237
  %244 = load %struct.nft_traceinfo*, %struct.nft_traceinfo** %2, align 8
  %245 = getelementptr inbounds %struct.nft_traceinfo, %struct.nft_traceinfo* %244, i32 0, i32 1
  store i32 1, i32* %245, align 4
  br label %246

246:                                              ; preds = %243, %223
  %247 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %248 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %249 = call i32 @nlmsg_end(%struct.sk_buff* %247, %struct.nlmsghdr* %248)
  %250 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %251 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %3, align 8
  %252 = call i32 @nft_net(%struct.nft_pktinfo* %251)
  %253 = load i32, i32* @NFNLGRP_NFTRACE, align 4
  %254 = load i32, i32* @GFP_ATOMIC, align 4
  %255 = call i32 @nfnetlink_send(%struct.sk_buff* %250, i32 %252, i32 0, i32 %253, i32 0, i32 %254)
  br label %260

256:                                              ; preds = %242, %236, %222, %202, %189, %175, %169, %156, %145, %137, %127, %102
  %257 = call i32 @WARN_ON_ONCE(i32 1)
  %258 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %259 = call i32 @kfree_skb(%struct.sk_buff* %258)
  br label %260

260:                                              ; preds = %256, %246, %92, %17
  ret void
}

declare dso_local i32 @nfnetlink_has_listeners(i32, i32) #1

declare dso_local i32 @nft_net(%struct.nft_pktinfo*) #1

declare dso_local i32 @nlmsg_total_size(i32) #1

declare dso_local i32 @nla_total_size(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @nla_total_size_64bit(i32) #1

declare dso_local i64 @nft_trace_have_verdict_chain(%struct.nft_traceinfo*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @nfnl_msg_type(i32, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @nft_pf(%struct.nft_pktinfo*) #1

declare dso_local i64 @trace_fill_id(%struct.sk_buff*, %struct.TYPE_13__*) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nf_trace_fill_rule_info(%struct.sk_buff*, %struct.nft_traceinfo*) #1

declare dso_local i32 @nft_verdict_dump(%struct.sk_buff*, i32, %struct.TYPE_14__*) #1

declare dso_local i64 @nf_trace_fill_dev_info(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nft_in(%struct.nft_pktinfo*) #1

declare dso_local i32 @nft_out(%struct.nft_pktinfo*) #1

declare dso_local i64 @nf_trace_fill_pkt_info(%struct.sk_buff*, %struct.nft_pktinfo*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nfnetlink_send(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
