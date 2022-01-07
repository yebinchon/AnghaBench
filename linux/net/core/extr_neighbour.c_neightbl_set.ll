; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neightbl_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neightbl_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_table = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.ndtmsg = type { i64 }
%struct.neigh_parms = type { i32 }
%struct.nlattr = type { i32 }

@NDTA_MAX = common dso_local global i32 0, align 4
@nl_neightbl_policy = common dso_local global i32 0, align 4
@NDTA_NAME = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NEIGH_NR_TABLES = common dso_local global i32 0, align 4
@neigh_tables = common dso_local global %struct.neigh_table** null, align 8
@ENOENT = common dso_local global i32 0, align 4
@NDTA_PARMS = common dso_local global i64 0, align 8
@NDTPA_MAX = common dso_local global i32 0, align 4
@nl_ntbl_parm_policy = common dso_local global i32 0, align 4
@NDTPA_IFINDEX = common dso_local global i64 0, align 8
@QUEUE_LEN_BYTES = common dso_local global i32 0, align 4
@ETH_FRAME_LEN = common dso_local global i32 0, align 4
@PROXY_QLEN = common dso_local global i32 0, align 4
@APP_PROBES = common dso_local global i32 0, align 4
@UCAST_PROBES = common dso_local global i32 0, align 4
@MCAST_PROBES = common dso_local global i32 0, align 4
@MCAST_REPROBES = common dso_local global i32 0, align 4
@BASE_REACHABLE_TIME = common dso_local global i32 0, align 4
@GC_STALETIME = common dso_local global i32 0, align 4
@DELAY_PROBE_TIME = common dso_local global i32 0, align 4
@NETEVENT_DELAY_PROBE_TIME_UPDATE = common dso_local global i32 0, align 4
@RETRANS_TIME = common dso_local global i32 0, align 4
@ANYCAST_DELAY = common dso_local global i32 0, align 4
@PROXY_DELAY = common dso_local global i32 0, align 4
@LOCKTIME = common dso_local global i32 0, align 4
@NDTA_THRESH1 = common dso_local global i64 0, align 8
@NDTA_THRESH2 = common dso_local global i64 0, align 8
@NDTA_THRESH3 = common dso_local global i64 0, align 8
@NDTA_GC_INTERVAL = common dso_local global i64 0, align 8
@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @neightbl_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neightbl_set(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.neigh_table*, align 8
  %10 = alloca %struct.ndtmsg*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.neigh_parms*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.net* @sock_net(i32 %24)
  store %struct.net* %25, %struct.net** %8, align 8
  %26 = load i32, i32* @NDTA_MAX, align 4
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %11, align 8
  %30 = alloca %struct.nlattr*, i64 %28, align 16
  store i64 %28, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %31 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %32 = load i32, i32* @NDTA_MAX, align 4
  %33 = load i32, i32* @nl_neightbl_policy, align 4
  %34 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %35 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %31, i32 8, %struct.nlattr** %30, i32 %32, i32 %33, %struct.netlink_ext_ack* %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  br label %382

39:                                               ; preds = %3
  %40 = load i64, i64* @NDTA_NAME, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = icmp eq %struct.nlattr* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %14, align 4
  br label %382

47:                                               ; preds = %39
  %48 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %49 = call %struct.ndtmsg* @nlmsg_data(%struct.nlmsghdr* %48)
  store %struct.ndtmsg* %49, %struct.ndtmsg** %10, align 8
  store i32 0, i32* %15, align 4
  br label %50

50:                                               ; preds = %88, %47
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* @NEIGH_NR_TABLES, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %91

54:                                               ; preds = %50
  %55 = load %struct.neigh_table**, %struct.neigh_table*** @neigh_tables, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.neigh_table*, %struct.neigh_table** %55, i64 %57
  %59 = load %struct.neigh_table*, %struct.neigh_table** %58, align 8
  store %struct.neigh_table* %59, %struct.neigh_table** %9, align 8
  %60 = load %struct.neigh_table*, %struct.neigh_table** %9, align 8
  %61 = icmp ne %struct.neigh_table* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  br label %88

63:                                               ; preds = %54
  %64 = load %struct.ndtmsg*, %struct.ndtmsg** %10, align 8
  %65 = getelementptr inbounds %struct.ndtmsg, %struct.ndtmsg* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load %struct.neigh_table*, %struct.neigh_table** %9, align 8
  %70 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.ndtmsg*, %struct.ndtmsg** %10, align 8
  %73 = getelementptr inbounds %struct.ndtmsg, %struct.ndtmsg* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %88

77:                                               ; preds = %68, %63
  %78 = load i64, i64* @NDTA_NAME, align 8
  %79 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %78
  %80 = load %struct.nlattr*, %struct.nlattr** %79, align 8
  %81 = load %struct.neigh_table*, %struct.neigh_table** %9, align 8
  %82 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @nla_strcmp(%struct.nlattr* %80, i32 %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  store i32 1, i32* %13, align 4
  br label %91

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %76, %62
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %15, align 4
  br label %50

91:                                               ; preds = %86, %50
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @ENOENT, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %384

97:                                               ; preds = %91
  %98 = load %struct.neigh_table*, %struct.neigh_table** %9, align 8
  %99 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %98, i32 0, i32 5
  %100 = call i32 @write_lock_bh(i32* %99)
  %101 = load i64, i64* @NDTA_PARMS, align 8
  %102 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %101
  %103 = load %struct.nlattr*, %struct.nlattr** %102, align 8
  %104 = icmp ne %struct.nlattr* %103, null
  br i1 %104, label %105, label %302

105:                                              ; preds = %97
  %106 = load i32, i32* @NDTPA_MAX, align 4
  %107 = add nsw i32 %106, 1
  %108 = zext i32 %107 to i64
  %109 = call i8* @llvm.stacksave()
  store i8* %109, i8** %17, align 8
  %110 = alloca %struct.nlattr*, i64 %108, align 16
  store i64 %108, i64* %18, align 8
  store i32 0, i32* %21, align 4
  %111 = load i32, i32* @NDTPA_MAX, align 4
  %112 = load i64, i64* @NDTA_PARMS, align 8
  %113 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %112
  %114 = load %struct.nlattr*, %struct.nlattr** %113, align 8
  %115 = load i32, i32* @nl_ntbl_parm_policy, align 4
  %116 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %117 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %110, i32 %111, %struct.nlattr* %114, i32 %115, %struct.netlink_ext_ack* %116)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %105
  store i32 6, i32* %16, align 4
  br label %298

121:                                              ; preds = %105
  %122 = load i64, i64* @NDTPA_IFINDEX, align 8
  %123 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %110, i64 %122
  %124 = load %struct.nlattr*, %struct.nlattr** %123, align 8
  %125 = icmp ne %struct.nlattr* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load i64, i64* @NDTPA_IFINDEX, align 8
  %128 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %110, i64 %127
  %129 = load %struct.nlattr*, %struct.nlattr** %128, align 8
  %130 = call i32 @nla_get_u32(%struct.nlattr* %129)
  store i32 %130, i32* %21, align 4
  br label %131

131:                                              ; preds = %126, %121
  %132 = load %struct.neigh_table*, %struct.neigh_table** %9, align 8
  %133 = load %struct.net*, %struct.net** %8, align 8
  %134 = load i32, i32* %21, align 4
  %135 = call %struct.neigh_parms* @lookup_neigh_parms(%struct.neigh_table* %132, %struct.net* %133, i32 %134)
  store %struct.neigh_parms* %135, %struct.neigh_parms** %19, align 8
  %136 = load %struct.neigh_parms*, %struct.neigh_parms** %19, align 8
  %137 = icmp eq %struct.neigh_parms* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load i32, i32* @ENOENT, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %14, align 4
  store i32 6, i32* %16, align 4
  br label %298

141:                                              ; preds = %131
  store i32 1, i32* %20, align 4
  br label %142

142:                                              ; preds = %294, %141
  %143 = load i32, i32* %20, align 4
  %144 = load i32, i32* @NDTPA_MAX, align 4
  %145 = icmp sle i32 %143, %144
  br i1 %145, label %146, label %297

146:                                              ; preds = %142
  %147 = load i32, i32* %20, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %110, i64 %148
  %150 = load %struct.nlattr*, %struct.nlattr** %149, align 8
  %151 = icmp eq %struct.nlattr* %150, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %294

153:                                              ; preds = %146
  %154 = load i32, i32* %20, align 4
  switch i32 %154, label %293 [
    i32 131, label %155
    i32 130, label %167
    i32 132, label %176
    i32 140, label %185
    i32 128, label %194
    i32 135, label %203
    i32 134, label %212
    i32 139, label %221
    i32 137, label %236
    i32 138, label %245
    i32 129, label %257
    i32 141, label %266
    i32 133, label %275
    i32 136, label %284
  ]

155:                                              ; preds = %153
  %156 = load %struct.neigh_parms*, %struct.neigh_parms** %19, align 8
  %157 = load i32, i32* @QUEUE_LEN_BYTES, align 4
  %158 = load i32, i32* %20, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %110, i64 %159
  %161 = load %struct.nlattr*, %struct.nlattr** %160, align 8
  %162 = call i32 @nla_get_u32(%struct.nlattr* %161)
  %163 = load i32, i32* @ETH_FRAME_LEN, align 4
  %164 = call i32 @SKB_TRUESIZE(i32 %163)
  %165 = mul nsw i32 %162, %164
  %166 = call i32 @NEIGH_VAR_SET(%struct.neigh_parms* %156, i32 %157, i32 %165)
  br label %293

167:                                              ; preds = %153
  %168 = load %struct.neigh_parms*, %struct.neigh_parms** %19, align 8
  %169 = load i32, i32* @QUEUE_LEN_BYTES, align 4
  %170 = load i32, i32* %20, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %110, i64 %171
  %173 = load %struct.nlattr*, %struct.nlattr** %172, align 8
  %174 = call i32 @nla_get_u32(%struct.nlattr* %173)
  %175 = call i32 @NEIGH_VAR_SET(%struct.neigh_parms* %168, i32 %169, i32 %174)
  br label %293

176:                                              ; preds = %153
  %177 = load %struct.neigh_parms*, %struct.neigh_parms** %19, align 8
  %178 = load i32, i32* @PROXY_QLEN, align 4
  %179 = load i32, i32* %20, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %110, i64 %180
  %182 = load %struct.nlattr*, %struct.nlattr** %181, align 8
  %183 = call i32 @nla_get_u32(%struct.nlattr* %182)
  %184 = call i32 @NEIGH_VAR_SET(%struct.neigh_parms* %177, i32 %178, i32 %183)
  br label %293

185:                                              ; preds = %153
  %186 = load %struct.neigh_parms*, %struct.neigh_parms** %19, align 8
  %187 = load i32, i32* @APP_PROBES, align 4
  %188 = load i32, i32* %20, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %110, i64 %189
  %191 = load %struct.nlattr*, %struct.nlattr** %190, align 8
  %192 = call i32 @nla_get_u32(%struct.nlattr* %191)
  %193 = call i32 @NEIGH_VAR_SET(%struct.neigh_parms* %186, i32 %187, i32 %192)
  br label %293

194:                                              ; preds = %153
  %195 = load %struct.neigh_parms*, %struct.neigh_parms** %19, align 8
  %196 = load i32, i32* @UCAST_PROBES, align 4
  %197 = load i32, i32* %20, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %110, i64 %198
  %200 = load %struct.nlattr*, %struct.nlattr** %199, align 8
  %201 = call i32 @nla_get_u32(%struct.nlattr* %200)
  %202 = call i32 @NEIGH_VAR_SET(%struct.neigh_parms* %195, i32 %196, i32 %201)
  br label %293

203:                                              ; preds = %153
  %204 = load %struct.neigh_parms*, %struct.neigh_parms** %19, align 8
  %205 = load i32, i32* @MCAST_PROBES, align 4
  %206 = load i32, i32* %20, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %110, i64 %207
  %209 = load %struct.nlattr*, %struct.nlattr** %208, align 8
  %210 = call i32 @nla_get_u32(%struct.nlattr* %209)
  %211 = call i32 @NEIGH_VAR_SET(%struct.neigh_parms* %204, i32 %205, i32 %210)
  br label %293

212:                                              ; preds = %153
  %213 = load %struct.neigh_parms*, %struct.neigh_parms** %19, align 8
  %214 = load i32, i32* @MCAST_REPROBES, align 4
  %215 = load i32, i32* %20, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %110, i64 %216
  %218 = load %struct.nlattr*, %struct.nlattr** %217, align 8
  %219 = call i32 @nla_get_u32(%struct.nlattr* %218)
  %220 = call i32 @NEIGH_VAR_SET(%struct.neigh_parms* %213, i32 %214, i32 %219)
  br label %293

221:                                              ; preds = %153
  %222 = load %struct.neigh_parms*, %struct.neigh_parms** %19, align 8
  %223 = load i32, i32* @BASE_REACHABLE_TIME, align 4
  %224 = load i32, i32* %20, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %110, i64 %225
  %227 = load %struct.nlattr*, %struct.nlattr** %226, align 8
  %228 = call i32 @nla_get_msecs(%struct.nlattr* %227)
  %229 = call i32 @NEIGH_VAR_SET(%struct.neigh_parms* %222, i32 %223, i32 %228)
  %230 = load %struct.neigh_parms*, %struct.neigh_parms** %19, align 8
  %231 = load i32, i32* @BASE_REACHABLE_TIME, align 4
  %232 = call i32 @NEIGH_VAR(%struct.neigh_parms* %230, i32 %231)
  %233 = call i32 @neigh_rand_reach_time(i32 %232)
  %234 = load %struct.neigh_parms*, %struct.neigh_parms** %19, align 8
  %235 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %234, i32 0, i32 0
  store i32 %233, i32* %235, align 4
  br label %293

236:                                              ; preds = %153
  %237 = load %struct.neigh_parms*, %struct.neigh_parms** %19, align 8
  %238 = load i32, i32* @GC_STALETIME, align 4
  %239 = load i32, i32* %20, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %110, i64 %240
  %242 = load %struct.nlattr*, %struct.nlattr** %241, align 8
  %243 = call i32 @nla_get_msecs(%struct.nlattr* %242)
  %244 = call i32 @NEIGH_VAR_SET(%struct.neigh_parms* %237, i32 %238, i32 %243)
  br label %293

245:                                              ; preds = %153
  %246 = load %struct.neigh_parms*, %struct.neigh_parms** %19, align 8
  %247 = load i32, i32* @DELAY_PROBE_TIME, align 4
  %248 = load i32, i32* %20, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %110, i64 %249
  %251 = load %struct.nlattr*, %struct.nlattr** %250, align 8
  %252 = call i32 @nla_get_msecs(%struct.nlattr* %251)
  %253 = call i32 @NEIGH_VAR_SET(%struct.neigh_parms* %246, i32 %247, i32 %252)
  %254 = load i32, i32* @NETEVENT_DELAY_PROBE_TIME_UPDATE, align 4
  %255 = load %struct.neigh_parms*, %struct.neigh_parms** %19, align 8
  %256 = call i32 @call_netevent_notifiers(i32 %254, %struct.neigh_parms* %255)
  br label %293

257:                                              ; preds = %153
  %258 = load %struct.neigh_parms*, %struct.neigh_parms** %19, align 8
  %259 = load i32, i32* @RETRANS_TIME, align 4
  %260 = load i32, i32* %20, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %110, i64 %261
  %263 = load %struct.nlattr*, %struct.nlattr** %262, align 8
  %264 = call i32 @nla_get_msecs(%struct.nlattr* %263)
  %265 = call i32 @NEIGH_VAR_SET(%struct.neigh_parms* %258, i32 %259, i32 %264)
  br label %293

266:                                              ; preds = %153
  %267 = load %struct.neigh_parms*, %struct.neigh_parms** %19, align 8
  %268 = load i32, i32* @ANYCAST_DELAY, align 4
  %269 = load i32, i32* %20, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %110, i64 %270
  %272 = load %struct.nlattr*, %struct.nlattr** %271, align 8
  %273 = call i32 @nla_get_msecs(%struct.nlattr* %272)
  %274 = call i32 @NEIGH_VAR_SET(%struct.neigh_parms* %267, i32 %268, i32 %273)
  br label %293

275:                                              ; preds = %153
  %276 = load %struct.neigh_parms*, %struct.neigh_parms** %19, align 8
  %277 = load i32, i32* @PROXY_DELAY, align 4
  %278 = load i32, i32* %20, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %110, i64 %279
  %281 = load %struct.nlattr*, %struct.nlattr** %280, align 8
  %282 = call i32 @nla_get_msecs(%struct.nlattr* %281)
  %283 = call i32 @NEIGH_VAR_SET(%struct.neigh_parms* %276, i32 %277, i32 %282)
  br label %293

284:                                              ; preds = %153
  %285 = load %struct.neigh_parms*, %struct.neigh_parms** %19, align 8
  %286 = load i32, i32* @LOCKTIME, align 4
  %287 = load i32, i32* %20, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %110, i64 %288
  %290 = load %struct.nlattr*, %struct.nlattr** %289, align 8
  %291 = call i32 @nla_get_msecs(%struct.nlattr* %290)
  %292 = call i32 @NEIGH_VAR_SET(%struct.neigh_parms* %285, i32 %286, i32 %291)
  br label %293

293:                                              ; preds = %153, %284, %275, %266, %257, %245, %236, %221, %212, %203, %194, %185, %176, %167, %155
  br label %294

294:                                              ; preds = %293, %152
  %295 = load i32, i32* %20, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %20, align 4
  br label %142

297:                                              ; preds = %142
  store i32 0, i32* %16, align 4
  br label %298

298:                                              ; preds = %138, %120, %297
  %299 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %299)
  %300 = load i32, i32* %16, align 4
  switch i32 %300, label %384 [
    i32 0, label %301
    i32 6, label %378
  ]

