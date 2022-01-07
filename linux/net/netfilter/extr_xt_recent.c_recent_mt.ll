; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_recent.c_recent_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_recent.c_recent_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { i32, %struct.xt_recent_mtinfo_v1* }
%struct.xt_recent_mtinfo_v1 = type { i32, i64, i32, i64, i32, i32 }
%struct.net = type { i32 }
%struct.recent_net = type { i32 }
%struct.recent_table = type { i32 }
%struct.recent_entry = type { i32, i64, i32* }
%union.nf_inet_addr = type { i32 }
%struct.iphdr = type { i64, i32, i32 }
%struct.ipv6hdr = type { i64, i32, i32 }

@NFPROTO_IPV4 = common dso_local global i64 0, align 8
@XT_RECENT_DEST = common dso_local global i64 0, align 8
@recent_lock = common dso_local global i32 0, align 4
@XT_RECENT_TTL = common dso_local global i32 0, align 4
@XT_RECENT_SET = common dso_local global i32 0, align 4
@XT_RECENT_REMOVE = common dso_local global i32 0, align 4
@XT_RECENT_CHECK = common dso_local global i32 0, align 4
@XT_RECENT_UPDATE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@XT_RECENT_REAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @recent_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recent_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.recent_net*, align 8
  %7 = alloca %struct.xt_recent_mtinfo_v1*, align 8
  %8 = alloca %struct.recent_table*, align 8
  %9 = alloca %struct.recent_entry*, align 8
  %10 = alloca %union.nf_inet_addr, align 4
  %11 = alloca %union.nf_inet_addr, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.iphdr*, align 8
  %15 = alloca %struct.ipv6hdr*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %19 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %20 = call %struct.net* @xt_net(%struct.xt_action_param* %19)
  store %struct.net* %20, %struct.net** %5, align 8
  %21 = load %struct.net*, %struct.net** %5, align 8
  %22 = call %struct.recent_net* @recent_pernet(%struct.net* %21)
  store %struct.recent_net* %22, %struct.recent_net** %6, align 8
  %23 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %24 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %23, i32 0, i32 1
  %25 = load %struct.xt_recent_mtinfo_v1*, %struct.xt_recent_mtinfo_v1** %24, align 8
  store %struct.xt_recent_mtinfo_v1* %25, %struct.xt_recent_mtinfo_v1** %7, align 8
  %26 = bitcast %union.nf_inet_addr* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 4, i1 false)
  %27 = load %struct.xt_recent_mtinfo_v1*, %struct.xt_recent_mtinfo_v1** %7, align 8
  %28 = getelementptr inbounds %struct.xt_recent_mtinfo_v1, %struct.xt_recent_mtinfo_v1* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %13, align 4
  %30 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %31 = call i64 @xt_family(%struct.xt_action_param* %30)
  %32 = load i64, i64* @NFPROTO_IPV4, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %2
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %35)
  store %struct.iphdr* %36, %struct.iphdr** %14, align 8
  %37 = load %struct.xt_recent_mtinfo_v1*, %struct.xt_recent_mtinfo_v1** %7, align 8
  %38 = getelementptr inbounds %struct.xt_recent_mtinfo_v1, %struct.xt_recent_mtinfo_v1* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @XT_RECENT_DEST, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %44 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = bitcast %union.nf_inet_addr* %10 to i32*
  store i32 %45, i32* %46, align 4
  br label %52

47:                                               ; preds = %34
  %48 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %49 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = bitcast %union.nf_inet_addr* %10 to i32*
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %54 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %12, align 8
  br label %78

56:                                               ; preds = %2
  %57 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %58 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %57)
  store %struct.ipv6hdr* %58, %struct.ipv6hdr** %15, align 8
  %59 = load %struct.xt_recent_mtinfo_v1*, %struct.xt_recent_mtinfo_v1** %7, align 8
  %60 = getelementptr inbounds %struct.xt_recent_mtinfo_v1, %struct.xt_recent_mtinfo_v1* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @XT_RECENT_DEST, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = bitcast %union.nf_inet_addr* %10 to i32*
  %66 = load %struct.ipv6hdr*, %struct.ipv6hdr** %15, align 8
  %67 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %66, i32 0, i32 2
  %68 = call i32 @memcpy(i32* %65, i32* %67, i32 4)
  br label %74

