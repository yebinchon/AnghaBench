; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_route_input_slow.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_route_input_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_fib_res = type { i32, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { %struct.net_device*, i32 }
%struct.net_device = type { i32, i32 }
%struct.dn_route = type { i64, i64, i64, i64, i64, i32, %struct.TYPE_8__, %struct.TYPE_9__, %struct.neighbour*, i8*, i32* }
%struct.TYPE_8__ = type { i32, %struct.net_device*, i32, i32 }
%struct.TYPE_9__ = type { i64, i64, i32, i32, i64 }
%struct.neighbour = type { i32 }
%struct.dn_skb_cb = type { i64, i64, i32 }
%struct.dn_dev = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.flowidn = type { i64, i64, i32, i32, i32, i32 }
%struct.dn_neigh = type { i8* }

@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@__const.dn_route_input_slow.res = private unnamed_addr constant %struct.dn_fib_res { i32 128, %struct.TYPE_7__* null, i64 0 }, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOTUNIQ = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Bug in dn_route_input_slow() No output device\0A\00", align 1
@RTN_NAT = common dso_local global i32 0, align 4
@RTCF_DNAT = common dso_local global i32 0, align 4
@RTCF_NAT = common dso_local global i32 0, align 4
@RTCF_DOREDIRECT = common dso_local global i32 0, align 4
@RTCF_LOCAL = common dso_local global i32 0, align 4
@DN_RT_F_IE = common dso_local global i32 0, align 4
@dn_dst_ops = common dso_local global i32 0, align 4
@DST_OBSOLETE_NONE = common dso_local global i32 0, align 4
@DST_HOST = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@dn_rt_bug_out = common dso_local global i32 0, align 4
@dn_forward = common dso_local global i32 0, align 4
@dn_output = common dso_local global i32 0, align 4
@dn_nsp_rx = common dso_local global i32 0, align 4
@dst_discard = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @dn_route_input_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_route_input_slow(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.dn_route*, align 8
  %4 = alloca %struct.dn_skb_cb*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.dn_dev*, align 8
  %8 = alloca %struct.neighbour*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.flowidn, align 8
  %14 = alloca %struct.dn_fib_res, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  store %struct.dn_route* null, %struct.dn_route** %3, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %19 = call %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff* %18)
  store %struct.dn_skb_cb* %19, %struct.dn_skb_cb** %4, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %5, align 8
  store %struct.net_device* null, %struct.net_device** %6, align 8
  store %struct.neighbour* null, %struct.neighbour** %8, align 8
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %23 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %13, i32 0, i32 0
  %24 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %4, align 8
  %25 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %23, align 8
  %27 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %13, i32 0, i32 1
  %28 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %4, align 8
  %29 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %27, align 8
  %31 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %13, i32 0, i32 2
  %32 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %31, align 8
  %35 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %13, i32 0, i32 3
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %13, i32 0, i32 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load %struct.net_device*, %struct.net_device** %38, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %36, align 8
  %42 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %13, i32 0, i32 5
  %43 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  store i32 %43, i32* %42, align 4
  %44 = bitcast %struct.dn_fib_res* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 bitcast (%struct.dn_fib_res* @__const.dn_route_input_slow.res to i8*), i64 24, i1 false)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = call i32 @dev_hold(%struct.net_device* %47)
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.dn_dev* @rcu_dereference(i32 %51)
  store %struct.dn_dev* %52, %struct.dn_dev** %7, align 8
  %53 = icmp eq %struct.dn_dev* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %1
  br label %391

55:                                               ; preds = %1
  %56 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %13, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %391

