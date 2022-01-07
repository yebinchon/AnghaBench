; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_balance_dirty_pages.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_balance_dirty_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.bdi_writeback = type { i32, i64, i64, i32, i64, %struct.backing_dev_info* }
%struct.backing_dev_info = type { i32 }
%struct.dirty_throttle_control = type { i64, i64, i64, i64, i64, i64, i64, i32, i32 }

@BDI_CAP_STRICTLIMIT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@NR_FILE_DIRTY = common dso_local global i32 0, align 4
@NR_UNSTABLE_NFS = common dso_local global i32 0, align 4
@NR_WRITEBACK = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_3__* null, align 8
@BANDWIDTH_INTERVAL = common dso_local global i64 0, align 8
@RATELIMIT_CALC_SHIFT = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@TASK_KILLABLE = common dso_local global i32 0, align 4
@laptop_mode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bdi_writeback*, i64)* @balance_dirty_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balance_dirty_pages(%struct.bdi_writeback* %0, i64 %1) #0 {
  %3 = alloca %struct.bdi_writeback*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dirty_throttle_control, align 8
  %6 = alloca %struct.dirty_throttle_control, align 8
  %7 = alloca %struct.dirty_throttle_control*, align 8
  %8 = alloca %struct.dirty_throttle_control*, align 8
  %9 = alloca %struct.dirty_throttle_control*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.backing_dev_info*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  store %struct.bdi_writeback* %0, %struct.bdi_writeback** %3, align 8
  store i64 %1, i64* %4, align 8
  %34 = bitcast %struct.dirty_throttle_control* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %34, i8 0, i64 64, i1 false)
  %35 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %5, i32 0, i32 0
  %36 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %37 = call i32 @GDTC_INIT(%struct.bdi_writeback* %36)
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %35, align 8
  %39 = bitcast %struct.dirty_throttle_control* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %39, i8 0, i64 64, i1 false)
  %40 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %6, i32 0, i32 0
  %41 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %42 = call i32 @MDTC_INIT(%struct.bdi_writeback* %41, %struct.dirty_throttle_control* %5)
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %40, align 8
  store %struct.dirty_throttle_control* %5, %struct.dirty_throttle_control** %7, align 8
  %44 = call i64 @mdtc_valid(%struct.dirty_throttle_control* %6)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %2
  br label %48

47:                                               ; preds = %2
  br label %48

48:                                               ; preds = %47, %46
  %49 = phi %struct.dirty_throttle_control* [ %6, %46 ], [ null, %47 ]
  store %struct.dirty_throttle_control* %49, %struct.dirty_throttle_control** %8, align 8
  store i32 0, i32* %16, align 4
  %50 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %51 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %50, i32 0, i32 5
  %52 = load %struct.backing_dev_info*, %struct.backing_dev_info** %51, align 8
  store %struct.backing_dev_info* %52, %struct.backing_dev_info** %19, align 8
  %53 = load %struct.backing_dev_info*, %struct.backing_dev_info** %19, align 8
  %54 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @BDI_CAP_STRICTLIMIT, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %20, align 4
  %58 = load i64, i64* @jiffies, align 8
  store i64 %58, i64* %21, align 8
  br label %59

59:                                               ; preds = %493, %48
  %60 = load i64, i64* @jiffies, align 8
  store i64 %60, i64* %22, align 8
  store i64 0, i64* %26, align 8
  store i64 0, i64* %27, align 8
  store i64 0, i64* %28, align 8
  %61 = load i32, i32* @NR_FILE_DIRTY, align 4
  %62 = call i64 @global_node_page_state(i32 %61)
  %63 = load i32, i32* @NR_UNSTABLE_NFS, align 4
  %64 = call i64 @global_node_page_state(i32 %63)
  %65 = add i64 %62, %64
  store i64 %65, i64* %10, align 8
  %66 = call i32 (...) @global_dirtyable_memory()
  %67 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %7, align 8
  %68 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load i32, i32* @NR_WRITEBACK, align 4
  %71 = call i64 @global_node_page_state(i32 %70)
  %72 = add i64 %69, %71
  %73 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %7, align 8
  %74 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %7, align 8
  %76 = call i32 @domain_dirty_limits(%struct.dirty_throttle_control* %75)
  %77 = load i32, i32* %20, align 4
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %59
  %81 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %7, align 8
  %82 = call i32 @wb_dirty_limits(%struct.dirty_throttle_control* %81)
  %83 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %7, align 8
  %84 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %23, align 8
  %86 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %7, align 8
  %87 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %24, align 8
  %89 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %7, align 8
  %90 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %25, align 8
  br label %102