69:                                               ; preds = %56
  %70 = bitcast %union.nf_inet_addr* %10 to i32*
  %71 = load %struct.ipv6hdr*, %struct.ipv6hdr** %15, align 8
  %72 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %71, i32 0, i32 1
  %73 = call i32 @memcpy(i32* %70, i32* %72, i32 4)
  br label %74

74:                                               ; preds = %69, %64
  %75 = load %struct.ipv6hdr*, %struct.ipv6hdr** %15, align 8
  %76 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %12, align 8
  br label %78

78:                                               ; preds = %74, %52
  %79 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %80 = call i32* @xt_out(%struct.xt_action_param* %79)
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %98

82:                                               ; preds = %78
  %83 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load %struct.net*, %struct.net** %5, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @sock_net(i32 %91)
  %93 = call i32 @net_eq(%struct.net* %88, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %87, %82
  %96 = load i64, i64* %12, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %12, align 8
  br label %98

98:                                               ; preds = %95, %87, %78
  %99 = call i32 @spin_lock_bh(i32* @recent_lock)
  %100 = load %struct.recent_net*, %struct.recent_net** %6, align 8
  %101 = load %struct.xt_recent_mtinfo_v1*, %struct.xt_recent_mtinfo_v1** %7, align 8
  %102 = getelementptr inbounds %struct.xt_recent_mtinfo_v1, %struct.xt_recent_mtinfo_v1* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = call %struct.recent_table* @recent_table_lookup(%struct.recent_net* %100, i32 %103)
  store %struct.recent_table* %104, %struct.recent_table** %8, align 8
  %105 = load %struct.recent_table*, %struct.recent_table** %8, align 8
  %106 = getelementptr inbounds %struct.recent_table, %struct.recent_table* %105, i32 0, i32 0
  %107 = call i32 @nf_inet_addr_mask(%union.nf_inet_addr* %10, %union.nf_inet_addr* %11, i32* %106)
  %108 = load %struct.recent_table*, %struct.recent_table** %8, align 8
  %109 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %110 = call i64 @xt_family(%struct.xt_action_param* %109)
  %111 = load %struct.xt_recent_mtinfo_v1*, %struct.xt_recent_mtinfo_v1** %7, align 8
  %112 = getelementptr inbounds %struct.xt_recent_mtinfo_v1, %struct.xt_recent_mtinfo_v1* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @XT_RECENT_TTL, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %98
  %118 = load i64, i64* %12, align 8
  br label %120

119:                                              ; preds = %98
  br label %120

120:                                              ; preds = %119, %117
  %121 = phi i64 [ %118, %117 ], [ 0, %119 ]
  %122 = call %struct.recent_entry* @recent_entry_lookup(%struct.recent_table* %108, %union.nf_inet_addr* %11, i64 %110, i64 %121)
  store %struct.recent_entry* %122, %struct.recent_entry** %9, align 8
  %123 = load %struct.recent_entry*, %struct.recent_entry** %9, align 8
  %124 = icmp eq %struct.recent_entry* %123, null
  br i1 %124, label %125, label %149

125:                                              ; preds = %120
  %126 = load %struct.xt_recent_mtinfo_v1*, %struct.xt_recent_mtinfo_v1** %7, align 8
  %127 = getelementptr inbounds %struct.xt_recent_mtinfo_v1, %struct.xt_recent_mtinfo_v1* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @XT_RECENT_SET, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %125
  br label %276

133:                                              ; preds = %125
  %134 = load %struct.recent_table*, %struct.recent_table** %8, align 8
  %135 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %136 = call i64 @xt_family(%struct.xt_action_param* %135)
  %137 = load i64, i64* %12, align 8
  %138 = call %struct.recent_entry* @recent_entry_init(%struct.recent_table* %134, %union.nf_inet_addr* %11, i64 %136, i64 %137)
  store %struct.recent_entry* %138, %struct.recent_entry** %9, align 8
  %139 = load %struct.recent_entry*, %struct.recent_entry** %9, align 8
  %140 = icmp eq %struct.recent_entry* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %133
  %142 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %143 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %142, i32 0, i32 0
  store i32 1, i32* %143, align 8
  br label %144

144:                                              ; preds = %141, %133
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  store i32 %148, i32* %13, align 4
  br label %276

149:                                              ; preds = %120
  %150 = load %struct.xt_recent_mtinfo_v1*, %struct.xt_recent_mtinfo_v1** %7, align 8
  %151 = getelementptr inbounds %struct.xt_recent_mtinfo_v1, %struct.xt_recent_mtinfo_v1* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @XT_RECENT_SET, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %149
  %157 = load i32, i32* %13, align 4
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  store i32 %160, i32* %13, align 4
  br label %251

161:                                              ; preds = %149
  %162 = load %struct.xt_recent_mtinfo_v1*, %struct.xt_recent_mtinfo_v1** %7, align 8
  %163 = getelementptr inbounds %struct.xt_recent_mtinfo_v1, %struct.xt_recent_mtinfo_v1* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @XT_RECENT_REMOVE, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %161
  %169 = load %struct.recent_table*, %struct.recent_table** %8, align 8
  %170 = load %struct.recent_entry*, %struct.recent_entry** %9, align 8
  %171 = call i32 @recent_entry_remove(%struct.recent_table* %169, %struct.recent_entry* %170)
  %172 = load i32, i32* %13, align 4
  %173 = icmp ne i32 %172, 0
  %174 = xor i1 %173, true
  %175 = zext i1 %174 to i32
  store i32 %175, i32* %13, align 4
  br label %250

176:                                              ; preds = %161
  %177 = load %struct.xt_recent_mtinfo_v1*, %struct.xt_recent_mtinfo_v1** %7, align 8
  %178 = getelementptr inbounds %struct.xt_recent_mtinfo_v1, %struct.xt_recent_mtinfo_v1* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @XT_RECENT_CHECK, align 4
  %181 = load i32, i32* @XT_RECENT_UPDATE, align 4
  %182 = or i32 %180, %181
  %183 = and i32 %179, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %249

185:                                              ; preds = %176
  %186 = load i64, i64* @jiffies, align 8
  %187 = load %struct.xt_recent_mtinfo_v1*, %struct.xt_recent_mtinfo_v1** %7, align 8
  %188 = getelementptr inbounds %struct.xt_recent_mtinfo_v1, %struct.xt_recent_mtinfo_v1* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @HZ, align 8
  %191 = mul i64 %189, %190
  %192 = sub i64 %186, %191
  store i64 %192, i64* %16, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %193

193:                                              ; preds = %234, %185
  %194 = load i32, i32* %17, align 4
  %195 = load %struct.recent_entry*, %struct.recent_entry** %9, align 8
  %196 = getelementptr inbounds %struct.recent_entry, %struct.recent_entry* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp ult i32 %194, %197
  br i1 %198, label %199, label %237

199:                                              ; preds = %193
  %200 = load %struct.xt_recent_mtinfo_v1*, %struct.xt_recent_mtinfo_v1** %7, align 8
  %201 = getelementptr inbounds %struct.xt_recent_mtinfo_v1, %struct.xt_recent_mtinfo_v1* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %216

204:                                              ; preds = %199
  %205 = load i64, i64* %16, align 8
  %206 = load %struct.recent_entry*, %struct.recent_entry** %9, align 8
  %207 = getelementptr inbounds %struct.recent_entry, %struct.recent_entry* %206, i32 0, i32 2
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %17, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = call i64 @time_after(i64 %205, i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %204
  br label %234

216:                                              ; preds = %204, %199
  %217 = load %struct.xt_recent_mtinfo_v1*, %struct.xt_recent_mtinfo_v1** %7, align 8
  %218 = getelementptr inbounds %struct.xt_recent_mtinfo_v1, %struct.xt_recent_mtinfo_v1* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %216
  %222 = load i32, i32* %18, align 4
  %223 = add i32 %222, 1
  store i32 %223, i32* %18, align 4
  %224 = load %struct.xt_recent_mtinfo_v1*, %struct.xt_recent_mtinfo_v1** %7, align 8
  %225 = getelementptr inbounds %struct.xt_recent_mtinfo_v1, %struct.xt_recent_mtinfo_v1* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = icmp uge i32 %223, %226
  br i1 %227, label %228, label %233

228:                                              ; preds = %221, %216
  %229 = load i32, i32* %13, align 4
  %230 = icmp ne i32 %229, 0
  %231 = xor i1 %230, true
  %232 = zext i1 %231 to i32
  store i32 %232, i32* %13, align 4
  br label %237

233:                                              ; preds = %221
  br label %234

234:                                              ; preds = %233, %215
  %235 = load i32, i32* %17, align 4
  %236 = add i32 %235, 1
  store i32 %236, i32* %17, align 4
  br label %193

237:                                              ; preds = %228, %193
  %238 = load %struct.xt_recent_mtinfo_v1*, %struct.xt_recent_mtinfo_v1** %7, align 8
  %239 = getelementptr inbounds %struct.xt_recent_mtinfo_v1, %struct.xt_recent_mtinfo_v1* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @XT_RECENT_REAP, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %237
  %245 = load %struct.recent_table*, %struct.recent_table** %8, align 8
  %246 = load i64, i64* %16, align 8
  %247 = call i32 @recent_entry_reap(%struct.recent_table* %245, i64 %246)
  br label %248

248:                                              ; preds = %244, %237
  br label %249

249:                                              ; preds = %248, %176
  br label %250

250:                                              ; preds = %249, %168
  br label %251

251:                                              ; preds = %250, %156
  %252 = load %struct.xt_recent_mtinfo_v1*, %struct.xt_recent_mtinfo_v1** %7, align 8
  %253 = getelementptr inbounds %struct.xt_recent_mtinfo_v1, %struct.xt_recent_mtinfo_v1* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @XT_RECENT_SET, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %268, label %258

258:                                              ; preds = %251
  %259 = load %struct.xt_recent_mtinfo_v1*, %struct.xt_recent_mtinfo_v1** %7, align 8
  %260 = getelementptr inbounds %struct.xt_recent_mtinfo_v1, %struct.xt_recent_mtinfo_v1* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @XT_RECENT_UPDATE, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %275

265:                                              ; preds = %258
  %266 = load i32, i32* %13, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %275

268:                                              ; preds = %265, %251
  %269 = load %struct.recent_table*, %struct.recent_table** %8, align 8
  %270 = load %struct.recent_entry*, %struct.recent_entry** %9, align 8
  %271 = call i32 @recent_entry_update(%struct.recent_table* %269, %struct.recent_entry* %270)
  %272 = load i64, i64* %12, align 8
  %273 = load %struct.recent_entry*, %struct.recent_entry** %9, align 8
  %274 = getelementptr inbounds %struct.recent_entry, %struct.recent_entry* %273, i32 0, i32 1
  store i64 %272, i64* %274, align 8
  br label %275

275:                                              ; preds = %268, %265, %258
  br label %276

276:                                              ; preds = %275, %144, %132
  %277 = call i32 @spin_unlock_bh(i32* @recent_lock)
  %278 = load i32, i32* %13, align 4
  ret i32 %278
}

declare dso_local %struct.net* @xt_net(%struct.xt_action_param*) #1

declare dso_local %struct.recent_net* @recent_pernet(%struct.net*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @xt_family(%struct.xt_action_param*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32* @xt_out(%struct.xt_action_param*) #1

declare dso_local i32 @net_eq(%struct.net*, i32) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.recent_table* @recent_table_lookup(%struct.recent_net*, i32) #1

declare dso_local i32 @nf_inet_addr_mask(%union.nf_inet_addr*, %union.nf_inet_addr*, i32*) #1

declare dso_local %struct.recent_entry* @recent_entry_lookup(%struct.recent_table*, %union.nf_inet_addr*, i64, i64) #1

declare dso_local %struct.recent_entry* @recent_entry_init(%struct.recent_table*, %union.nf_inet_addr*, i64, i64) #1

declare dso_local i32 @recent_entry_remove(%struct.recent_table*, %struct.recent_entry*) #1

declare dso_local i64 @time_after(i64, i32) #1

declare dso_local i32 @recent_entry_reap(%struct.recent_table*, i64) #1

declare dso_local i32 @recent_entry_update(%struct.recent_table*, %struct.recent_entry*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
