; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_udp_lib_get_port.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_udp_lib_get_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.udp_table* }
%struct.udp_table = type { i32, i16 }
%struct.udp_hslot = type { i32, i32, i32 }
%struct.net = type { i32 }
%struct.TYPE_6__ = type { i16, i16, i32 }
%struct.TYPE_8__ = type { i16 }

@bitmap = common dso_local global i32* null, align 8
@PORTS_PER_CHAIN = common dso_local global i32 0, align 4
@CONFIG_IPV6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@SOCK_RCU_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_lib_get_port(%struct.sock* %0, i16 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca %struct.udp_hslot*, align 8
  %8 = alloca %struct.udp_hslot*, align 8
  %9 = alloca %struct.udp_table*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.net*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 %2, i32* %6, align 4
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.udp_table*, %struct.udp_table** %24, align 8
  store %struct.udp_table* %25, %struct.udp_table** %9, align 8
  store i32 1, i32* %10, align 4
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = call %struct.net* @sock_net(%struct.sock* %26)
  store %struct.net* %27, %struct.net** %11, align 8
  %28 = load i16, i16* %5, align 2
  %29 = icmp ne i16 %28, 0
  br i1 %29, label %136, label %30

30:                                               ; preds = %3
  %31 = load i32*, i32** @bitmap, align 8
  %32 = load i32, i32* @PORTS_PER_CHAIN, align 4
  %33 = call i32 @DECLARE_BITMAP(i32* %31, i32 %32)
  %34 = load %struct.net*, %struct.net** %11, align 8
  %35 = call i32 @inet_get_local_port_range(%struct.net* %34, i32* %12, i32* %13)
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %12, align 4
  %38 = sub nsw i32 %36, %37
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %14, align 4
  %40 = call i32 (...) @prandom_u32()
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @reciprocal_scale(i32 %41, i32 %42)
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %43, %44
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %16, align 2
  %47 = load i32, i32* %15, align 4
  %48 = or i32 %47, 1
  %49 = load %struct.udp_table*, %struct.udp_table** %9, align 8
  %50 = getelementptr inbounds %struct.udp_table, %struct.udp_table* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  %53 = mul i32 %48, %52
  store i32 %53, i32* %15, align 4
  %54 = load i16, i16* %16, align 2
  %55 = zext i16 %54 to i32
  %56 = load %struct.udp_table*, %struct.udp_table** %9, align 8
  %57 = getelementptr inbounds %struct.udp_table, %struct.udp_table* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %55, %58
  %60 = add nsw i32 %59, 1
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %17, align 2
  br label %62

62:                                               ; preds = %128, %30
  %63 = load %struct.udp_table*, %struct.udp_table** %9, align 8
  %64 = load %struct.net*, %struct.net** %11, align 8
  %65 = load i16, i16* %16, align 2
  %66 = call %struct.udp_hslot* @udp_hashslot(%struct.udp_table* %63, %struct.net* %64, i16 zeroext %65)
  store %struct.udp_hslot* %66, %struct.udp_hslot** %7, align 8
  %67 = load i32*, i32** @bitmap, align 8
  %68 = load i32, i32* @PORTS_PER_CHAIN, align 4
  %69 = call i32 @bitmap_zero(i32* %67, i32 %68)
  %70 = load %struct.udp_hslot*, %struct.udp_hslot** %7, align 8
  %71 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %70, i32 0, i32 1
  %72 = call i32 @spin_lock_bh(i32* %71)
  %73 = load %struct.net*, %struct.net** %11, align 8
  %74 = load i16, i16* %5, align 2
  %75 = load %struct.udp_hslot*, %struct.udp_hslot** %7, align 8
  %76 = load i32*, i32** @bitmap, align 8
  %77 = load %struct.sock*, %struct.sock** %4, align 8
  %78 = load %struct.udp_table*, %struct.udp_table** %9, align 8
  %79 = getelementptr inbounds %struct.udp_table, %struct.udp_table* %78, i32 0, i32 1
  %80 = load i16, i16* %79, align 4
  %81 = call i64 @udp_lib_lport_inuse(%struct.net* %73, i16 zeroext %74, %struct.udp_hslot* %75, i32* %76, %struct.sock* %77, i16 zeroext %80)
  %82 = load i16, i16* %16, align 2
  store i16 %82, i16* %5, align 2
  br label %83

83:                                               ; preds = %117, %62
  %84 = load i32, i32* %12, align 4
  %85 = load i16, i16* %5, align 2
  %86 = zext i16 %85 to i32
  %87 = icmp sle i32 %84, %86
  br i1 %87, label %88, label %111

88:                                               ; preds = %83
  %89 = load i16, i16* %5, align 2
  %90 = zext i16 %89 to i32
  %91 = load i32, i32* %13, align 4
  %92 = icmp sle i32 %90, %91
  br i1 %92, label %93, label %111

93:                                               ; preds = %88
  %94 = load i16, i16* %5, align 2
  %95 = zext i16 %94 to i32
  %96 = load %struct.udp_table*, %struct.udp_table** %9, align 8
  %97 = getelementptr inbounds %struct.udp_table, %struct.udp_table* %96, i32 0, i32 1
  %98 = load i16, i16* %97, align 4
  %99 = zext i16 %98 to i32
  %100 = ashr i32 %95, %99
  %101 = trunc i32 %100 to i16
  %102 = load i32*, i32** @bitmap, align 8
  %103 = call i32 @test_bit(i16 zeroext %101, i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %93
  %106 = load %struct.net*, %struct.net** %11, align 8
  %107 = load i16, i16* %5, align 2
  %108 = call i32 @inet_is_local_reserved_port(%struct.net* %106, i16 zeroext %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %105
  br label %215

111:                                              ; preds = %105, %93, %88, %83
  %112 = load i32, i32* %15, align 4
  %113 = load i16, i16* %5, align 2
  %114 = zext i16 %113 to i32
  %115 = add i32 %114, %112
  %116 = trunc i32 %115 to i16
  store i16 %116, i16* %5, align 2
  br label %117

117:                                              ; preds = %111
  %118 = load i16, i16* %5, align 2
  %119 = zext i16 %118 to i32
  %120 = load i16, i16* %16, align 2
  %121 = zext i16 %120 to i32
  %122 = icmp ne i32 %119, %121
  br i1 %122, label %83, label %123

123:                                              ; preds = %117
  %124 = load %struct.udp_hslot*, %struct.udp_hslot** %7, align 8
  %125 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %124, i32 0, i32 1
  %126 = call i32 @spin_unlock_bh(i32* %125)
  %127 = call i32 (...) @cond_resched()
  br label %128

128:                                              ; preds = %123
  %129 = load i16, i16* %16, align 2
  %130 = add i16 %129, 1
  store i16 %130, i16* %16, align 2
  %131 = zext i16 %130 to i32
  %132 = load i16, i16* %17, align 2
  %133 = zext i16 %132 to i32
  %134 = icmp ne i32 %131, %133
  br i1 %134, label %62, label %135

135:                                              ; preds = %128
  br label %331

136:                                              ; preds = %3
  %137 = load %struct.udp_table*, %struct.udp_table** %9, align 8
  %138 = load %struct.net*, %struct.net** %11, align 8
  %139 = load i16, i16* %5, align 2
  %140 = call %struct.udp_hslot* @udp_hashslot(%struct.udp_table* %137, %struct.net* %138, i16 zeroext %139)
  store %struct.udp_hslot* %140, %struct.udp_hslot** %7, align 8
  %141 = load %struct.udp_hslot*, %struct.udp_hslot** %7, align 8
  %142 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %141, i32 0, i32 1
  %143 = call i32 @spin_lock_bh(i32* %142)
  %144 = load %struct.udp_hslot*, %struct.udp_hslot** %7, align 8
  %145 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp sgt i32 %146, 10
  br i1 %147, label %148, label %204

148:                                              ; preds = %136
  %149 = load %struct.sock*, %struct.sock** %4, align 8
  %150 = call %struct.TYPE_6__* @udp_sk(%struct.sock* %149)
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i16, i16* %151, align 4
  %153 = zext i16 %152 to i32
  %154 = load i16, i16* %5, align 2
  %155 = zext i16 %154 to i32
  %156 = xor i32 %153, %155
  store i32 %156, i32* %19, align 4
  %157 = load %struct.udp_table*, %struct.udp_table** %9, align 8
  %158 = getelementptr inbounds %struct.udp_table, %struct.udp_table* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %19, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %19, align 4
  %162 = load %struct.udp_table*, %struct.udp_table** %9, align 8
  %163 = getelementptr inbounds %struct.udp_table, %struct.udp_table* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %6, align 4
  %166 = and i32 %165, %164
  store i32 %166, i32* %6, align 4
  %167 = load %struct.udp_table*, %struct.udp_table** %9, align 8
  %168 = load i32, i32* %19, align 4
  %169 = call %struct.udp_hslot* @udp_hashslot2(%struct.udp_table* %167, i32 %168)
  store %struct.udp_hslot* %169, %struct.udp_hslot** %8, align 8
  %170 = load %struct.udp_hslot*, %struct.udp_hslot** %7, align 8
  %171 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.udp_hslot*, %struct.udp_hslot** %8, align 8
  %174 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp slt i32 %172, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %148
  br label %205

178:                                              ; preds = %148
  %179 = load %struct.net*, %struct.net** %11, align 8
  %180 = load i16, i16* %5, align 2
  %181 = load %struct.udp_hslot*, %struct.udp_hslot** %8, align 8
  %182 = load %struct.sock*, %struct.sock** %4, align 8
  %183 = call i32 @udp_lib_lport_inuse2(%struct.net* %179, i16 zeroext %180, %struct.udp_hslot* %181, %struct.sock* %182)
  store i32 %183, i32* %18, align 4
  %184 = load i32, i32* %18, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %199, label %186

186:                                              ; preds = %178
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* %19, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %199

190:                                              ; preds = %186
  %191 = load %struct.udp_table*, %struct.udp_table** %9, align 8
  %192 = load i32, i32* %6, align 4
  %193 = call %struct.udp_hslot* @udp_hashslot2(%struct.udp_table* %191, i32 %192)
  store %struct.udp_hslot* %193, %struct.udp_hslot** %8, align 8
  %194 = load %struct.net*, %struct.net** %11, align 8
  %195 = load i16, i16* %5, align 2
  %196 = load %struct.udp_hslot*, %struct.udp_hslot** %8, align 8
  %197 = load %struct.sock*, %struct.sock** %4, align 8
  %198 = call i32 @udp_lib_lport_inuse2(%struct.net* %194, i16 zeroext %195, %struct.udp_hslot* %196, %struct.sock* %197)
  store i32 %198, i32* %18, align 4
  br label %199

199:                                              ; preds = %190, %186, %178
  %200 = load i32, i32* %18, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  br label %327

203:                                              ; preds = %199
  br label %215

204:                                              ; preds = %136
  br label %205

205:                                              ; preds = %204, %177
  %206 = load %struct.net*, %struct.net** %11, align 8
  %207 = load i16, i16* %5, align 2
  %208 = load %struct.udp_hslot*, %struct.udp_hslot** %7, align 8
  %209 = load %struct.sock*, %struct.sock** %4, align 8
  %210 = call i64 @udp_lib_lport_inuse(%struct.net* %206, i16 zeroext %207, %struct.udp_hslot* %208, i32* null, %struct.sock* %209, i16 zeroext 0)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %205
  br label %327

213:                                              ; preds = %205
  br label %214

214:                                              ; preds = %213
  br label %215

215:                                              ; preds = %214, %203, %110
  %216 = load i16, i16* %5, align 2
  %217 = load %struct.sock*, %struct.sock** %4, align 8
  %218 = call %struct.TYPE_8__* @inet_sk(%struct.sock* %217)
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  store i16 %216, i16* %219, align 2
  %220 = load i16, i16* %5, align 2
  %221 = load %struct.sock*, %struct.sock** %4, align 8
  %222 = call %struct.TYPE_6__* @udp_sk(%struct.sock* %221)
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 1
  store i16 %220, i16* %223, align 2
  %224 = load i16, i16* %5, align 2
  %225 = zext i16 %224 to i32
  %226 = load %struct.sock*, %struct.sock** %4, align 8
  %227 = call %struct.TYPE_6__* @udp_sk(%struct.sock* %226)
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = load i16, i16* %228, align 4
  %230 = zext i16 %229 to i32
  %231 = xor i32 %230, %225
  %232 = trunc i32 %231 to i16
  store i16 %232, i16* %228, align 4
  %233 = load %struct.sock*, %struct.sock** %4, align 8
  %234 = call i64 @sk_unhashed(%struct.sock* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %323

236:                                              ; preds = %215
  %237 = load %struct.sock*, %struct.sock** %4, align 8
  %238 = getelementptr inbounds %struct.sock, %struct.sock* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %262

241:                                              ; preds = %236
  %242 = load %struct.sock*, %struct.sock** %4, align 8
  %243 = load %struct.udp_hslot*, %struct.udp_hslot** %7, align 8
  %244 = call i64 @udp_reuseport_add_sock(%struct.sock* %242, %struct.udp_hslot* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %262

246:                                              ; preds = %241
  %247 = load %struct.sock*, %struct.sock** %4, align 8
  %248 = call %struct.TYPE_8__* @inet_sk(%struct.sock* %247)
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 0
  store i16 0, i16* %249, align 2
  %250 = load %struct.sock*, %struct.sock** %4, align 8
  %251 = call %struct.TYPE_6__* @udp_sk(%struct.sock* %250)
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 1
  store i16 0, i16* %252, align 2
  %253 = load i16, i16* %5, align 2
  %254 = zext i16 %253 to i32
  %255 = load %struct.sock*, %struct.sock** %4, align 8
  %256 = call %struct.TYPE_6__* @udp_sk(%struct.sock* %255)
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  %258 = load i16, i16* %257, align 4
  %259 = zext i16 %258 to i32
  %260 = xor i32 %259, %254
  %261 = trunc i32 %260 to i16
  store i16 %261, i16* %257, align 4
  br label %327

262:                                              ; preds = %241, %236
  %263 = load %struct.sock*, %struct.sock** %4, align 8
  %264 = load %struct.udp_hslot*, %struct.udp_hslot** %7, align 8
  %265 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %264, i32 0, i32 2
  %266 = call i32 @sk_add_node_rcu(%struct.sock* %263, i32* %265)
  %267 = load %struct.udp_hslot*, %struct.udp_hslot** %7, align 8
  %268 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %268, align 4
  %271 = load %struct.sock*, %struct.sock** %4, align 8
  %272 = call %struct.net* @sock_net(%struct.sock* %271)
  %273 = load %struct.sock*, %struct.sock** %4, align 8
  %274 = getelementptr inbounds %struct.sock, %struct.sock* %273, i32 0, i32 2
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %274, align 8
  %276 = call i32 @sock_prot_inuse_add(%struct.net* %272, %struct.TYPE_7__* %275, i32 1)
  %277 = load %struct.udp_table*, %struct.udp_table** %9, align 8
  %278 = load %struct.sock*, %struct.sock** %4, align 8
  %279 = call %struct.TYPE_6__* @udp_sk(%struct.sock* %278)
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 0
  %281 = load i16, i16* %280, align 4
  %282 = zext i16 %281 to i32
  %283 = call %struct.udp_hslot* @udp_hashslot2(%struct.udp_table* %277, i32 %282)
  store %struct.udp_hslot* %283, %struct.udp_hslot** %8, align 8
  %284 = load %struct.udp_hslot*, %struct.udp_hslot** %8, align 8
  %285 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %284, i32 0, i32 1
  %286 = call i32 @spin_lock(i32* %285)
  %287 = load i32, i32* @CONFIG_IPV6, align 4
  %288 = call i64 @IS_ENABLED(i32 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %308

290:                                              ; preds = %262
  %291 = load %struct.sock*, %struct.sock** %4, align 8
  %292 = getelementptr inbounds %struct.sock, %struct.sock* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %308

295:                                              ; preds = %290
  %296 = load %struct.sock*, %struct.sock** %4, align 8
  %297 = getelementptr inbounds %struct.sock, %struct.sock* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @AF_INET6, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %301, label %308

301:                                              ; preds = %295
  %302 = load %struct.sock*, %struct.sock** %4, align 8
  %303 = call %struct.TYPE_6__* @udp_sk(%struct.sock* %302)
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 2
  %305 = load %struct.udp_hslot*, %struct.udp_hslot** %8, align 8
  %306 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %305, i32 0, i32 2
  %307 = call i32 @hlist_add_tail_rcu(i32* %304, i32* %306)
  br label %315

308:                                              ; preds = %295, %290, %262
  %309 = load %struct.sock*, %struct.sock** %4, align 8
  %310 = call %struct.TYPE_6__* @udp_sk(%struct.sock* %309)
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 2
  %312 = load %struct.udp_hslot*, %struct.udp_hslot** %8, align 8
  %313 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %312, i32 0, i32 2
  %314 = call i32 @hlist_add_head_rcu(i32* %311, i32* %313)
  br label %315

315:                                              ; preds = %308, %301
  %316 = load %struct.udp_hslot*, %struct.udp_hslot** %8, align 8
  %317 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %317, align 4
  %320 = load %struct.udp_hslot*, %struct.udp_hslot** %8, align 8
  %321 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %320, i32 0, i32 1
  %322 = call i32 @spin_unlock(i32* %321)
  br label %323

323:                                              ; preds = %315, %215
  %324 = load %struct.sock*, %struct.sock** %4, align 8
  %325 = load i32, i32* @SOCK_RCU_FREE, align 4
  %326 = call i32 @sock_set_flag(%struct.sock* %324, i32 %325)
  store i32 0, i32* %10, align 4
  br label %327

327:                                              ; preds = %323, %246, %212, %202
  %328 = load %struct.udp_hslot*, %struct.udp_hslot** %7, align 8
  %329 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %328, i32 0, i32 1
  %330 = call i32 @spin_unlock_bh(i32* %329)
  br label %331

331:                                              ; preds = %327, %135
  %332 = load i32, i32* %10, align 4
  ret i32 %332
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @DECLARE_BITMAP(i32*, i32) #1

declare dso_local i32 @inet_get_local_port_range(%struct.net*, i32*, i32*) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i32 @reciprocal_scale(i32, i32) #1

declare dso_local %struct.udp_hslot* @udp_hashslot(%struct.udp_table*, %struct.net*, i16 zeroext) #1

declare dso_local i32 @bitmap_zero(i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @udp_lib_lport_inuse(%struct.net*, i16 zeroext, %struct.udp_hslot*, i32*, %struct.sock*, i16 zeroext) #1

declare dso_local i32 @test_bit(i16 zeroext, i32*) #1

declare dso_local i32 @inet_is_local_reserved_port(%struct.net*, i16 zeroext) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local %struct.TYPE_6__* @udp_sk(%struct.sock*) #1

declare dso_local %struct.udp_hslot* @udp_hashslot2(%struct.udp_table*, i32) #1

declare dso_local i32 @udp_lib_lport_inuse2(%struct.net*, i16 zeroext, %struct.udp_hslot*, %struct.sock*) #1

declare dso_local %struct.TYPE_8__* @inet_sk(%struct.sock*) #1

declare dso_local i64 @sk_unhashed(%struct.sock*) #1

declare dso_local i64 @udp_reuseport_add_sock(%struct.sock*, %struct.udp_hslot*) #1

declare dso_local i32 @sk_add_node_rcu(%struct.sock*, i32*) #1

declare dso_local i32 @sock_prot_inuse_add(%struct.net*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @hlist_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
