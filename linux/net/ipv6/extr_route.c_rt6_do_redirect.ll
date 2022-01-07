; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_do_redirect.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_do_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.netevent_redirect = type { %struct.neighbour*, i32*, i32*, i32* }
%struct.neighbour = type { i64 }
%struct.rt6_info = type { i32, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { i32 }
%struct.fib6_result = type { %struct.TYPE_5__*, i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i64, i64 }
%struct.ndisc_options = type { i64 }
%struct.inet6_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.rd_msg = type { i32, i32, i32 }
%struct.fib6_nh_match_arg = type { i64, %struct.in6_addr*, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"rt6_do_redirect: packet too short\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"rt6_do_redirect: destination address is multicast\0A\00", align 1
@IPV6_ADDR_UNICAST = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"rt6_do_redirect: target address is not link-local unicast\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"rt6_redirect: invalid ND options\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"rt6_redirect: invalid link-layer address length\0A\00", align 1
@RTF_REJECT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [64 x i8] c"rt6_redirect: source isn't a valid nexthop for redirect target\0A\00", align 1
@nd_tbl = common dso_local global i32 0, align 4
@NUD_STALE = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_WEAK_OVERRIDE = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_OVERRIDE = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_OVERRIDE_ISROUTER = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_ISROUTER = common dso_local global i32 0, align 4
@NDISC_REDIRECT = common dso_local global i32 0, align 4
@fib6_nh_find_match = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@RTF_UP = common dso_local global i32 0, align 4
@RTF_DYNAMIC = common dso_local global i32 0, align 4
@RTF_CACHE = common dso_local global i32 0, align 4
@NETEVENT_REDIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*)* @rt6_do_redirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt6_do_redirect(%struct.dst_entry* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.netevent_redirect, align 8
  %8 = alloca %struct.rt6_info*, align 8
  %9 = alloca %struct.rt6_info*, align 8
  %10 = alloca %struct.fib6_result, align 8
  %11 = alloca %struct.ndisc_options, align 8
  %12 = alloca %struct.inet6_dev*, align 8
  %13 = alloca %struct.neighbour*, align 8
  %14 = alloca %struct.rd_msg*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.fib6_nh_match_arg, align 8
  store %struct.dst_entry* %0, %struct.dst_entry** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  store %struct.rt6_info* null, %struct.rt6_info** %9, align 8
  %19 = bitcast %struct.fib6_result* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 24, i1 false)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = call i32 @skb_tail_pointer(%struct.sk_buff* %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call i32 @skb_transport_header(%struct.sk_buff* %22)
  %24 = sub nsw i32 %21, %23
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = sext i32 %25 to i64
  %27 = sub i64 %26, 12
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %275

33:                                               ; preds = %3
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call i64 @icmp6_hdr(%struct.sk_buff* %34)
  %36 = inttoptr i64 %35 to %struct.rd_msg*
  store %struct.rd_msg* %36, %struct.rd_msg** %14, align 8
  %37 = load %struct.rd_msg*, %struct.rd_msg** %14, align 8
  %38 = getelementptr inbounds %struct.rd_msg, %struct.rd_msg* %37, i32 0, i32 0
  %39 = call i64 @ipv6_addr_is_multicast(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %275

43:                                               ; preds = %33
  store i32 0, i32* %16, align 4
  %44 = load %struct.rd_msg*, %struct.rd_msg** %14, align 8
  %45 = getelementptr inbounds %struct.rd_msg, %struct.rd_msg* %44, i32 0, i32 0
  %46 = load %struct.rd_msg*, %struct.rd_msg** %14, align 8
  %47 = getelementptr inbounds %struct.rd_msg, %struct.rd_msg* %46, i32 0, i32 1
  %48 = call i64 @ipv6_addr_equal(i32* %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 1, i32* %16, align 4
  br label %62

51:                                               ; preds = %43
  %52 = load %struct.rd_msg*, %struct.rd_msg** %14, align 8
  %53 = getelementptr inbounds %struct.rd_msg, %struct.rd_msg* %52, i32 0, i32 1
  %54 = call i32 @ipv6_addr_type(i32* %53)
  %55 = load i32, i32* @IPV6_ADDR_UNICAST, align 4
  %56 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %57 = or i32 %55, %56
  %58 = icmp ne i32 %54, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  br label %275

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %50
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.inet6_dev* @__in6_dev_get(i32 %65)
  store %struct.inet6_dev* %66, %struct.inet6_dev** %12, align 8
  %67 = load %struct.inet6_dev*, %struct.inet6_dev** %12, align 8
  %68 = icmp ne %struct.inet6_dev* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %62
  br label %275

70:                                               ; preds = %62
  %71 = load %struct.inet6_dev*, %struct.inet6_dev** %12, align 8
  %72 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load %struct.inet6_dev*, %struct.inet6_dev** %12, align 8
  %78 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %76, %70
  br label %275

83:                                               ; preds = %76
  %84 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.rd_msg*, %struct.rd_msg** %14, align 8
  %88 = getelementptr inbounds %struct.rd_msg, %struct.rd_msg* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @ndisc_parse_options(i32 %86, i32 %89, i32 %90, %struct.ndisc_options* %11)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %83
  %94 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %275

95:                                               ; preds = %83
  store i32* null, i32** %17, align 8
  %96 = getelementptr inbounds %struct.ndisc_options, %struct.ndisc_options* %11, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.ndisc_options, %struct.ndisc_options* %11, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32* @ndisc_opt_addr_data(i64 %101, i32 %104)
  store i32* %105, i32** %17, align 8
  %106 = load i32*, i32** %17, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %99
  %109 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  br label %275

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110, %95
  %112 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %113 = bitcast %struct.dst_entry* %112 to %struct.rt6_info*
  store %struct.rt6_info* %113, %struct.rt6_info** %8, align 8
  %114 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %115 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @RTF_REJECT, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %111
  %121 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0))
  br label %275

122:                                              ; preds = %111
  %123 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %124 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %123, i32 0, i32 1
  %125 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %126 = call %struct.TYPE_6__* @ipv6_hdr(%struct.sk_buff* %125)
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = call i32 @dst_confirm_neigh(i32* %124, i32* %127)
  %129 = load %struct.rd_msg*, %struct.rd_msg** %14, align 8
  %130 = getelementptr inbounds %struct.rd_msg, %struct.rd_msg* %129, i32 0, i32 1
  %131 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call %struct.neighbour* @__neigh_lookup(i32* @nd_tbl, i32* %130, i32 %133, i32 1)
  store %struct.neighbour* %134, %struct.neighbour** %13, align 8
  %135 = load %struct.neighbour*, %struct.neighbour** %13, align 8
  %136 = icmp ne %struct.neighbour* %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %122
  br label %275

138:                                              ; preds = %122
  %139 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %140 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.neighbour*, %struct.neighbour** %13, align 8
  %143 = load i32*, i32** %17, align 8
  %144 = load i32, i32* @NUD_STALE, align 4
  %145 = load i32, i32* @NEIGH_UPDATE_F_WEAK_OVERRIDE, align 4
  %146 = load i32, i32* @NEIGH_UPDATE_F_OVERRIDE, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* %16, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %138
  br label %155

151:                                              ; preds = %138
  %152 = load i32, i32* @NEIGH_UPDATE_F_OVERRIDE_ISROUTER, align 4
  %153 = load i32, i32* @NEIGH_UPDATE_F_ISROUTER, align 4
  %154 = or i32 %152, %153
  br label %155

155:                                              ; preds = %151, %150
  %156 = phi i32 [ 0, %150 ], [ %154, %151 ]
  %157 = or i32 %147, %156
  %158 = load i32, i32* @NDISC_REDIRECT, align 4
  %159 = call i32 @ndisc_update(i32 %141, %struct.neighbour* %142, i32* %143, i32 %144, i32 %157, i32 %158, %struct.ndisc_options* %11)
  %160 = call i32 (...) @rcu_read_lock()
  %161 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %162 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = call %struct.TYPE_5__* @rcu_dereference(i32 %163)
  %165 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %10, i32 0, i32 0
  store %struct.TYPE_5__* %164, %struct.TYPE_5__** %165, align 8
  %166 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %10, i32 0, i32 0
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = icmp ne %struct.TYPE_5__* %167, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %155
  br label %271

170:                                              ; preds = %155
  %171 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %10, i32 0, i32 0
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %199

176:                                              ; preds = %170
  %177 = getelementptr inbounds %struct.fib6_nh_match_arg, %struct.fib6_nh_match_arg* %18, i32 0, i32 0
  store i64 0, i64* %177, align 8
  %178 = getelementptr inbounds %struct.fib6_nh_match_arg, %struct.fib6_nh_match_arg* %18, i32 0, i32 1
  %179 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %180 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %179, i32 0, i32 2
  store %struct.in6_addr* %180, %struct.in6_addr** %178, align 8
  %181 = getelementptr inbounds %struct.fib6_nh_match_arg, %struct.fib6_nh_match_arg* %18, i32 0, i32 2
  %182 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %183 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %181, align 8
  %185 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %10, i32 0, i32 0
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = load i32, i32* @fib6_nh_find_match, align 4
  %190 = call i32 @nexthop_for_each_fib6_nh(i64 %188, i32 %189, %struct.fib6_nh_match_arg* %18)
  %191 = getelementptr inbounds %struct.fib6_nh_match_arg, %struct.fib6_nh_match_arg* %18, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %176
  br label %271

195:                                              ; preds = %176
  %196 = getelementptr inbounds %struct.fib6_nh_match_arg, %struct.fib6_nh_match_arg* %18, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %10, i32 0, i32 3
  store i64 %197, i64* %198, align 8
  br label %205

199:                                              ; preds = %170
  %200 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %10, i32 0, i32 0
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %10, i32 0, i32 3
  store i64 %203, i64* %204, align 8
  br label %205

205:                                              ; preds = %199, %195
  %206 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %10, i32 0, i32 0
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %10, i32 0, i32 2
  store i32 %209, i32* %210, align 4
  %211 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %10, i32 0, i32 0
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %10, i32 0, i32 1
  store i32 %214, i32* %215, align 8
  %216 = load %struct.rd_msg*, %struct.rd_msg** %14, align 8
  %217 = getelementptr inbounds %struct.rd_msg, %struct.rd_msg* %216, i32 0, i32 0
  %218 = call %struct.rt6_info* @ip6_rt_cache_alloc(%struct.fib6_result* %10, i32* %217, i32* null)
  store %struct.rt6_info* %218, %struct.rt6_info** %9, align 8
  %219 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %220 = icmp ne %struct.rt6_info* %219, null
  br i1 %220, label %222, label %221

221:                                              ; preds = %205
  br label %271

222:                                              ; preds = %205
  %223 = load i32, i32* @RTF_GATEWAY, align 4
  %224 = load i32, i32* @RTF_UP, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* @RTF_DYNAMIC, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @RTF_CACHE, align 4
  %229 = or i32 %227, %228
  %230 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %231 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* %16, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %222
  %235 = load i32, i32* @RTF_GATEWAY, align 4
  %236 = xor i32 %235, -1
  %237 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %238 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = and i32 %239, %236
  store i32 %240, i32* %238, align 4
  br label %241

241:                                              ; preds = %234, %222
  %242 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %243 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %242, i32 0, i32 2
  %244 = load %struct.neighbour*, %struct.neighbour** %13, align 8
  %245 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = inttoptr i64 %246 to %struct.in6_addr*
  %248 = bitcast %struct.in6_addr* %243 to i8*
  %249 = bitcast %struct.in6_addr* %247 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %248, i8* align 4 %249, i64 4, i1 false)
  %250 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %251 = call i64 @rt6_insert_exception(%struct.rt6_info* %250, %struct.fib6_result* %10)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %241
  %254 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %255 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %254, i32 0, i32 1
  %256 = call i32 @dst_release_immediate(i32* %255)
  br label %271

257:                                              ; preds = %241
  %258 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %259 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.netevent_redirect, %struct.netevent_redirect* %7, i32 0, i32 3
  store i32* %259, i32** %260, align 8
  %261 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %262 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.netevent_redirect, %struct.netevent_redirect* %7, i32 0, i32 2
  store i32* %262, i32** %263, align 8
  %264 = load %struct.rd_msg*, %struct.rd_msg** %14, align 8
  %265 = getelementptr inbounds %struct.rd_msg, %struct.rd_msg* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.netevent_redirect, %struct.netevent_redirect* %7, i32 0, i32 1
  store i32* %265, i32** %266, align 8
  %267 = load %struct.neighbour*, %struct.neighbour** %13, align 8
  %268 = getelementptr inbounds %struct.netevent_redirect, %struct.netevent_redirect* %7, i32 0, i32 0
  store %struct.neighbour* %267, %struct.neighbour** %268, align 8
  %269 = load i32, i32* @NETEVENT_REDIRECT, align 4
  %270 = call i32 @call_netevent_notifiers(i32 %269, %struct.netevent_redirect* %7)
  br label %271

271:                                              ; preds = %257, %253, %221, %194, %169
  %272 = call i32 (...) @rcu_read_unlock()
  %273 = load %struct.neighbour*, %struct.neighbour** %13, align 8
  %274 = call i32 @neigh_release(%struct.neighbour* %273)
  br label %275

275:                                              ; preds = %271, %137, %120, %108, %93, %82, %69, %59, %41, %31
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #2

declare dso_local i32 @skb_transport_header(%struct.sk_buff*) #2

declare dso_local i32 @net_dbg_ratelimited(i8*) #2

declare dso_local i64 @icmp6_hdr(%struct.sk_buff*) #2

declare dso_local i64 @ipv6_addr_is_multicast(i32*) #2

declare dso_local i64 @ipv6_addr_equal(i32*, i32*) #2

declare dso_local i32 @ipv6_addr_type(i32*) #2

declare dso_local %struct.inet6_dev* @__in6_dev_get(i32) #2

declare dso_local i32 @ndisc_parse_options(i32, i32, i32, %struct.ndisc_options*) #2

declare dso_local i32* @ndisc_opt_addr_data(i64, i32) #2

declare dso_local i32 @dst_confirm_neigh(i32*, i32*) #2

declare dso_local %struct.TYPE_6__* @ipv6_hdr(%struct.sk_buff*) #2

declare dso_local %struct.neighbour* @__neigh_lookup(i32*, i32*, i32, i32) #2

declare dso_local i32 @ndisc_update(i32, %struct.neighbour*, i32*, i32, i32, i32, %struct.ndisc_options*) #2

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local %struct.TYPE_5__* @rcu_dereference(i32) #2

declare dso_local i32 @nexthop_for_each_fib6_nh(i64, i32, %struct.fib6_nh_match_arg*) #2

declare dso_local %struct.rt6_info* @ip6_rt_cache_alloc(%struct.fib6_result*, i32*, i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @rt6_insert_exception(%struct.rt6_info*, %struct.fib6_result*) #2

declare dso_local i32 @dst_release_immediate(i32*) #2

declare dso_local i32 @call_netevent_notifiers(i32, %struct.netevent_redirect*) #2

declare dso_local i32 @rcu_read_unlock(...) #2

declare dso_local i32 @neigh_release(%struct.neighbour*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
