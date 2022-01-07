; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmscan.c_shrink_node.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmscan.c_shrink_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.reclaim_state* }
%struct.reclaim_state = type { i64 }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.scan_control = type { i64, i64, i32, i32, %struct.TYPE_10__, %struct.mem_cgroup*, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.mem_cgroup = type { i32 }

@current = common dso_local global %struct.TYPE_11__* null, align 8
@MEMCG_LOW = common dso_local global i32 0, align 4
@PGDAT_WRITEBACK = common dso_local global i32 0, align 4
@PGDAT_CONGESTED = common dso_local global i32 0, align 4
@PGDAT_DIRTY = common dso_local global i32 0, align 4
@BLK_RW_ASYNC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.scan_control*)* @shrink_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shrink_node(%struct.TYPE_9__* %0, %struct.scan_control* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.scan_control*, align 8
  %5 = alloca %struct.reclaim_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mem_cgroup*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mem_cgroup*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.scan_control* %1, %struct.scan_control** %4, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.reclaim_state*, %struct.reclaim_state** %16, align 8
  store %struct.reclaim_state* %17, %struct.reclaim_state** %5, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %256, %2
  %19 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %20 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %19, i32 0, i32 5
  %21 = load %struct.mem_cgroup*, %struct.mem_cgroup** %20, align 8
  store %struct.mem_cgroup* %21, %struct.mem_cgroup** %9, align 8
  store i64 0, i64* %10, align 8
  %22 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %23 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %22, i32 0, i32 4
  %24 = call i32 @memset(%struct.TYPE_10__* %23, i32 0, i32 56)
  %25 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %26 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %6, align 8
  %28 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %29 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %7, align 8
  %31 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %32 = call %struct.mem_cgroup* @mem_cgroup_iter(%struct.mem_cgroup* %31, %struct.mem_cgroup* null, i32* null)
  store %struct.mem_cgroup* %32, %struct.mem_cgroup** %11, align 8
  br label %33

33:                                               ; preds = %91, %18
  %34 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %35 = load %struct.mem_cgroup*, %struct.mem_cgroup** %11, align 8
  %36 = call i32 @mem_cgroup_protected(%struct.mem_cgroup* %34, %struct.mem_cgroup* %35)
  switch i32 %36, label %51 [
    i32 129, label %37
    i32 130, label %38
    i32 128, label %50
  ]

37:                                               ; preds = %33
  br label %91

38:                                               ; preds = %33
  %39 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %40 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %45 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %44, i32 0, i32 2
  store i32 1, i32* %45, align 8
  br label %91

46:                                               ; preds = %38
  %47 = load %struct.mem_cgroup*, %struct.mem_cgroup** %11, align 8
  %48 = load i32, i32* @MEMCG_LOW, align 4
  %49 = call i32 @memcg_memory_event(%struct.mem_cgroup* %47, i32 %48)
  br label %51

50:                                               ; preds = %33
  br label %51

51:                                               ; preds = %33, %50, %46
  %52 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %53 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %13, align 8
  %55 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %56 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %14, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = load %struct.mem_cgroup*, %struct.mem_cgroup** %11, align 8
  %60 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %61 = call i32 @shrink_node_memcg(%struct.TYPE_9__* %58, %struct.mem_cgroup* %59, %struct.scan_control* %60, i64* %12)
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %10, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %10, align 8
  %65 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %66 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mem_cgroup*, %struct.mem_cgroup** %11, align 8
  %72 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %73 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @shrink_slab(i32 %67, i32 %70, %struct.mem_cgroup* %71, i32 %74)
  %76 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %77 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.mem_cgroup*, %struct.mem_cgroup** %11, align 8
  %80 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %81 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %14, align 8
  %84 = sub i64 %82, %83
  %85 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %86 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %13, align 8
  %89 = sub i64 %87, %88
  %90 = call i32 @vmpressure(i32 %78, %struct.mem_cgroup* %79, i32 0, i64 %84, i64 %89)
  br label %91

91:                                               ; preds = %51, %43, %37
  %92 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %93 = load %struct.mem_cgroup*, %struct.mem_cgroup** %11, align 8
  %94 = call %struct.mem_cgroup* @mem_cgroup_iter(%struct.mem_cgroup* %92, %struct.mem_cgroup* %93, i32* null)
  store %struct.mem_cgroup* %94, %struct.mem_cgroup** %11, align 8
  %95 = icmp ne %struct.mem_cgroup* %94, null
  br i1 %95, label %33, label %96

96:                                               ; preds = %91
  %97 = load %struct.reclaim_state*, %struct.reclaim_state** %5, align 8
  %98 = icmp ne %struct.reclaim_state* %97, null
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = load %struct.reclaim_state*, %struct.reclaim_state** %5, align 8
  %101 = getelementptr inbounds %struct.reclaim_state, %struct.reclaim_state* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %104 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, %102
  store i64 %106, i64* %104, align 8
  %107 = load %struct.reclaim_state*, %struct.reclaim_state** %5, align 8
  %108 = getelementptr inbounds %struct.reclaim_state, %struct.reclaim_state* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %99, %96
  %110 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %111 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %114 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %113, i32 0, i32 5
  %115 = load %struct.mem_cgroup*, %struct.mem_cgroup** %114, align 8
  %116 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %117 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %7, align 8
  %120 = sub i64 %118, %119
  %121 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %122 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %6, align 8
  %125 = sub i64 %123, %124
  %126 = call i32 @vmpressure(i32 %112, %struct.mem_cgroup* %115, i32 1, i64 %120, i64 %125)
  %127 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %128 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %6, align 8
  %131 = sub i64 %129, %130
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %109
  store i32 1, i32* %8, align 4
  br label %134

134:                                              ; preds = %133, %109
  %135 = call i64 (...) @current_is_kswapd()
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %206

137:                                              ; preds = %134
  %138 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %139 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %158

143:                                              ; preds = %137
  %144 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %145 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %149 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %147, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %143
  %154 = load i32, i32* @PGDAT_WRITEBACK, align 4
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  %157 = call i32 @set_bit(i32 %154, i32* %156)
  br label %158

158:                                              ; preds = %153, %143, %137
  %159 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %160 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %179

164:                                              ; preds = %158
  %165 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %166 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %170 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %168, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %164
  %175 = load i32, i32* @PGDAT_CONGESTED, align 4
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  %178 = call i32 @set_bit(i32 %175, i32* %177)
  br label %179

179:                                              ; preds = %174, %164, %158
  %180 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %181 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %185 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 5
  %187 = load i64, i64* %186, align 8
  %188 = icmp eq i64 %183, %187
  br i1 %188, label %189, label %194

189:                                              ; preds = %179
  %190 = load i32, i32* @PGDAT_DIRTY, align 4
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 1
  %193 = call i32 @set_bit(i32 %190, i32* %192)
  br label %194

194:                                              ; preds = %189, %179
  %195 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %196 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 6
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %194
  %201 = load i32, i32* @BLK_RW_ASYNC, align 4
  %202 = load i32, i32* @HZ, align 4
  %203 = sdiv i32 %202, 10
  %204 = call i32 @congestion_wait(i32 %201, i32 %203)
  br label %205

205:                                              ; preds = %200, %194
  br label %206

206:                                              ; preds = %205, %134
  %207 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %208 = call i32 @global_reclaim(%struct.scan_control* %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %234, label %210

210:                                              ; preds = %206
  %211 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %212 = call i64 @sane_reclaim(%struct.scan_control* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %234

214:                                              ; preds = %210
  %215 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %216 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %215, i32 0, i32 4
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %234

220:                                              ; preds = %214
  %221 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %222 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %221, i32 0, i32 4
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %226 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %225, i32 0, i32 4
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = icmp eq i64 %224, %228
  br i1 %229, label %230, label %234

230:                                              ; preds = %220
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %232 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %233 = call i32 @set_memcg_congestion(%struct.TYPE_9__* %231, %struct.mem_cgroup* %232, i32 1)
  br label %234

234:                                              ; preds = %230, %220, %214, %210, %206
  %235 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %236 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %255, label %239

239:                                              ; preds = %234
  %240 = call i64 (...) @current_is_kswapd()
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %255, label %242

242:                                              ; preds = %239
  %243 = call i64 (...) @current_may_throttle()
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %255

245:                                              ; preds = %242
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %247 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %248 = call i64 @pgdat_memcg_congested(%struct.TYPE_9__* %246, %struct.mem_cgroup* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %245
  %251 = load i32, i32* @BLK_RW_ASYNC, align 4
  %252 = load i32, i32* @HZ, align 4
  %253 = sdiv i32 %252, 10
  %254 = call i32 @wait_iff_congested(i32 %251, i32 %253)
  br label %255

255:                                              ; preds = %250, %245, %242, %239, %234
  br label %256

256:                                              ; preds = %255
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %258 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %259 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* %6, align 8
  %262 = sub i64 %260, %261
  %263 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %264 = call i64 @should_continue_reclaim(%struct.TYPE_9__* %257, i64 %262, %struct.scan_control* %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %18, label %266

266:                                              ; preds = %256
  %267 = load i32, i32* %8, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %266
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 0
  store i64 0, i64* %271, align 8
  br label %272

272:                                              ; preds = %269, %266
  %273 = load i32, i32* %8, align 4
  ret i32 %273
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local %struct.mem_cgroup* @mem_cgroup_iter(%struct.mem_cgroup*, %struct.mem_cgroup*, i32*) #1

declare dso_local i32 @mem_cgroup_protected(%struct.mem_cgroup*, %struct.mem_cgroup*) #1

declare dso_local i32 @memcg_memory_event(%struct.mem_cgroup*, i32) #1

declare dso_local i32 @shrink_node_memcg(%struct.TYPE_9__*, %struct.mem_cgroup*, %struct.scan_control*, i64*) #1

declare dso_local i32 @shrink_slab(i32, i32, %struct.mem_cgroup*, i32) #1

declare dso_local i32 @vmpressure(i32, %struct.mem_cgroup*, i32, i64, i64) #1

declare dso_local i64 @current_is_kswapd(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @congestion_wait(i32, i32) #1

declare dso_local i32 @global_reclaim(%struct.scan_control*) #1

declare dso_local i64 @sane_reclaim(%struct.scan_control*) #1

declare dso_local i32 @set_memcg_congestion(%struct.TYPE_9__*, %struct.mem_cgroup*, i32) #1

declare dso_local i64 @current_may_throttle(...) #1

declare dso_local i64 @pgdat_memcg_congested(%struct.TYPE_9__*, %struct.mem_cgroup*) #1

declare dso_local i32 @wait_iff_congested(i32, i32) #1

declare dso_local i64 @should_continue_reclaim(%struct.TYPE_9__*, i64, %struct.scan_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