60:                                               ; preds = %55
  %61 = load i32, i32* @ENOTUNIQ, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %15, align 4
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %4, align 8
  %65 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @dn_dev_islocal(%struct.net_device* %63, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %391

70:                                               ; preds = %60
  %71 = call i32 @dn_fib_lookup(%struct.flowidn* %13, %struct.dn_fib_res* %14)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %70
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* @ESRCH, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %391

80:                                               ; preds = %74
  %81 = load %struct.net_device*, %struct.net_device** %5, align 8
  %82 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %4, align 8
  %83 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @dn_dev_islocal(%struct.net_device* %81, i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %80
  br label %393

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.dn_fib_res, %struct.dn_fib_res* %14, i32 0, i32 0
  store i32 130, i32* %89, align 8
  br label %140

90:                                               ; preds = %70
  %91 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %13, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i8*
  store i8* %93, i8** %17, align 8
  store i32 1, i32* %16, align 4
  %94 = call %struct.net_device* @DN_FIB_RES_DEV(%struct.dn_fib_res* byval(%struct.dn_fib_res) align 8 %14)
  store %struct.net_device* %94, %struct.net_device** %6, align 8
  %95 = load %struct.net_device*, %struct.net_device** %6, align 8
  %96 = icmp eq %struct.net_device* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = call i32 @net_crit_ratelimited(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %393

99:                                               ; preds = %90
  %100 = load %struct.net_device*, %struct.net_device** %6, align 8
  %101 = call i32 @dev_hold(%struct.net_device* %100)
  %102 = getelementptr inbounds %struct.dn_fib_res, %struct.dn_fib_res* %14, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %13, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to i8*
  store i8* %108, i8** %17, align 8
  br label %109

109:                                              ; preds = %105, %99
  %110 = call i8* @DN_FIB_RES_GW(%struct.dn_fib_res* byval(%struct.dn_fib_res) align 8 %14)
  store i8* %110, i8** %11, align 8
  %111 = getelementptr inbounds %struct.dn_fib_res, %struct.dn_fib_res* %14, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @RTN_NAT, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %136

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %13, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @dn_fib_rules_map_destination(i64 %117, %struct.dn_fib_res* %14)
  %119 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %13, i32 0, i32 0
  store i64 %118, i64* %119, align 8
  %120 = call i32 @dn_fib_res_put(%struct.dn_fib_res* %14)
  store i32 0, i32* %16, align 4
  %121 = call i32 @dn_fib_lookup(%struct.flowidn* %13, %struct.dn_fib_res* %14)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  br label %393

124:                                              ; preds = %115
  store i32 1, i32* %16, align 4
  %125 = getelementptr inbounds %struct.dn_fib_res, %struct.dn_fib_res* %14, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 129
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %393

129:                                              ; preds = %124
  %130 = load i32, i32* @RTCF_DNAT, align 4
  %131 = load i32, i32* %10, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %10, align 4
  %133 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %13, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to i8*
  store i8* %135, i8** %11, align 8
  br label %136

136:                                              ; preds = %129, %109
  %137 = load i8*, i8** %17, align 8
  %138 = ptrtoint i8* %137 to i64
  %139 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %13, i32 0, i32 1
  store i64 %138, i64* %139, align 8
  br label %140

140:                                              ; preds = %136, %88
  %141 = getelementptr inbounds %struct.dn_fib_res, %struct.dn_fib_res* %14, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  switch i32 %142, label %222 [
    i32 129, label %143
    i32 131, label %177
    i32 128, label %177
    i32 130, label %178
  ]

143:                                              ; preds = %140
  %144 = load %struct.dn_dev*, %struct.dn_dev** %7, align 8
  %145 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %393

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.dn_fib_res, %struct.dn_fib_res* %14, i32 0, i32 1
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp sgt i32 %154, 1
  br i1 %155, label %156, label %162

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %13, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = call i32 @dn_fib_select_multipath(%struct.flowidn* %13, %struct.dn_fib_res* %14)
  br label %162

162:                                              ; preds = %160, %156, %150
  %163 = load %struct.net_device*, %struct.net_device** %6, align 8
  %164 = load %struct.net_device*, %struct.net_device** %5, align 8
  %165 = icmp eq %struct.net_device* %163, %164
  br i1 %165, label %166, label %175

166:                                              ; preds = %162
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* @RTCF_NAT, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %166
  %172 = load i32, i32* @RTCF_DOREDIRECT, align 4
  %173 = load i32, i32* %10, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %10, align 4
  br label %175

175:                                              ; preds = %171, %166, %162
  %176 = call i8* @DN_FIB_RES_PREFSRC(%struct.dn_fib_res* byval(%struct.dn_fib_res) align 8 %14)
  store i8* %176, i8** %12, align 8
  br label %177

177:                                              ; preds = %140, %140, %175
  br label %223

178:                                              ; preds = %140
  %179 = load i32, i32* @RTCF_LOCAL, align 4
  %180 = load i32, i32* %10, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %10, align 4
  %182 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %4, align 8
  %183 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %13, i32 0, i32 1
  store i64 %184, i64* %185, align 8
  %186 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %4, align 8
  %187 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %13, i32 0, i32 0
  store i64 %188, i64* %189, align 8
  %190 = load i8*, i8** %11, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %193

192:                                              ; preds = %178
  br label %224

193:                                              ; preds = %178
  %194 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %4, align 8
  %195 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @DN_RT_F_IE, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %193
  %201 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %4, align 8
  %202 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = inttoptr i64 %203 to i8*
  store i8* %204, i8** %11, align 8
  br label %224

205:                                              ; preds = %193
  %206 = load %struct.dn_dev*, %struct.dn_dev** %7, align 8
  %207 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call %struct.neighbour* @neigh_clone(i32 %208)
  store %struct.neighbour* %209, %struct.neighbour** %8, align 8
  %210 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %211 = icmp ne %struct.neighbour* %210, null
  br i1 %211, label %212, label %217

212:                                              ; preds = %205
  %213 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %214 = bitcast %struct.neighbour* %213 to %struct.dn_neigh*
  %215 = getelementptr inbounds %struct.dn_neigh, %struct.dn_neigh* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  store i8* %216, i8** %11, align 8
  br label %224

217:                                              ; preds = %205
  %218 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %4, align 8
  %219 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = inttoptr i64 %220 to i8*
  store i8* %221, i8** %11, align 8
  br label %224

222:                                              ; preds = %140
  br label %393

223:                                              ; preds = %177
  br label %224

224:                                              ; preds = %223, %217, %212, %200, %192
  %225 = load %struct.net_device*, %struct.net_device** %6, align 8
  %226 = load i32, i32* @DST_OBSOLETE_NONE, align 4
  %227 = load i32, i32* @DST_HOST, align 4
  %228 = call %struct.dn_route* @dst_alloc(i32* @dn_dst_ops, %struct.net_device* %225, i32 1, i32 %226, i32 %227)
  store %struct.dn_route* %228, %struct.dn_route** %3, align 8
  %229 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %230 = icmp eq %struct.dn_route* %229, null
  br i1 %230, label %231, label %232

231:                                              ; preds = %224
  br label %396

232:                                              ; preds = %224
  %233 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %234 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %233, i32 0, i32 10
  store i32* null, i32** %234, align 8
  %235 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %236 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %235, i32 0, i32 7
  %237 = call i32 @memset(%struct.TYPE_9__* %236, i32 0, i32 32)
  %238 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %13, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %241 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %240, i32 0, i32 0
  store i64 %239, i64* %241, align 8
  %242 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %13, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %245 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %244, i32 0, i32 1
  store i64 %243, i64* %245, align 8
  %246 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %13, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %249 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %248, i32 0, i32 2
  store i64 %247, i64* %249, align 8
  %250 = load i8*, i8** %11, align 8
  %251 = icmp ne i8* %250, null
  br i1 %251, label %252, label %257

252:                                              ; preds = %232
  %253 = load i8*, i8** %11, align 8
  %254 = ptrtoint i8* %253 to i64
  %255 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %256 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %255, i32 0, i32 2
  store i64 %254, i64* %256, align 8
  br label %257

257:                                              ; preds = %252, %232
  %258 = load i8*, i8** %12, align 8
  %259 = icmp ne i8* %258, null
  br i1 %259, label %260, label %262

260:                                              ; preds = %257
  %261 = load i8*, i8** %12, align 8
  br label %267

262:                                              ; preds = %257
  %263 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %264 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = inttoptr i64 %265 to i8*
  br label %267

267:                                              ; preds = %262, %260
  %268 = phi i8* [ %261, %260 ], [ %266, %262 ]
  %269 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %270 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %269, i32 0, i32 9
  store i8* %268, i8** %270, align 8
  %271 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %13, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %274 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %273, i32 0, i32 3
  store i64 %272, i64* %274, align 8
  %275 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %13, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %278 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %277, i32 0, i32 4
  store i64 %276, i64* %278, align 8
  %279 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %4, align 8
  %280 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %283 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %282, i32 0, i32 7
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 0
  store i64 %281, i64* %284, align 8
  %285 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %4, align 8
  %286 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %289 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %288, i32 0, i32 7
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 1
  store i64 %287, i64* %290, align 8
  %291 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %292 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %291, i32 0, i32 7
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 4
  store i64 0, i64* %293, align 8
  %294 = load %struct.net_device*, %struct.net_device** %5, align 8
  %295 = getelementptr inbounds %struct.net_device, %struct.net_device* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %298 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %297, i32 0, i32 7
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 3
  store i32 %296, i32* %299, align 4
  %300 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %13, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %303 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %302, i32 0, i32 7
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 2
  store i32 %301, i32* %304, align 8
  %305 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %306 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %307 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %306, i32 0, i32 8
  store %struct.neighbour* %305, %struct.neighbour** %307, align 8
  %308 = load i32, i32* @jiffies, align 4
  %309 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %310 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %309, i32 0, i32 6
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 3
  store i32 %308, i32* %311, align 4
  %312 = load i32, i32* @dn_rt_bug_out, align 4
  %313 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %314 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %313, i32 0, i32 6
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 2
  store i32 %312, i32* %315, align 8
  %316 = getelementptr inbounds %struct.dn_fib_res, %struct.dn_fib_res* %14, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  switch i32 %317, label %339 [
    i32 129, label %318
    i32 130, label %323
    i32 128, label %340
    i32 131, label %340
  ]

318:                                              ; preds = %267
  %319 = load i32, i32* @dn_forward, align 4
  %320 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %321 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %320, i32 0, i32 6
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 0
  store i32 %319, i32* %322, align 8
  br label %345

323:                                              ; preds = %267
  %324 = load i32, i32* @dn_output, align 4
  %325 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %326 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %325, i32 0, i32 6
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 2
  store i32 %324, i32* %327, align 8
  %328 = load i32, i32* @dn_nsp_rx, align 4
  %329 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %330 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %329, i32 0, i32 6
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 0
  store i32 %328, i32* %331, align 8
  %332 = load %struct.net_device*, %struct.net_device** %5, align 8
  %333 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %334 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %333, i32 0, i32 6
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 1
  store %struct.net_device* %332, %struct.net_device** %335, align 8
  %336 = load i32, i32* @RTCF_LOCAL, align 4
  %337 = load i32, i32* %10, align 4
  %338 = or i32 %337, %336
  store i32 %338, i32* %10, align 4
  br label %345

339:                                              ; preds = %267
  br label %340

340:                                              ; preds = %267, %267, %339
  %341 = load i32, i32* @dst_discard, align 4
  %342 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %343 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %342, i32 0, i32 6
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 0
  store i32 %341, i32* %344, align 8
  br label %345

345:                                              ; preds = %340, %323, %318
  %346 = load i32, i32* %10, align 4
  %347 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %348 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %347, i32 0, i32 5
  store i32 %346, i32* %348, align 8
  %349 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %350 = call i32 @dn_rt_set_next_hop(%struct.dn_route* %349, %struct.dn_fib_res* %14)
  store i32 %350, i32* %15, align 4
  %351 = load i32, i32* %15, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %345
  br label %399

354:                                              ; preds = %345
  %355 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %356 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %355, i32 0, i32 7
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %360 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %359, i32 0, i32 7
  %361 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %360, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = call i32 @dn_hash(i64 %358, i64 %362)
  store i32 %363, i32* %9, align 4
  %364 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %365 = load i32, i32* %9, align 4
  %366 = call i32 @dn_insert_route(%struct.dn_route* %364, i32 %365, %struct.dn_route** %3)
  %367 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %368 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %369 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %368, i32 0, i32 6
  %370 = call i32 @skb_dst_set(%struct.sk_buff* %367, %struct.TYPE_8__* %369)
  br label %371

371:                                              ; preds = %399, %396, %393, %354
  %372 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %373 = icmp ne %struct.neighbour* %372, null
  br i1 %373, label %374, label %377

374:                                              ; preds = %371
  %375 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %376 = call i32 @neigh_release(%struct.neighbour* %375)
  br label %377

377:                                              ; preds = %374, %371
  %378 = load i32, i32* %16, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %382

380:                                              ; preds = %377
  %381 = call i32 @dn_fib_res_put(%struct.dn_fib_res* %14)
  br label %382

382:                                              ; preds = %380, %377
  %383 = load %struct.net_device*, %struct.net_device** %5, align 8
  %384 = call i32 @dev_put(%struct.net_device* %383)
  %385 = load %struct.net_device*, %struct.net_device** %6, align 8
  %386 = icmp ne %struct.net_device* %385, null
  br i1 %386, label %387, label %390

387:                                              ; preds = %382
  %388 = load %struct.net_device*, %struct.net_device** %6, align 8
  %389 = call i32 @dev_put(%struct.net_device* %388)
  br label %390

390:                                              ; preds = %387, %382
  br label %391

391:                                              ; preds = %390, %79, %69, %59, %54
  %392 = load i32, i32* %15, align 4
  ret i32 %392

393:                                              ; preds = %222, %149, %128, %123, %97, %87
  %394 = load i32, i32* @EINVAL, align 4
  %395 = sub nsw i32 0, %394
  store i32 %395, i32* %15, align 4
  br label %371

396:                                              ; preds = %231
  %397 = load i32, i32* @ENOBUFS, align 4
  %398 = sub nsw i32 0, %397
  store i32 %398, i32* %15, align 4
  br label %371

399:                                              ; preds = %353
  %400 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %401 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %400, i32 0, i32 6
  %402 = call i32 @dst_release_immediate(%struct.TYPE_8__* %401)
  br label %371
}

declare dso_local %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local %struct.dn_dev* @rcu_dereference(i32) #1

declare dso_local i64 @dn_dev_islocal(%struct.net_device*, i64) #1

declare dso_local i32 @dn_fib_lookup(%struct.flowidn*, %struct.dn_fib_res*) #1

declare dso_local %struct.net_device* @DN_FIB_RES_DEV(%struct.dn_fib_res* byval(%struct.dn_fib_res) align 8) #1

declare dso_local i32 @net_crit_ratelimited(i8*) #1

declare dso_local i8* @DN_FIB_RES_GW(%struct.dn_fib_res* byval(%struct.dn_fib_res) align 8) #1

declare dso_local i64 @dn_fib_rules_map_destination(i64, %struct.dn_fib_res*) #1

declare dso_local i32 @dn_fib_res_put(%struct.dn_fib_res*) #1

declare dso_local i32 @dn_fib_select_multipath(%struct.flowidn*, %struct.dn_fib_res*) #1

declare dso_local i8* @DN_FIB_RES_PREFSRC(%struct.dn_fib_res* byval(%struct.dn_fib_res) align 8) #1

declare dso_local %struct.neighbour* @neigh_clone(i32) #1

declare dso_local %struct.dn_route* @dst_alloc(i32*, %struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @dn_rt_set_next_hop(%struct.dn_route*, %struct.dn_fib_res*) #1

declare dso_local i32 @dn_hash(i64, i64) #1

declare dso_local i32 @dn_insert_route(%struct.dn_route*, i32, %struct.dn_route**) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.TYPE_8__*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @dst_release_immediate(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
