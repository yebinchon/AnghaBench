; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_budget.c_ubifs_budget_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_budget.c_ubifs_budget_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.ubifs_budget_req = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@UBIFS_MAX_INO_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"no space\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"no space for fast budgeting\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"try again\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"-ENOSPC, but anyway try once again\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"FS is full, -ENOSPC\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"cannot budget space, error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_budget_space(%struct.ubifs_info* %0, %struct.ubifs_budget_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_budget_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_budget_req* %1, %struct.ubifs_budget_req** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %12 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %5, align 8
  %13 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sle i32 %14, 1
  %16 = zext i1 %15 to i32
  %17 = call i32 @ubifs_assert(%struct.ubifs_info* %11, i32 %16)
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %19 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %5, align 8
  %20 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sle i32 %21, 1
  %23 = zext i1 %22 to i32
  %24 = call i32 @ubifs_assert(%struct.ubifs_info* %18, i32 %23)
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %26 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %5, align 8
  %27 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp sle i32 %28, 1
  %30 = zext i1 %29 to i32
  %31 = call i32 @ubifs_assert(%struct.ubifs_info* %25, i32 %30)
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %33 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %5, align 8
  %34 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp sle i32 %35, 1
  %37 = zext i1 %36 to i32
  %38 = call i32 @ubifs_assert(%struct.ubifs_info* %32, i32 %37)
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %40 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %5, align 8
  %41 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = icmp sle i32 %42, 1
  %44 = zext i1 %43 to i32
  %45 = call i32 @ubifs_assert(%struct.ubifs_info* %39, i32 %44)
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %47 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %5, align 8
  %48 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @UBIFS_MAX_INO_DATA, align 4
  %51 = icmp sle i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @ubifs_assert(%struct.ubifs_info* %46, i32 %52)
  %54 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %55 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %5, align 8
  %56 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = icmp sle i32 %57, 4
  %59 = zext i1 %58 to i32
  %60 = call i32 @ubifs_assert(%struct.ubifs_info* %54, i32 %59)
  %61 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %62 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %5, align 8
  %63 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @UBIFS_MAX_INO_DATA, align 4
  %66 = mul nsw i32 %65, 4
  %67 = icmp sle i32 %64, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @ubifs_assert(%struct.ubifs_info* %61, i32 %68)
  %70 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %71 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %5, align 8
  %72 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 7
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i32 @ubifs_assert(%struct.ubifs_info* %70, i32 %77)
  %79 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %80 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %5, align 8
  %81 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 7
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i32 @ubifs_assert(%struct.ubifs_info* %79, i32 %86)
  %88 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %89 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %5, align 8
  %90 = call i32 @calc_data_growth(%struct.ubifs_info* %88, %struct.ubifs_budget_req* %89)
  store i32 %90, i32* %8, align 4
  %91 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %92 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %5, align 8
  %93 = call i32 @calc_dd_growth(%struct.ubifs_info* %91, %struct.ubifs_budget_req* %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %2
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  store i32 0, i32* %3, align 4
  br label %270

100:                                              ; preds = %96, %2
  %101 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %102 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %5, align 8
  %103 = call i32 @calc_idx_growth(%struct.ubifs_info* %101, %struct.ubifs_budget_req* %102)
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %242, %232, %100
  %105 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %106 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %105, i32 0, i32 2
  %107 = call i32 @spin_lock(i32* %106)
  %108 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %109 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %110 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp sge i32 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 @ubifs_assert(%struct.ubifs_info* %108, i32 %114)
  %116 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %117 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %118 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp sge i32 %120, 0
  %122 = zext i1 %121 to i32
  %123 = call i32 @ubifs_assert(%struct.ubifs_info* %116, i32 %122)
  %124 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %125 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %126 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp sge i32 %128, 0
  %130 = zext i1 %129 to i32
  %131 = call i32 @ubifs_assert(%struct.ubifs_info* %124, i32 %130)
  %132 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %133 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @unlikely(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %155

138:                                              ; preds = %104
  %139 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %140 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %138
  %145 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %146 = call i64 @can_use_rp(%struct.ubifs_info* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %144, %138
  %149 = call i32 @dbg_budg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %150 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %151 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %150, i32 0, i32 2
  %152 = call i32 @spin_unlock(i32* %151)
  %153 = load i32, i32* @ENOSPC, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %3, align 4
  br label %270

155:                                              ; preds = %144, %104
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %158 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, %156
  store i32 %161, i32* %159, align 8
  %162 = load i32, i32* %8, align 4
  %163 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %164 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, %162
  store i32 %167, i32* %165, align 4
  %168 = load i32, i32* %9, align 4
  %169 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %170 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, %168
  store i32 %173, i32* %171, align 8
  %174 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %175 = call i32 @do_budget_space(%struct.ubifs_info* %174)
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* %6, align 4
  %177 = icmp ne i32 %176, 0
  %178 = xor i1 %177, true
  %179 = zext i1 %178 to i32
  %180 = call i64 @likely(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %195

182:                                              ; preds = %155
  %183 = load i32, i32* %7, align 4
  %184 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %5, align 8
  %185 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %184, i32 0, i32 8
  store i32 %183, i32* %185, align 8
  %186 = load i32, i32* %8, align 4
  %187 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %5, align 8
  %188 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %187, i32 0, i32 9
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* %9, align 4
  %190 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %5, align 8
  %191 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %190, i32 0, i32 10
  store i32 %189, i32* %191, align 8
  %192 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %193 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %192, i32 0, i32 2
  %194 = call i32 @spin_unlock(i32* %193)
  store i32 0, i32* %3, align 4
  br label %270

195:                                              ; preds = %155
  %196 = load i32, i32* %7, align 4
  %197 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %198 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = sub nsw i32 %200, %196
  store i32 %201, i32* %199, align 8
  %202 = load i32, i32* %8, align 4
  %203 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %204 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = sub nsw i32 %206, %202
  store i32 %207, i32* %205, align 4
  %208 = load i32, i32* %9, align 4
  %209 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %210 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = sub nsw i32 %212, %208
  store i32 %213, i32* %211, align 8
  %214 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %215 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %214, i32 0, i32 2
  %216 = call i32 @spin_unlock(i32* %215)
  %217 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %5, align 8
  %218 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %217, i32 0, i32 11
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %195
  %222 = call i32 @dbg_budg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %223 = load i32, i32* %6, align 4
  store i32 %223, i32* %3, align 4
  br label %270

224:                                              ; preds = %195
  %225 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %226 = call i32 @make_free_space(%struct.ubifs_info* %225)
  store i32 %226, i32* %6, align 4
  %227 = call i32 (...) @cond_resched()
  %228 = load i32, i32* %6, align 4
  %229 = load i32, i32* @EAGAIN, align 4
  %230 = sub nsw i32 0, %229
  %231 = icmp eq i32 %228, %230
  br i1 %231, label %232, label %234

232:                                              ; preds = %224
  %233 = call i32 @dbg_budg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %104

234:                                              ; preds = %224
  %235 = load i32, i32* %6, align 4
  %236 = load i32, i32* @ENOSPC, align 4
  %237 = sub nsw i32 0, %236
  %238 = icmp eq i32 %235, %237
  br i1 %238, label %239, label %263

239:                                              ; preds = %234
  %240 = load i32, i32* %10, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %239
  store i32 1, i32* %10, align 4
  %243 = call i32 @dbg_budg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %104

244:                                              ; preds = %239
  %245 = call i32 @dbg_budg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %246 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %247 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 3
  store i32 1, i32* %248, align 4
  %249 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %250 = call i64 @can_use_rp(%struct.ubifs_info* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %257, label %252

252:                                              ; preds = %244
  %253 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %254 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %252, %244
  %258 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %259 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 4
  store i32 1, i32* %260, align 8
  br label %261

261:                                              ; preds = %257, %252
  %262 = call i32 (...) @smp_wmb()
  br label %267

263:                                              ; preds = %234
  %264 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %265 = load i32, i32* %6, align 4
  %266 = call i32 @ubifs_err(%struct.ubifs_info* %264, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %265)
  br label %267

267:                                              ; preds = %263, %261
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %6, align 4
  store i32 %269, i32* %3, align 4
  br label %270

270:                                              ; preds = %268, %221, %182, %148, %99
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @calc_data_growth(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @calc_dd_growth(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @calc_idx_growth(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @can_use_rp(%struct.ubifs_info*) #1

declare dso_local i32 @dbg_budg(i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @do_budget_space(%struct.ubifs_info*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @make_free_space(%struct.ubifs_info*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
