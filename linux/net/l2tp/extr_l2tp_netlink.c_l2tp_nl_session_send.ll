; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_netlink.c_l2tp_nl_session_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_netlink.c_l2tp_nl_session_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.l2tp_session = type { i32, i32, i32, %struct.TYPE_2__, i64, i32*, i64, i32*, i64, i64*, i32, i32, i32, i32, %struct.l2tp_tunnel* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.l2tp_tunnel = type { i32, i32 }
%struct.nlattr = type { i32 }

@l2tp_nl_family = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@L2TP_ATTR_CONN_ID = common dso_local global i32 0, align 4
@L2TP_ATTR_SESSION_ID = common dso_local global i32 0, align 4
@L2TP_ATTR_PEER_CONN_ID = common dso_local global i32 0, align 4
@L2TP_ATTR_PEER_SESSION_ID = common dso_local global i32 0, align 4
@L2TP_ATTR_DEBUG = common dso_local global i32 0, align 4
@L2TP_ATTR_PW_TYPE = common dso_local global i32 0, align 4
@L2TP_ATTR_IFNAME = common dso_local global i32 0, align 4
@L2TP_ATTR_COOKIE = common dso_local global i32 0, align 4
@L2TP_ATTR_PEER_COOKIE = common dso_local global i32 0, align 4
@L2TP_ATTR_RECV_SEQ = common dso_local global i32 0, align 4
@L2TP_ATTR_SEND_SEQ = common dso_local global i32 0, align 4
@L2TP_ATTR_LNS_MODE = common dso_local global i32 0, align 4
@L2TP_ATTR_USING_IPSEC = common dso_local global i32 0, align 4
@L2TP_ATTR_RECV_TIMEOUT = common dso_local global i32 0, align 4
@L2TP_ATTR_PAD = common dso_local global i32 0, align 4
@L2TP_ATTR_STATS = common dso_local global i32 0, align 4
@L2TP_ATTR_TX_PACKETS = common dso_local global i32 0, align 4
@L2TP_ATTR_STATS_PAD = common dso_local global i32 0, align 4
@L2TP_ATTR_TX_BYTES = common dso_local global i32 0, align 4
@L2TP_ATTR_TX_ERRORS = common dso_local global i32 0, align 4
@L2TP_ATTR_RX_PACKETS = common dso_local global i32 0, align 4
@L2TP_ATTR_RX_BYTES = common dso_local global i32 0, align 4
@L2TP_ATTR_RX_SEQ_DISCARDS = common dso_local global i32 0, align 4
@L2TP_ATTR_RX_OOS_PACKETS = common dso_local global i32 0, align 4
@L2TP_ATTR_RX_ERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32, %struct.l2tp_session*, i32)* @l2tp_nl_session_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_nl_session_send(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, %struct.l2tp_session* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.l2tp_session*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.nlattr*, align 8
  %16 = alloca %struct.l2tp_tunnel*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.l2tp_session* %4, %struct.l2tp_session** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %18 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %17, i32 0, i32 14
  %19 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %18, align 8
  store %struct.l2tp_tunnel* %19, %struct.l2tp_tunnel** %16, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i8* @genlmsg_put(%struct.sk_buff* %20, i32 %21, i32 %22, i32* @l2tp_nl_family, i32 %23, i32 %24)
  store i8* %25, i8** %14, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %6
  %29 = load i32, i32* @EMSGSIZE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %276

31:                                               ; preds = %6
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = load i32, i32* @L2TP_ATTR_CONN_ID, align 4
  %34 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %16, align 8
  %35 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @nla_put_u32(%struct.sk_buff* %32, i32 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %79, label %39

39:                                               ; preds = %31
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = load i32, i32* @L2TP_ATTR_SESSION_ID, align 4
  %42 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %43 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %42, i32 0, i32 13
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @nla_put_u32(%struct.sk_buff* %40, i32 %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %79, label %47

47:                                               ; preds = %39
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = load i32, i32* @L2TP_ATTR_PEER_CONN_ID, align 4
  %50 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %16, align 8
  %51 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @nla_put_u32(%struct.sk_buff* %48, i32 %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %79, label %55

55:                                               ; preds = %47
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %57 = load i32, i32* @L2TP_ATTR_PEER_SESSION_ID, align 4
  %58 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %59 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %58, i32 0, i32 12
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @nla_put_u32(%struct.sk_buff* %56, i32 %57, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %55
  %64 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %65 = load i32, i32* @L2TP_ATTR_DEBUG, align 4
  %66 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %67 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %66, i32 0, i32 11
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @nla_put_u32(%struct.sk_buff* %64, i32 %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %63
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %73 = load i32, i32* @L2TP_ATTR_PW_TYPE, align 4
  %74 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %75 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %74, i32 0, i32 10
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @nla_put_u16(%struct.sk_buff* %72, i32 %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71, %63, %55, %47, %39, %31
  br label %272

80:                                               ; preds = %71
  %81 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %82 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %81, i32 0, i32 9
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  %88 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %89 = load i32, i32* @L2TP_ATTR_IFNAME, align 4
  %90 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %91 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %90, i32 0, i32 9
  %92 = load i64*, i64** %91, align 8
  %93 = call i64 @nla_put_string(%struct.sk_buff* %88, i32 %89, i64* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %176, label %95

95:                                               ; preds = %87, %80
  %96 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %97 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %96, i32 0, i32 8
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %95
  %101 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %102 = load i32, i32* @L2TP_ATTR_COOKIE, align 4
  %103 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %104 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %103, i32 0, i32 8
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %107 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %106, i32 0, i32 7
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = call i64 @nla_put(%struct.sk_buff* %101, i32 %102, i64 %105, i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %176, label %112

112:                                              ; preds = %100, %95
  %113 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %114 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %113, i32 0, i32 6
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %112
  %118 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %119 = load i32, i32* @L2TP_ATTR_PEER_COOKIE, align 4
  %120 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %121 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %120, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %124 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %123, i32 0, i32 5
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = call i64 @nla_put(%struct.sk_buff* %118, i32 %119, i64 %122, i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %176, label %129

129:                                              ; preds = %117, %112
  %130 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %131 = load i32, i32* @L2TP_ATTR_RECV_SEQ, align 4
  %132 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %133 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @nla_put_u8(%struct.sk_buff* %130, i32 %131, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %176, label %137

137:                                              ; preds = %129
  %138 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %139 = load i32, i32* @L2TP_ATTR_SEND_SEQ, align 4
  %140 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %141 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @nla_put_u8(%struct.sk_buff* %138, i32 %139, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %176, label %145

145:                                              ; preds = %137
  %146 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %147 = load i32, i32* @L2TP_ATTR_LNS_MODE, align 4
  %148 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %149 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i64 @nla_put_u8(%struct.sk_buff* %146, i32 %147, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %176, label %153

153:                                              ; preds = %145
  %154 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %16, align 8
  %155 = call i64 @l2tp_tunnel_uses_xfrm(%struct.l2tp_tunnel* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %159 = load i32, i32* @L2TP_ATTR_USING_IPSEC, align 4
  %160 = call i64 @nla_put_u8(%struct.sk_buff* %158, i32 %159, i32 1)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %176, label %162

162:                                              ; preds = %157, %153
  %163 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %164 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %162
  %168 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %169 = load i32, i32* @L2TP_ATTR_RECV_TIMEOUT, align 4
  %170 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %171 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %170, i32 0, i32 4
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* @L2TP_ATTR_PAD, align 4
  %174 = call i64 @nla_put_msecs(%struct.sk_buff* %168, i32 %169, i64 %172, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %167, %157, %145, %137, %129, %117, %100, %87
  br label %272

177:                                              ; preds = %167, %162
  %178 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %179 = load i32, i32* @L2TP_ATTR_STATS, align 4
  %180 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %178, i32 %179)
  store %struct.nlattr* %180, %struct.nlattr** %15, align 8
  %181 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %182 = icmp eq %struct.nlattr* %181, null
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  br label %272

184:                                              ; preds = %177
  %185 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %186 = load i32, i32* @L2TP_ATTR_TX_PACKETS, align 4
  %187 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %188 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 7
  %190 = call i32 @atomic_long_read(i32* %189)
  %191 = load i32, i32* @L2TP_ATTR_STATS_PAD, align 4
  %192 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %185, i32 %186, i32 %190, i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %264, label %194

194:                                              ; preds = %184
  %195 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %196 = load i32, i32* @L2TP_ATTR_TX_BYTES, align 4
  %197 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %198 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 6
  %200 = call i32 @atomic_long_read(i32* %199)
  %201 = load i32, i32* @L2TP_ATTR_STATS_PAD, align 4
  %202 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %195, i32 %196, i32 %200, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %264, label %204

204:                                              ; preds = %194
  %205 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %206 = load i32, i32* @L2TP_ATTR_TX_ERRORS, align 4
  %207 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %208 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 5
  %210 = call i32 @atomic_long_read(i32* %209)
  %211 = load i32, i32* @L2TP_ATTR_STATS_PAD, align 4
  %212 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %205, i32 %206, i32 %210, i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %264, label %214

214:                                              ; preds = %204
  %215 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %216 = load i32, i32* @L2TP_ATTR_RX_PACKETS, align 4
  %217 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %218 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 4
  %220 = call i32 @atomic_long_read(i32* %219)
  %221 = load i32, i32* @L2TP_ATTR_STATS_PAD, align 4
  %222 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %215, i32 %216, i32 %220, i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %264, label %224

224:                                              ; preds = %214
  %225 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %226 = load i32, i32* @L2TP_ATTR_RX_BYTES, align 4
  %227 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %228 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %227, i32 0, i32 3
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 3
  %230 = call i32 @atomic_long_read(i32* %229)
  %231 = load i32, i32* @L2TP_ATTR_STATS_PAD, align 4
  %232 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %225, i32 %226, i32 %230, i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %264, label %234

234:                                              ; preds = %224
  %235 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %236 = load i32, i32* @L2TP_ATTR_RX_SEQ_DISCARDS, align 4
  %237 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %238 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 2
  %240 = call i32 @atomic_long_read(i32* %239)
  %241 = load i32, i32* @L2TP_ATTR_STATS_PAD, align 4
  %242 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %235, i32 %236, i32 %240, i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %264, label %244

244:                                              ; preds = %234
  %245 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %246 = load i32, i32* @L2TP_ATTR_RX_OOS_PACKETS, align 4
  %247 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %248 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 1
  %250 = call i32 @atomic_long_read(i32* %249)
  %251 = load i32, i32* @L2TP_ATTR_STATS_PAD, align 4
  %252 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %245, i32 %246, i32 %250, i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %264, label %254

254:                                              ; preds = %244
  %255 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %256 = load i32, i32* @L2TP_ATTR_RX_ERRORS, align 4
  %257 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %258 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %257, i32 0, i32 3
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 0
  %260 = call i32 @atomic_long_read(i32* %259)
  %261 = load i32, i32* @L2TP_ATTR_STATS_PAD, align 4
  %262 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %255, i32 %256, i32 %260, i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %254, %244, %234, %224, %214, %204, %194, %184
  br label %272

265:                                              ; preds = %254
  %266 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %267 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %268 = call i32 @nla_nest_end(%struct.sk_buff* %266, %struct.nlattr* %267)
  %269 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %270 = load i8*, i8** %14, align 8
  %271 = call i32 @genlmsg_end(%struct.sk_buff* %269, i8* %270)
  store i32 0, i32* %7, align 4
  br label %276

272:                                              ; preds = %264, %183, %176, %79
  %273 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %274 = load i8*, i8** %14, align 8
  %275 = call i32 @genlmsg_cancel(%struct.sk_buff* %273, i8* %274)
  store i32 -1, i32* %7, align 4
  br label %276

276:                                              ; preds = %272, %265, %28
  %277 = load i32, i32* %7, align 4
  ret i32 %277
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i64*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i64, i32*) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @l2tp_tunnel_uses_xfrm(%struct.l2tp_tunnel*) #1

declare dso_local i64 @nla_put_msecs(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @atomic_long_read(i32*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