301:                                              ; preds = %298
  br label %302

302:                                              ; preds = %301, %97
  %303 = load i32, i32* @ENOENT, align 4
  %304 = sub nsw i32 0, %303
  store i32 %304, i32* %14, align 4
  %305 = load i64, i64* @NDTA_THRESH1, align 8
  %306 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %305
  %307 = load %struct.nlattr*, %struct.nlattr** %306, align 8
  %308 = icmp ne %struct.nlattr* %307, null
  br i1 %308, label %324, label %309

309:                                              ; preds = %302
  %310 = load i64, i64* @NDTA_THRESH2, align 8
  %311 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %310
  %312 = load %struct.nlattr*, %struct.nlattr** %311, align 8
  %313 = icmp ne %struct.nlattr* %312, null
  br i1 %313, label %324, label %314

314:                                              ; preds = %309
  %315 = load i64, i64* @NDTA_THRESH3, align 8
  %316 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %315
  %317 = load %struct.nlattr*, %struct.nlattr** %316, align 8
  %318 = icmp ne %struct.nlattr* %317, null
  br i1 %318, label %324, label %319

319:                                              ; preds = %314
  %320 = load i64, i64* @NDTA_GC_INTERVAL, align 8
  %321 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %320
  %322 = load %struct.nlattr*, %struct.nlattr** %321, align 8
  %323 = icmp ne %struct.nlattr* %322, null
  br i1 %323, label %324, label %329