92:                                               ; preds = %59
  %93 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %7, align 8
  %94 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %23, align 8
  %96 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %7, align 8
  %97 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %24, align 8
  %99 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %7, align 8
  %100 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %25, align 8
  br label %102

102:                                              ; preds = %92, %80
  %103 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %8, align 8
  %104 = icmp ne %struct.dirty_throttle_control* %103, null
  br i1 %104, label %105, label %147

105:                                              ; preds = %102
  %106 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %107 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %8, align 8
  %108 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %107, i32 0, i32 0
  %109 = call i32 @mem_cgroup_wb_stats(%struct.bdi_writeback* %106, i64* %29, i64* %30, i64* %108, i64* %31)
  %110 = load i64, i64* %31, align 8
  %111 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %8, align 8
  %112 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %113, %110
  store i64 %114, i64* %112, align 8
  %115 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %8, align 8
  %116 = load i64, i64* %29, align 8
  %117 = load i64, i64* %30, align 8
  %118 = call i32 @mdtc_calc_avail(%struct.dirty_throttle_control* %115, i64 %116, i64 %117)
  %119 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %8, align 8
  %120 = call i32 @domain_dirty_limits(%struct.dirty_throttle_control* %119)
  %121 = load i32, i32* %20, align 4
  %122 = call i64 @unlikely(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %105
  %125 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %8, align 8
  %126 = call i32 @wb_dirty_limits(%struct.dirty_throttle_control* %125)
  %127 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %8, align 8
  %128 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %26, align 8
  %130 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %8, align 8
  %131 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %27, align 8
  %133 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %8, align 8
  %134 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %28, align 8
  br label %146

136:                                              ; preds = %105
  %137 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %8, align 8
  %138 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %26, align 8
  %140 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %8, align 8
  %141 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %27, align 8
  %143 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %8, align 8
  %144 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %28, align 8
  br label %146

146:                                              ; preds = %136, %124
  br label %147

147:                                              ; preds = %146, %102
  %148 = load i64, i64* %23, align 8
  %149 = load i64, i64* %24, align 8
  %150 = load i64, i64* %25, align 8
  %151 = call i64 @dirty_freerun_ceiling(i64 %149, i64 %150)
  %152 = icmp ule i64 %148, %151
  br i1 %152, label %153, label %184

153:                                              ; preds = %147
  %154 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %8, align 8
  %155 = icmp ne %struct.dirty_throttle_control* %154, null
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = load i64, i64* %26, align 8
  %158 = load i64, i64* %27, align 8
  %159 = load i64, i64* %28, align 8
  %160 = call i64 @dirty_freerun_ceiling(i64 %158, i64 %159)
  %161 = icmp ule i64 %157, %160
  br i1 %161, label %162, label %184

162:                                              ; preds = %156, %153
  %163 = load i64, i64* %23, align 8
  %164 = load i64, i64* %24, align 8
  %165 = call i64 @dirty_poll_interval(i64 %163, i64 %164)
  store i64 %165, i64* %32, align 8
  %166 = load i64, i64* @ULONG_MAX, align 8
  store i64 %166, i64* %33, align 8
  %167 = load i64, i64* %22, align 8
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  store i64 %167, i64* %169, align 8
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 2
  store i64 0, i64* %171, align 8
  %172 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %8, align 8
  %173 = icmp ne %struct.dirty_throttle_control* %172, null
  br i1 %173, label %174, label %178

174:                                              ; preds = %162
  %175 = load i64, i64* %26, align 8
  %176 = load i64, i64* %27, align 8
  %177 = call i64 @dirty_poll_interval(i64 %175, i64 %176)
  store i64 %177, i64* %33, align 8
  br label %178

178:                                              ; preds = %174, %162
  %179 = load i64, i64* %32, align 8
  %180 = load i64, i64* %33, align 8
  %181 = call i64 @min(i64 %179, i64 %180)
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 1
  store i64 %181, i64* %183, align 8
  br label %494

184:                                              ; preds = %156, %147
  %185 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %186 = call i64 @writeback_in_progress(%struct.bdi_writeback* %185)
  %187 = icmp ne i64 %186, 0
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  %190 = call i64 @unlikely(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %184
  %193 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %194 = call i32 @wb_start_background_writeback(%struct.bdi_writeback* %193)
  br label %195

195:                                              ; preds = %192, %184
  %196 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %197 = call i32 @mem_cgroup_flush_foreign(%struct.bdi_writeback* %196)
  %198 = load i32, i32* %20, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %195
  %201 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %7, align 8
  %202 = call i32 @wb_dirty_limits(%struct.dirty_throttle_control* %201)
  br label %203

203:                                              ; preds = %200, %195
  %204 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %7, align 8
  %205 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %7, align 8
  %208 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = icmp ugt i64 %206, %209
  br i1 %210, label %211, label %224

211:                                              ; preds = %203
  %212 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %7, align 8
  %213 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %7, align 8
  %216 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %215, i32 0, i32 4
  %217 = load i64, i64* %216, align 8
  %218 = icmp ugt i64 %214, %217
  br i1 %218, label %222, label %219

219:                                              ; preds = %211
  %220 = load i32, i32* %20, align 4
  %221 = icmp ne i32 %220, 0
  br label %222

222:                                              ; preds = %219, %211
  %223 = phi i1 [ true, %211 ], [ %221, %219 ]
  br label %224

224:                                              ; preds = %222, %203
  %225 = phi i1 [ false, %203 ], [ %223, %222 ]
  %226 = zext i1 %225 to i32
  store i32 %226, i32* %16, align 4
  %227 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %7, align 8
  %228 = call i32 @wb_position_ratio(%struct.dirty_throttle_control* %227)
  %229 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %7, align 8
  store %struct.dirty_throttle_control* %229, %struct.dirty_throttle_control** %9, align 8
  %230 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %8, align 8
  %231 = icmp ne %struct.dirty_throttle_control* %230, null
  br i1 %231, label %232, label %276

232:                                              ; preds = %224
  %233 = load i32, i32* %20, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %232
  %236 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %8, align 8
  %237 = call i32 @wb_dirty_limits(%struct.dirty_throttle_control* %236)
  br label %238

238:                                              ; preds = %235, %232
  %239 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %8, align 8
  %240 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %8, align 8
  %243 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = icmp ugt i64 %241, %244
  br i1 %245, label %246, label %259

246:                                              ; preds = %238
  %247 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %8, align 8
  %248 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %8, align 8
  %251 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %250, i32 0, i32 4
  %252 = load i64, i64* %251, align 8
  %253 = icmp ugt i64 %249, %252
  br i1 %253, label %257, label %254

254:                                              ; preds = %246
  %255 = load i32, i32* %20, align 4
  %256 = icmp ne i32 %255, 0
  br label %257

257:                                              ; preds = %254, %246
  %258 = phi i1 [ true, %246 ], [ %256, %254 ]
  br label %259

259:                                              ; preds = %257, %238
  %260 = phi i1 [ false, %238 ], [ %258, %257 ]
  %261 = zext i1 %260 to i32
  %262 = load i32, i32* %16, align 4
  %263 = or i32 %262, %261
  store i32 %263, i32* %16, align 4
  %264 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %8, align 8
  %265 = call i32 @wb_position_ratio(%struct.dirty_throttle_control* %264)
  %266 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %8, align 8
  %267 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %266, i32 0, i32 6
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %7, align 8
  %270 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %269, i32 0, i32 6
  %271 = load i64, i64* %270, align 8
  %272 = icmp slt i64 %268, %271
  br i1 %272, label %273, label %275

273:                                              ; preds = %259
  %274 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %8, align 8
  store %struct.dirty_throttle_control* %274, %struct.dirty_throttle_control** %9, align 8
  br label %275

275:                                              ; preds = %273, %259
  br label %276

276:                                              ; preds = %275, %224
  %277 = load i32, i32* %16, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %287

279:                                              ; preds = %276
  %280 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %281 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %279
  %285 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %286 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %285, i32 0, i32 0
  store i32 1, i32* %286, align 8
  br label %287

287:                                              ; preds = %284, %279, %276
  %288 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %289 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %288, i32 0, i32 4
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @BANDWIDTH_INTERVAL, align 8
  %292 = add nsw i64 %290, %291
  %293 = call i64 @time_is_before_jiffies(i64 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %306

295:                                              ; preds = %287
  %296 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %297 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %296, i32 0, i32 3
  %298 = call i32 @spin_lock(i32* %297)
  %299 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %7, align 8
  %300 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %8, align 8
  %301 = load i64, i64* %21, align 8
  %302 = call i32 @__wb_update_bandwidth(%struct.dirty_throttle_control* %299, %struct.dirty_throttle_control* %300, i64 %301, i32 1)
  %303 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %304 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %303, i32 0, i32 3
  %305 = call i32 @spin_unlock(i32* %304)
  br label %306

306:                                              ; preds = %295, %287
  %307 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %308 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %307, i32 0, i32 1
  %309 = load i64, i64* %308, align 8
  store i64 %309, i64* %18, align 8
  %310 = load i64, i64* %18, align 8
  %311 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %9, align 8
  %312 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %311, i32 0, i32 6
  %313 = load i64, i64* %312, align 8
  %314 = mul i64 %310, %313
  %315 = load i64, i64* @RATELIMIT_CALC_SHIFT, align 8
  %316 = lshr i64 %314, %315
  store i64 %316, i64* %17, align 8
  %317 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %318 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %9, align 8
  %319 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = call i64 @wb_max_pause(%struct.bdi_writeback* %317, i64 %320)
  store i64 %321, i64* %13, align 8
  %322 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %323 = load i64, i64* %13, align 8
  %324 = load i64, i64* %17, align 8
  %325 = load i64, i64* %18, align 8
  %326 = call i64 @wb_min_pause(%struct.bdi_writeback* %322, i64 %323, i64 %324, i64 %325, i32* %15)
  store i64 %326, i64* %14, align 8
  %327 = load i64, i64* %17, align 8
  %328 = icmp eq i64 %327, 0
  %329 = zext i1 %328 to i32
  %330 = call i64 @unlikely(i32 %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %306
  %333 = load i64, i64* %13, align 8
  store i64 %333, i64* %11, align 8
  %334 = load i64, i64* %13, align 8
  store i64 %334, i64* %12, align 8
  br label %436

335:                                              ; preds = %306
  %336 = load i64, i64* @HZ, align 8
  %337 = load i64, i64* %4, align 8
  %338 = mul i64 %336, %337
  %339 = load i64, i64* %17, align 8
  %340 = udiv i64 %338, %339
  store i64 %340, i64* %11, align 8
  %341 = load i64, i64* %11, align 8
  store i64 %341, i64* %12, align 8
  %342 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %343 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %354

346:                                              ; preds = %335
  %347 = load i64, i64* %22, align 8
  %348 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %349 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = sub i64 %347, %350
  %352 = load i64, i64* %12, align 8
  %353 = sub i64 %352, %351
  store i64 %353, i64* %12, align 8
  br label %354

354:                                              ; preds = %346, %335
  %355 = load i64, i64* %12, align 8
  %356 = load i64, i64* %14, align 8
  %357 = icmp slt i64 %355, %356
  br i1 %357, label %358, label %419

358:                                              ; preds = %354
  %359 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %360 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %9, align 8
  %361 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %360, i32 0, i32 4
  %362 = load i64, i64* %361, align 8
  %363 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %9, align 8
  %364 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %363, i32 0, i32 5
  %365 = load i64, i64* %364, align 8
  %366 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %9, align 8
  %367 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %9, align 8
  %370 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %369, i32 0, i32 2
  %371 = load i64, i64* %370, align 8
  %372 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %9, align 8
  %373 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %372, i32 0, i32 1
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* %18, align 8
  %376 = load i64, i64* %17, align 8
  %377 = load i64, i64* %4, align 8
  %378 = load i64, i64* %11, align 8
  %379 = load i64, i64* %12, align 8
  %380 = call i64 @min(i64 %379, i64 0)
  %381 = load i64, i64* %21, align 8
  %382 = call i32 @trace_balance_dirty_pages(%struct.bdi_writeback* %359, i64 %362, i64 %365, i64 %368, i64 %371, i64 %374, i64 %375, i64 %376, i64 %377, i64 %378, i64 %380, i64 %381)
  %383 = load i64, i64* %12, align 8
  %384 = load i64, i64* @HZ, align 8
  %385 = sub i64 0, %384
  %386 = icmp ult i64 %383, %385
  br i1 %386, label %387, label %393

387:                                              ; preds = %358
  %388 = load i64, i64* %22, align 8
  %389 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %390 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %389, i32 0, i32 0
  store i64 %388, i64* %390, align 8
  %391 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %392 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %391, i32 0, i32 2
  store i64 0, i64* %392, align 8
  br label %418

393:                                              ; preds = %358
  %394 = load i64, i64* %11, align 8
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %404

396:                                              ; preds = %393
  %397 = load i64, i64* %11, align 8
  %398 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %399 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %398, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = add i64 %400, %397
  store i64 %401, i64* %399, align 8
  %402 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %403 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %402, i32 0, i32 2
  store i64 0, i64* %403, align 8
  br label %417

404:                                              ; preds = %393
  %405 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %406 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %405, i32 0, i32 1
  %407 = load i64, i64* %406, align 8
  %408 = load i64, i64* %4, align 8
  %409 = icmp ule i64 %407, %408
  br i1 %409, label %410, label %416

410:                                              ; preds = %404
  %411 = load i64, i64* %4, align 8
  %412 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %413 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %412, i32 0, i32 1
  %414 = load i64, i64* %413, align 8
  %415 = add i64 %414, %411
  store i64 %415, i64* %413, align 8
  br label %416

416:                                              ; preds = %410, %404
  br label %417

417:                                              ; preds = %416, %396
  br label %418

418:                                              ; preds = %417, %387
  br label %494

419:                                              ; preds = %354
  %420 = load i64, i64* %12, align 8
  %421 = load i64, i64* %13, align 8
  %422 = icmp sgt i64 %420, %421
  %423 = zext i1 %422 to i32
  %424 = call i64 @unlikely(i32 %423)
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %435

426:                                              ; preds = %419
  %427 = load i64, i64* %12, align 8
  %428 = load i64, i64* %13, align 8
  %429 = sub nsw i64 %427, %428
  %430 = load i64, i64* %13, align 8
  %431 = call i64 @min(i64 %429, i64 %430)
  %432 = load i64, i64* %22, align 8
  %433 = add i64 %432, %431
  store i64 %433, i64* %22, align 8
  %434 = load i64, i64* %13, align 8
  store i64 %434, i64* %12, align 8
  br label %435

435:                                              ; preds = %426, %419
  br label %436

436:                                              ; preds = %435, %332
  %437 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %438 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %9, align 8
  %439 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %438, i32 0, i32 4
  %440 = load i64, i64* %439, align 8
  %441 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %9, align 8
  %442 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %441, i32 0, i32 5
  %443 = load i64, i64* %442, align 8
  %444 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %9, align 8
  %445 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %444, i32 0, i32 0
  %446 = load i64, i64* %445, align 8
  %447 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %9, align 8
  %448 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %447, i32 0, i32 2
  %449 = load i64, i64* %448, align 8
  %450 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %9, align 8
  %451 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %450, i32 0, i32 1
  %452 = load i64, i64* %451, align 8
  %453 = load i64, i64* %18, align 8
  %454 = load i64, i64* %17, align 8
  %455 = load i64, i64* %4, align 8
  %456 = load i64, i64* %11, align 8
  %457 = load i64, i64* %12, align 8
  %458 = load i64, i64* %21, align 8
  %459 = call i32 @trace_balance_dirty_pages(%struct.bdi_writeback* %437, i64 %440, i64 %443, i64 %446, i64 %449, i64 %452, i64 %453, i64 %454, i64 %455, i64 %456, i64 %457, i64 %458)
  %460 = load i32, i32* @TASK_KILLABLE, align 4
  %461 = call i32 @__set_current_state(i32 %460)
  %462 = load i64, i64* %22, align 8
  %463 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %464 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %463, i32 0, i32 2
  store i64 %462, i64* %464, align 8
  %465 = load i64, i64* %12, align 8
  %466 = call i32 @io_schedule_timeout(i64 %465)
  %467 = load i64, i64* %22, align 8
  %468 = load i64, i64* %12, align 8
  %469 = add i64 %467, %468
  %470 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %471 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %470, i32 0, i32 0
  store i64 %469, i64* %471, align 8
  %472 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %473 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %472, i32 0, i32 2
  store i64 0, i64* %473, align 8
  %474 = load i32, i32* %15, align 4
  %475 = sext i32 %474 to i64
  %476 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %477 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %476, i32 0, i32 1
  store i64 %475, i64* %477, align 8
  %478 = load i64, i64* %17, align 8
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %481

480:                                              ; preds = %436
  br label %494

481:                                              ; preds = %436
  %482 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %9, align 8
  %483 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %482, i32 0, i32 1
  %484 = load i64, i64* %483, align 8
  %485 = call i64 (...) @wb_stat_error()
  %486 = icmp ule i64 %484, %485
  br i1 %486, label %487, label %488

487:                                              ; preds = %481
  br label %494

488:                                              ; preds = %481
  %489 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %490 = call i64 @fatal_signal_pending(%struct.TYPE_3__* %489)
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %493

492:                                              ; preds = %488
  br label %494

493:                                              ; preds = %488
  br label %59

494:                                              ; preds = %492, %487, %480, %418, %178
  %495 = load i32, i32* %16, align 4
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %505, label %497

497:                                              ; preds = %494
  %498 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %499 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %505

502:                                              ; preds = %497
  %503 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %504 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %503, i32 0, i32 0
  store i32 0, i32* %504, align 8
  br label %505

505:                                              ; preds = %502, %497, %494
  %506 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %507 = call i64 @writeback_in_progress(%struct.bdi_writeback* %506)
  %508 = icmp ne i64 %507, 0
  br i1 %508, label %509, label %510

509:                                              ; preds = %505
  br label %523

510:                                              ; preds = %505
  %511 = load i64, i64* @laptop_mode, align 8
  %512 = icmp ne i64 %511, 0
  br i1 %512, label %513, label %514

513:                                              ; preds = %510
  br label %523

514:                                              ; preds = %510
  %515 = load i64, i64* %10, align 8
  %516 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %7, align 8
  %517 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %516, i32 0, i32 5
  %518 = load i64, i64* %517, align 8
  %519 = icmp ugt i64 %515, %518
  br i1 %519, label %520, label %523

520:                                              ; preds = %514
  %521 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %522 = call i32 @wb_start_background_writeback(%struct.bdi_writeback* %521)
  br label %523

523:                                              ; preds = %509, %513, %520, %514
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @GDTC_INIT(%struct.bdi_writeback*) #2

declare dso_local i32 @MDTC_INIT(%struct.bdi_writeback*, %struct.dirty_throttle_control*) #2

declare dso_local i64 @mdtc_valid(%struct.dirty_throttle_control*) #2

declare dso_local i64 @global_node_page_state(i32) #2

declare dso_local i32 @global_dirtyable_memory(...) #2

declare dso_local i32 @domain_dirty_limits(%struct.dirty_throttle_control*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @wb_dirty_limits(%struct.dirty_throttle_control*) #2

declare dso_local i32 @mem_cgroup_wb_stats(%struct.bdi_writeback*, i64*, i64*, i64*, i64*) #2

declare dso_local i32 @mdtc_calc_avail(%struct.dirty_throttle_control*, i64, i64) #2

declare dso_local i64 @dirty_freerun_ceiling(i64, i64) #2

declare dso_local i64 @dirty_poll_interval(i64, i64) #2

declare dso_local i64 @min(i64, i64) #2

declare dso_local i64 @writeback_in_progress(%struct.bdi_writeback*) #2

declare dso_local i32 @wb_start_background_writeback(%struct.bdi_writeback*) #2

declare dso_local i32 @mem_cgroup_flush_foreign(%struct.bdi_writeback*) #2

declare dso_local i32 @wb_position_ratio(%struct.dirty_throttle_control*) #2

declare dso_local i64 @time_is_before_jiffies(i64) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @__wb_update_bandwidth(%struct.dirty_throttle_control*, %struct.dirty_throttle_control*, i64, i32) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i64 @wb_max_pause(%struct.bdi_writeback*, i64) #2

declare dso_local i64 @wb_min_pause(%struct.bdi_writeback*, i64, i64, i64, i32*) #2

declare dso_local i32 @trace_balance_dirty_pages(%struct.bdi_writeback*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @__set_current_state(i32) #2

declare dso_local i32 @io_schedule_timeout(i64) #2

declare dso_local i64 @wb_stat_error(...) #2

declare dso_local i64 @fatal_signal_pending(%struct.TYPE_3__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
