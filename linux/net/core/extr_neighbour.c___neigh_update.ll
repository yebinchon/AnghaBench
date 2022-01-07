; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c___neigh_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c___neigh_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i32, i32*, i32, i64, i32, i32 (%struct.neighbour*, %struct.sk_buff*)*, %struct.TYPE_2__*, i8*, i32, i32, i8*, i64, %struct.net_device* }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.dst_entry = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_ADMIN = common dso_local global i32 0, align 4
@NUD_NOARP = common dso_local global i32 0, align 4
@NUD_PERMANENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Neighbor entry is now dead\00", align 1
@NUD_VALID = common dso_local global i32 0, align 4
@NUD_CONNECTED = common dso_local global i32 0, align 4
@NUD_INCOMPLETE = common dso_local global i32 0, align 4
@NUD_PROBE = common dso_local global i32 0, align 4
@NUD_FAILED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"No link layer address given\00", align 1
@jiffies = common dso_local global i8* null, align 8
@NEIGH_UPDATE_F_OVERRIDE_ISROUTER = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_OVERRIDE = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_WEAK_OVERRIDE = common dso_local global i32 0, align 4
@NUD_STALE = common dso_local global i32 0, align 4
@NUD_IN_TIMER = common dso_local global i32 0, align 4
@NUD_REACHABLE = common dso_local global i32 0, align 4
@BASE_REACHABLE_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.neighbour*, i32*, i32, i32, i32, %struct.netlink_ext_ack*)* @__neigh_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__neigh_update(%struct.neighbour* %0, i32* %1, i32 %2, i32 %3, i32 %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca %struct.neighbour*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.netlink_ext_ack*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.net_device*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca %struct.dst_entry*, align 8
  %21 = alloca %struct.neighbour*, align 8
  %22 = alloca %struct.neighbour*, align 8
  store %struct.neighbour* %0, %struct.neighbour** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %23 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @trace_neigh_update(%struct.neighbour* %23, i32* %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %30 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %29, i32 0, i32 2
  %31 = call i32 @write_lock_bh(i32* %30)
  %32 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %33 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %32, i32 0, i32 12
  %34 = load %struct.net_device*, %struct.net_device** %33, align 8
  store %struct.net_device* %34, %struct.net_device** %17, align 8
  %35 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %36 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* @EPERM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @NEIGH_UPDATE_F_ADMIN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %6
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @NUD_NOARP, align 4
  %47 = load i32, i32* @NUD_PERMANENT, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %387

52:                                               ; preds = %44, %6
  %53 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %54 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %53, i32 0, i32 11
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %59 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %387

60:                                               ; preds = %52
  %61 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @neigh_update_ext_learned(%struct.neighbour* %61, i32 %62, i32* %16)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @NUD_VALID, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %100, label %68

68:                                               ; preds = %60
  %69 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %70 = call i32 @neigh_del_timer(%struct.neighbour* %69)
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @NUD_CONNECTED, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %77 = call i32 @neigh_suspect(%struct.neighbour* %76)
  br label %78

78:                                               ; preds = %75, %68
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %81 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  store i32 0, i32* %15, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @NUD_VALID, align 4
  %84 = and i32 %82, %83
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* @NUD_INCOMPLETE, align 4
  %87 = load i32, i32* @NUD_PROBE, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %85, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %78
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @NUD_FAILED, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %98 = call i32 @neigh_invalidate(%struct.neighbour* %97)
  store i32 1, i32* %16, align 4
  br label %99

99:                                               ; preds = %96, %91, %78
  br label %387

100:                                              ; preds = %60
  %101 = load %struct.net_device*, %struct.net_device** %17, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %100
  %106 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %107 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  store i32* %108, i32** %8, align 8
  br label %147

109:                                              ; preds = %100
  %110 = load i32*, i32** %8, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %132

112:                                              ; preds = %109
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* @NUD_VALID, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %112
  %118 = load i32*, i32** %8, align 8
  %119 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %120 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.net_device*, %struct.net_device** %17, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @memcmp(i32* %118, i32* %121, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %117
  %128 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %129 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  store i32* %130, i32** %8, align 8
  br label %131

131:                                              ; preds = %127, %117, %112
  br label %146

132:                                              ; preds = %109
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* @NUD_VALID, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %132
  %140 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %141 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %140, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %387

142:                                              ; preds = %132
  %143 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %144 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  store i32* %145, i32** %8, align 8
  br label %146

146:                                              ; preds = %142, %131
  br label %147

147:                                              ; preds = %146, %105
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @NUD_CONNECTED, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load i8*, i8** @jiffies, align 8
  %154 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %155 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %154, i32 0, i32 7
  store i8* %153, i8** %155, align 8
  br label %156

156:                                              ; preds = %152, %147
  store i32 0, i32* %15, align 4
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* @NEIGH_UPDATE_F_OVERRIDE_ISROUTER, align 4
  %159 = and i32 %157, %158
  store i32 %159, i32* %18, align 4
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* @NUD_VALID, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %211

164:                                              ; preds = %156
  %165 = load i32*, i32** %8, align 8
  %166 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %167 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = icmp ne i32* %165, %168
  br i1 %169, label %170, label %192

170:                                              ; preds = %164
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* @NEIGH_UPDATE_F_OVERRIDE, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %192, label %175

175:                                              ; preds = %170
  store i32 0, i32* %18, align 4
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* @NEIGH_UPDATE_F_WEAK_OVERRIDE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %175
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* @NUD_CONNECTED, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %180
  %186 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %187 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  store i32* %188, i32** %8, align 8
  %189 = load i32, i32* @NUD_STALE, align 4
  store i32 %189, i32* %9, align 4
  br label %191

190:                                              ; preds = %180, %175
  br label %387

191:                                              ; preds = %185
  br label %210

192:                                              ; preds = %170, %164
  %193 = load i32*, i32** %8, align 8
  %194 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %195 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = icmp eq i32* %193, %196
  br i1 %197, label %198, label %209

198:                                              ; preds = %192
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* @NUD_STALE, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %209

202:                                              ; preds = %198
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* @NEIGH_UPDATE_F_ADMIN, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %202
  %208 = load i32, i32* %14, align 4
  store i32 %208, i32* %9, align 4
  br label %209

209:                                              ; preds = %207, %202, %198, %192
  br label %210

210:                                              ; preds = %209, %191
  br label %211

211:                                              ; preds = %210, %156
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* %14, align 4
  %214 = icmp ne i32 %212, %213
  br i1 %214, label %221, label %215

215:                                              ; preds = %211
  %216 = load i32*, i32** %8, align 8
  %217 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %218 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = icmp ne i32* %216, %219
  br i1 %220, label %221, label %225

221:                                              ; preds = %215, %211
  %222 = load i8*, i8** @jiffies, align 8
  %223 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %224 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %223, i32 0, i32 10
  store i8* %222, i8** %224, align 8
  br label %225

225:                                              ; preds = %221, %215
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* %14, align 4
  %228 = icmp ne i32 %226, %227
  br i1 %228, label %229, label %268

229:                                              ; preds = %225
  %230 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %231 = call i32 @neigh_del_timer(%struct.neighbour* %230)
  %232 = load i32, i32* %9, align 4
  %233 = load i32, i32* @NUD_PROBE, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %229
  %237 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %238 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %237, i32 0, i32 9
  %239 = call i32 @atomic_set(i32* %238, i32 0)
  br label %240

240:                                              ; preds = %236, %229
  %241 = load i32, i32* %9, align 4
  %242 = load i32, i32* @NUD_IN_TIMER, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %264

245:                                              ; preds = %240
  %246 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %247 = load i8*, i8** @jiffies, align 8
  %248 = load i32, i32* %9, align 4
  %249 = load i32, i32* @NUD_REACHABLE, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %245
  %253 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %254 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %253, i32 0, i32 6
  %255 = load %struct.TYPE_2__*, %struct.TYPE_2__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  br label %259

258:                                              ; preds = %245
  br label %259

259:                                              ; preds = %258, %252
  %260 = phi i32 [ %257, %252 ], [ 0, %258 ]
  %261 = sext i32 %260 to i64
  %262 = getelementptr i8, i8* %247, i64 %261
  %263 = call i32 @neigh_add_timer(%struct.neighbour* %246, i8* %262)
  br label %264

264:                                              ; preds = %259, %240
  %265 = load i32, i32* %9, align 4
  %266 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %267 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %266, i32 0, i32 0
  store i32 %265, i32* %267, align 8
  store i32 1, i32* %16, align 4
  br label %268

268:                                              ; preds = %264, %225
  %269 = load i32*, i32** %8, align 8
  %270 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %271 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %270, i32 0, i32 1
  %272 = load i32*, i32** %271, align 8
  %273 = icmp ne i32* %269, %272
  br i1 %273, label %274, label %308

274:                                              ; preds = %268
  %275 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %276 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %275, i32 0, i32 8
  %277 = call i32 @write_seqlock(i32* %276)
  %278 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %279 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %278, i32 0, i32 1
  %280 = load i32*, i32** %8, align 8
  %281 = load %struct.net_device*, %struct.net_device** %17, align 8
  %282 = getelementptr inbounds %struct.net_device, %struct.net_device* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @memcpy(i32** %279, i32* %280, i32 %283)
  %285 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %286 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %285, i32 0, i32 8
  %287 = call i32 @write_sequnlock(i32* %286)
  %288 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %289 = call i32 @neigh_update_hhs(%struct.neighbour* %288)
  %290 = load i32, i32* %9, align 4
  %291 = load i32, i32* @NUD_CONNECTED, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %307, label %294

294:                                              ; preds = %274
  %295 = load i8*, i8** @jiffies, align 8
  %296 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %297 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %296, i32 0, i32 6
  %298 = load %struct.TYPE_2__*, %struct.TYPE_2__** %297, align 8
  %299 = load i32, i32* @BASE_REACHABLE_TIME, align 4
  %300 = call i32 @NEIGH_VAR(%struct.TYPE_2__* %298, i32 %299)
  %301 = shl i32 %300, 1
  %302 = sext i32 %301 to i64
  %303 = sub i64 0, %302
  %304 = getelementptr i8, i8* %295, i64 %303
  %305 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %306 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %305, i32 0, i32 7
  store i8* %304, i8** %306, align 8
  br label %307

307:                                              ; preds = %294, %274
  store i32 1, i32* %16, align 4
  br label %308

308:                                              ; preds = %307, %268
  %309 = load i32, i32* %9, align 4
  %310 = load i32, i32* %14, align 4
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %312, label %313

312:                                              ; preds = %308
  br label %387

313:                                              ; preds = %308
  %314 = load i32, i32* %9, align 4
  %315 = load i32, i32* @NUD_CONNECTED, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %321

318:                                              ; preds = %313
  %319 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %320 = call i32 @neigh_connect(%struct.neighbour* %319)
  br label %324

321:                                              ; preds = %313
  %322 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %323 = call i32 @neigh_suspect(%struct.neighbour* %322)
  br label %324

324:                                              ; preds = %321, %318
  %325 = load i32, i32* %14, align 4
  %326 = load i32, i32* @NUD_VALID, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %386, label %329

329:                                              ; preds = %324
  br label %330

330:                                              ; preds = %375, %329
  %331 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %332 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @NUD_VALID, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %342

337:                                              ; preds = %330
  %338 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %339 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %338, i32 0, i32 4
  %340 = call %struct.sk_buff* @__skb_dequeue(i32* %339)
  store %struct.sk_buff* %340, %struct.sk_buff** %19, align 8
  %341 = icmp ne %struct.sk_buff* %340, null
  br label %342

342:                                              ; preds = %337, %330
  %343 = phi i1 [ false, %330 ], [ %341, %337 ]
  br i1 %343, label %344, label %380

344:                                              ; preds = %342
  %345 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %346 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %345)
  store %struct.dst_entry* %346, %struct.dst_entry** %20, align 8
  %347 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  store %struct.neighbour* %347, %struct.neighbour** %22, align 8
  %348 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %349 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %348, i32 0, i32 2
  %350 = call i32 @write_unlock_bh(i32* %349)
  %351 = call i32 (...) @rcu_read_lock()
  store %struct.neighbour* null, %struct.neighbour** %21, align 8
  %352 = load %struct.dst_entry*, %struct.dst_entry** %20, align 8
  %353 = icmp ne %struct.dst_entry* %352, null
  br i1 %353, label %354, label %363

354:                                              ; preds = %344
  %355 = load %struct.dst_entry*, %struct.dst_entry** %20, align 8
  %356 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %357 = call %struct.neighbour* @dst_neigh_lookup_skb(%struct.dst_entry* %355, %struct.sk_buff* %356)
  store %struct.neighbour* %357, %struct.neighbour** %21, align 8
  %358 = load %struct.neighbour*, %struct.neighbour** %21, align 8
  %359 = icmp ne %struct.neighbour* %358, null
  br i1 %359, label %360, label %362

360:                                              ; preds = %354
  %361 = load %struct.neighbour*, %struct.neighbour** %21, align 8
  store %struct.neighbour* %361, %struct.neighbour** %22, align 8
  br label %362

362:                                              ; preds = %360, %354
  br label %363

363:                                              ; preds = %362, %344
  %364 = load %struct.neighbour*, %struct.neighbour** %22, align 8
  %365 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %364, i32 0, i32 5
  %366 = load i32 (%struct.neighbour*, %struct.sk_buff*)*, i32 (%struct.neighbour*, %struct.sk_buff*)** %365, align 8
  %367 = load %struct.neighbour*, %struct.neighbour** %22, align 8
  %368 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %369 = call i32 %366(%struct.neighbour* %367, %struct.sk_buff* %368)
  %370 = load %struct.neighbour*, %struct.neighbour** %21, align 8
  %371 = icmp ne %struct.neighbour* %370, null
  br i1 %371, label %372, label %375

372:                                              ; preds = %363
  %373 = load %struct.neighbour*, %struct.neighbour** %21, align 8
  %374 = call i32 @neigh_release(%struct.neighbour* %373)
  br label %375

375:                                              ; preds = %372, %363
  %376 = call i32 (...) @rcu_read_unlock()
  %377 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %378 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %377, i32 0, i32 2
  %379 = call i32 @write_lock_bh(i32* %378)
  br label %330

380:                                              ; preds = %342
  %381 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %382 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %381, i32 0, i32 4
  %383 = call i32 @__skb_queue_purge(i32* %382)
  %384 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %385 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %384, i32 0, i32 3
  store i64 0, i64* %385, align 8
  br label %386

386:                                              ; preds = %380, %324
  br label %387

387:                                              ; preds = %386, %312, %190, %139, %99, %57, %51
  %388 = load i32, i32* %18, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %394

390:                                              ; preds = %387
  %391 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %392 = load i32, i32* %10, align 4
  %393 = call i32 @neigh_update_is_router(%struct.neighbour* %391, i32 %392, i32* %16)
  br label %394

394:                                              ; preds = %390, %387
  %395 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %396 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %395, i32 0, i32 2
  %397 = call i32 @write_unlock_bh(i32* %396)
  %398 = load i32, i32* %9, align 4
  %399 = load i32, i32* %14, align 4
  %400 = xor i32 %398, %399
  %401 = load i32, i32* @NUD_PERMANENT, align 4
  %402 = and i32 %400, %401
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %407, label %404

404:                                              ; preds = %394
  %405 = load i32, i32* %13, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %410

407:                                              ; preds = %404, %394
  %408 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %409 = call i32 @neigh_update_gc_list(%struct.neighbour* %408)
  br label %410

410:                                              ; preds = %407, %404
  %411 = load i32, i32* %16, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %417

413:                                              ; preds = %410
  %414 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %415 = load i32, i32* %11, align 4
  %416 = call i32 @neigh_update_notify(%struct.neighbour* %414, i32 %415)
  br label %417

417:                                              ; preds = %413, %410
  %418 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %419 = load i32, i32* %15, align 4
  %420 = call i32 @trace_neigh_update_done(%struct.neighbour* %418, i32 %419)
  %421 = load i32, i32* %15, align 4
  ret i32 %421
}

declare dso_local i32 @trace_neigh_update(%struct.neighbour*, i32*, i32, i32, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @neigh_update_ext_learned(%struct.neighbour*, i32, i32*) #1

declare dso_local i32 @neigh_del_timer(%struct.neighbour*) #1

declare dso_local i32 @neigh_suspect(%struct.neighbour*) #1

declare dso_local i32 @neigh_invalidate(%struct.neighbour*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @neigh_add_timer(%struct.neighbour*, i8*) #1

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local i32 @memcpy(i32**, i32*, i32) #1

declare dso_local i32 @write_sequnlock(i32*) #1

declare dso_local i32 @neigh_update_hhs(%struct.neighbour*) #1

declare dso_local i32 @NEIGH_VAR(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @neigh_connect(%struct.neighbour*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.neighbour* @dst_neigh_lookup_skb(%struct.dst_entry*, %struct.sk_buff*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local i32 @neigh_update_is_router(%struct.neighbour*, i32, i32*) #1

declare dso_local i32 @neigh_update_gc_list(%struct.neighbour*) #1

declare dso_local i32 @neigh_update_notify(%struct.neighbour*, i32) #1

declare dso_local i32 @trace_neigh_update_done(%struct.neighbour*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