324:                                              ; preds = %319, %314, %309, %302
  %325 = load %struct.net*, %struct.net** %8, align 8
  %326 = call i32 @net_eq(%struct.net* %325, i32* @init_net)
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %329, label %328

328:                                              ; preds = %324
  br label %378

329:                                              ; preds = %324, %319
  %330 = load i64, i64* @NDTA_THRESH1, align 8
  %331 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %330
  %332 = load %struct.nlattr*, %struct.nlattr** %331, align 8
  %333 = icmp ne %struct.nlattr* %332, null
  br i1 %333, label %334, label %341

334:                                              ; preds = %329
  %335 = load i64, i64* @NDTA_THRESH1, align 8
  %336 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %335
  %337 = load %struct.nlattr*, %struct.nlattr** %336, align 8
  %338 = call i32 @nla_get_u32(%struct.nlattr* %337)
  %339 = load %struct.neigh_table*, %struct.neigh_table** %9, align 8
  %340 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %339, i32 0, i32 1
  store i32 %338, i32* %340, align 8
  br label %341

341:                                              ; preds = %334, %329
  %342 = load i64, i64* @NDTA_THRESH2, align 8
  %343 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %342
  %344 = load %struct.nlattr*, %struct.nlattr** %343, align 8
  %345 = icmp ne %struct.nlattr* %344, null
  br i1 %345, label %346, label %353

346:                                              ; preds = %341
  %347 = load i64, i64* @NDTA_THRESH2, align 8
  %348 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %347
  %349 = load %struct.nlattr*, %struct.nlattr** %348, align 8
  %350 = call i32 @nla_get_u32(%struct.nlattr* %349)
  %351 = load %struct.neigh_table*, %struct.neigh_table** %9, align 8
  %352 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %351, i32 0, i32 2
  store i32 %350, i32* %352, align 4
  br label %353

353:                                              ; preds = %346, %341
  %354 = load i64, i64* @NDTA_THRESH3, align 8
  %355 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %354
  %356 = load %struct.nlattr*, %struct.nlattr** %355, align 8
  %357 = icmp ne %struct.nlattr* %356, null
  br i1 %357, label %358, label %365

358:                                              ; preds = %353
  %359 = load i64, i64* @NDTA_THRESH3, align 8
  %360 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %359
  %361 = load %struct.nlattr*, %struct.nlattr** %360, align 8
  %362 = call i32 @nla_get_u32(%struct.nlattr* %361)
  %363 = load %struct.neigh_table*, %struct.neigh_table** %9, align 8
  %364 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %363, i32 0, i32 3
  store i32 %362, i32* %364, align 8
  br label %365

365:                                              ; preds = %358, %353
  %366 = load i64, i64* @NDTA_GC_INTERVAL, align 8
  %367 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %366
  %368 = load %struct.nlattr*, %struct.nlattr** %367, align 8
  %369 = icmp ne %struct.nlattr* %368, null
  br i1 %369, label %370, label %377

370:                                              ; preds = %365
  %371 = load i64, i64* @NDTA_GC_INTERVAL, align 8
  %372 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %371
  %373 = load %struct.nlattr*, %struct.nlattr** %372, align 8
  %374 = call i32 @nla_get_msecs(%struct.nlattr* %373)
  %375 = load %struct.neigh_table*, %struct.neigh_table** %9, align 8
  %376 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %375, i32 0, i32 4
  store i32 %374, i32* %376, align 4
  br label %377

377:                                              ; preds = %370, %365
  store i32 0, i32* %14, align 4
  br label %378

378:                                              ; preds = %377, %298, %328
  %379 = load %struct.neigh_table*, %struct.neigh_table** %9, align 8
  %380 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %379, i32 0, i32 5
  %381 = call i32 @write_unlock_bh(i32* %380)
  br label %382

382:                                              ; preds = %378, %44, %38
  %383 = load i32, i32* %14, align 4
  store i32 %383, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %384

384:                                              ; preds = %382, %298, %94
  %385 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %385)
  %386 = load i32, i32* %4, align 4
  ret i32 %386
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local %struct.ndtmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nla_strcmp(%struct.nlattr*, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.neigh_parms* @lookup_neigh_parms(%struct.neigh_table*, %struct.net*, i32) #1

declare dso_local i32 @NEIGH_VAR_SET(%struct.neigh_parms*, i32, i32) #1

declare dso_local i32 @SKB_TRUESIZE(i32) #1

declare dso_local i32 @nla_get_msecs(%struct.nlattr*) #1

declare dso_local i32 @neigh_rand_reach_time(i32) #1

declare dso_local i32 @NEIGH_VAR(%struct.neigh_parms*, i32) #1

declare dso_local i32 @call_netevent_notifiers(i32, %struct.neigh_parms*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @net_eq(%struct.net*, i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
