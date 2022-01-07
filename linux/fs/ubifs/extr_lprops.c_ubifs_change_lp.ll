; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lprops.c_ubifs_change_lp.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lprops.c_ubifs_change_lp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i64, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.ubifs_lprops = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"LEB %d, free %d, dirty %d, flags %d\00", align 1
@LPROPS_NC = common dso_local global i32 0, align 4
@LPROPS_TAKEN = common dso_local global i32 0, align 4
@LPROPS_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubifs_lprops* @ubifs_change_lp(%struct.ubifs_info* %0, %struct.ubifs_lprops* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ubifs_lprops*, align 8
  %8 = alloca %struct.ubifs_info*, align 8
  %9 = alloca %struct.ubifs_lprops*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ubifs_lprops*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %8, align 8
  store %struct.ubifs_lprops* %1, %struct.ubifs_lprops** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %9, align 8
  store %struct.ubifs_lprops* %17, %struct.ubifs_lprops** %14, align 8
  %18 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %19 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @dbg_lp(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %26, i32 0, i32 7
  %28 = call i32 @mutex_is_locked(i32* %27)
  %29 = call i32 @ubifs_assert(%struct.ubifs_info* %25, i32 %28)
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %32 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %6
  %37 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %38 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %42 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sle i64 %40, %43
  br label %45

45:                                               ; preds = %36, %6
  %46 = phi i1 [ false, %6 ], [ %44, %36 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @ubifs_assert(%struct.ubifs_info* %30, i32 %47)
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %51 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @ubifs_assert(%struct.ubifs_info* %49, i32 %54)
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %58 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %61 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sle i64 %59, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @ubifs_assert(%struct.ubifs_info* %56, i32 %64)
  %66 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %67 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %68 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sge i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @ubifs_assert(%struct.ubifs_info* %66, i32 %72)
  %74 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %75 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %76 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %80 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp sle i64 %78, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @ubifs_assert(%struct.ubifs_info* %74, i32 %84)
  %86 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %87 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %88 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, 7
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %45
  %94 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %95 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 7
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  br label %101

101:                                              ; preds = %93, %45
  %102 = phi i1 [ false, %45 ], [ %100, %93 ]
  %103 = zext i1 %102 to i32
  %104 = call i32 @ubifs_assert(%struct.ubifs_info* %86, i32 %103)
  %105 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %106 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %107 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, 7
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %101
  %113 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %114 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %113, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 7
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  br label %120

120:                                              ; preds = %112, %101
  %121 = phi i1 [ false, %101 ], [ %119, %112 ]
  %122 = zext i1 %121 to i32
  %123 = call i32 @ubifs_assert(%struct.ubifs_info* %105, i32 %122)
  %124 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %125 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %126 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %125, i32 0, i32 6
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, 7
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = call i32 @ubifs_assert(%struct.ubifs_info* %124, i32 %132)
  %134 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @LPROPS_NC, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %141, label %138

138:                                              ; preds = %120
  %139 = load i32, i32* %10, align 4
  %140 = icmp sge i32 %139, 0
  br label %141

141:                                              ; preds = %138, %120
  %142 = phi i1 [ true, %120 ], [ %140, %138 ]
  %143 = zext i1 %142 to i32
  %144 = call i32 @ubifs_assert(%struct.ubifs_info* %134, i32 %143)
  %145 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @LPROPS_NC, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %152, label %149

149:                                              ; preds = %141
  %150 = load i32, i32* %11, align 4
  %151 = icmp sge i32 %150, 0
  br label %152

152:                                              ; preds = %149, %141
  %153 = phi i1 [ true, %141 ], [ %151, %149 ]
  %154 = zext i1 %153 to i32
  %155 = call i32 @ubifs_assert(%struct.ubifs_info* %145, i32 %154)
  %156 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %157 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %158 = call i32 @is_lprops_dirty(%struct.ubifs_info* %156, %struct.ubifs_lprops* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %172, label %160

160:                                              ; preds = %152
  %161 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %162 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %163 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call %struct.ubifs_lprops* @ubifs_lpt_lookup_dirty(%struct.ubifs_info* %161, i32 %164)
  store %struct.ubifs_lprops* %165, %struct.ubifs_lprops** %14, align 8
  %166 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %167 = call i64 @IS_ERR(%struct.ubifs_lprops* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %160
  %170 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  store %struct.ubifs_lprops* %170, %struct.ubifs_lprops** %7, align 8
  br label %471

171:                                              ; preds = %160
  br label %183

172:                                              ; preds = %152
  %173 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %174 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %175 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %176 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %177 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = call %struct.ubifs_lprops* @ubifs_lpt_lookup_dirty(%struct.ubifs_info* %175, i32 %178)
  %180 = icmp eq %struct.ubifs_lprops* %174, %179
  %181 = zext i1 %180 to i32
  %182 = call i32 @ubifs_assert(%struct.ubifs_info* %173, i32 %181)
  br label %183

183:                                              ; preds = %172, %171
  %184 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %185 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %186 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = and i32 %187, 7
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %197, label %190

190:                                              ; preds = %183
  %191 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %192 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %193, 7
  %195 = icmp ne i32 %194, 0
  %196 = xor i1 %195, true
  br label %197

197:                                              ; preds = %190, %183
  %198 = phi i1 [ false, %183 ], [ %196, %190 ]
  %199 = zext i1 %198 to i32
  %200 = call i32 @ubifs_assert(%struct.ubifs_info* %184, i32 %199)
  %201 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %202 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %201, i32 0, i32 5
  %203 = call i32 @spin_lock(i32* %202)
  %204 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %205 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @LPROPS_TAKEN, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %224

210:                                              ; preds = %197
  %211 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %212 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %215 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = icmp eq i32 %213, %216
  br i1 %217, label %218, label %224

218:                                              ; preds = %210
  %219 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %220 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %219, i32 0, i32 6
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = sub nsw i64 %222, 1
  store i64 %223, i64* %221, align 8
  br label %224

224:                                              ; preds = %218, %210, %197
  %225 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %226 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @LPROPS_INDEX, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %273, label %231

231:                                              ; preds = %224
  %232 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %233 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %236 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %234, %237
  store i32 %238, i32* %15, align 4
  %239 = load i32, i32* %15, align 4
  %240 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %241 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = icmp slt i32 %239, %242
  br i1 %243, label %244, label %251

244:                                              ; preds = %231
  %245 = load i32, i32* %15, align 4
  %246 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %247 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %246, i32 0, i32 6
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 8
  %250 = sub nsw i32 %249, %245
  store i32 %250, i32* %248, align 8
  br label %262

251:                                              ; preds = %231
  %252 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %253 = load i32, i32* %15, align 4
  %254 = call i64 @ubifs_calc_dark(%struct.ubifs_info* %252, i32 %253)
  %255 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %256 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %255, i32 0, i32 6
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 4
  %259 = sext i32 %258 to i64
  %260 = sub nsw i64 %259, %254
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %257, align 4
  br label %262

262:                                              ; preds = %251, %244
  %263 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %264 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* %15, align 4
  %267 = sub nsw i32 %265, %266
  %268 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %269 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %268, i32 0, i32 6
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 6
  %271 = load i32, i32* %270, align 8
  %272 = sub nsw i32 %271, %267
  store i32 %272, i32* %270, align 8
  br label %273

273:                                              ; preds = %262, %224
  %274 = load i32, i32* %10, align 4
  %275 = load i32, i32* @LPROPS_NC, align 4
  %276 = icmp ne i32 %274, %275
  br i1 %276, label %277, label %329

277:                                              ; preds = %273
  %278 = load i32, i32* %10, align 4
  %279 = call i32 @ALIGN(i32 %278, i32 8)
  store i32 %279, i32* %10, align 4
  %280 = load i32, i32* %10, align 4
  %281 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %282 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = sub nsw i32 %280, %283
  %285 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %286 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %285, i32 0, i32 6
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = add nsw i32 %288, %284
  store i32 %289, i32* %287, align 8
  %290 = load i32, i32* %10, align 4
  %291 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %292 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = icmp eq i32 %290, %293
  br i1 %294, label %295, label %310

295:                                              ; preds = %277
  %296 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %297 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %300 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = icmp ne i32 %298, %301
  br i1 %302, label %303, label %309

303:                                              ; preds = %295
  %304 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %305 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %304, i32 0, i32 6
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = add nsw i64 %307, 1
  store i64 %308, i64* %306, align 8
  br label %309

309:                                              ; preds = %303, %295
  br label %325

310:                                              ; preds = %277
  %311 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %312 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %315 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = icmp eq i32 %313, %316
  br i1 %317, label %318, label %324

318:                                              ; preds = %310
  %319 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %320 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %319, i32 0, i32 6
  %321 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = sub nsw i64 %322, 1
  store i64 %323, i64* %321, align 8
  br label %324

324:                                              ; preds = %318, %310
  br label %325

325:                                              ; preds = %324, %309
  %326 = load i32, i32* %10, align 4
  %327 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %328 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %327, i32 0, i32 0
  store i32 %326, i32* %328, align 4
  br label %329

329:                                              ; preds = %325, %273
  %330 = load i32, i32* %11, align 4
  %331 = load i32, i32* @LPROPS_NC, align 4
  %332 = icmp ne i32 %330, %331
  br i1 %332, label %333, label %349

333:                                              ; preds = %329
  %334 = load i32, i32* %11, align 4
  %335 = call i32 @ALIGN(i32 %334, i32 8)
  store i32 %335, i32* %11, align 4
  %336 = load i32, i32* %11, align 4
  %337 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %338 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = sub nsw i32 %336, %339
  %341 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %342 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %341, i32 0, i32 6
  %343 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %342, i32 0, i32 3
  %344 = load i32, i32* %343, align 4
  %345 = add nsw i32 %344, %340
  store i32 %345, i32* %343, align 4
  %346 = load i32, i32* %11, align 4
  %347 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %348 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %347, i32 0, i32 1
  store i32 %346, i32* %348, align 4
  br label %349

349:                                              ; preds = %333, %329
  %350 = load i32, i32* %12, align 4
  %351 = load i32, i32* @LPROPS_NC, align 4
  %352 = icmp ne i32 %350, %351
  br i1 %352, label %353, label %388

353:                                              ; preds = %349
  %354 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %355 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @LPROPS_INDEX, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %372

360:                                              ; preds = %353
  %361 = load i32, i32* %12, align 4
  %362 = load i32, i32* @LPROPS_INDEX, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %371, label %365

365:                                              ; preds = %360
  %366 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %367 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %366, i32 0, i32 6
  %368 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %367, i32 0, i32 7
  %369 = load i32, i32* %368, align 4
  %370 = sub nsw i32 %369, 1
  store i32 %370, i32* %368, align 4
  br label %371

371:                                              ; preds = %365, %360
  br label %384

372:                                              ; preds = %353
  %373 = load i32, i32* %12, align 4
  %374 = load i32, i32* @LPROPS_INDEX, align 4
  %375 = and i32 %373, %374
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %383

377:                                              ; preds = %372
  %378 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %379 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %378, i32 0, i32 6
  %380 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %379, i32 0, i32 7
  %381 = load i32, i32* %380, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %380, align 4
  br label %383

383:                                              ; preds = %377, %372
  br label %384

384:                                              ; preds = %383, %371
  %385 = load i32, i32* %12, align 4
  %386 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %387 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %386, i32 0, i32 2
  store i32 %385, i32* %387, align 4
  br label %388

388:                                              ; preds = %384, %349
  %389 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %390 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* @LPROPS_INDEX, align 4
  %393 = and i32 %391, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %437, label %395

395:                                              ; preds = %388
  %396 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %397 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %400 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = add nsw i32 %398, %401
  store i32 %402, i32* %16, align 4
  %403 = load i32, i32* %16, align 4
  %404 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %405 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %404, i32 0, i32 3
  %406 = load i32, i32* %405, align 4
  %407 = icmp slt i32 %403, %406
  br i1 %407, label %408, label %415

408:                                              ; preds = %395
  %409 = load i32, i32* %16, align 4
  %410 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %411 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %410, i32 0, i32 6
  %412 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %411, i32 0, i32 4
  %413 = load i32, i32* %412, align 8
  %414 = add nsw i32 %413, %409
  store i32 %414, i32* %412, align 8
  br label %426

415:                                              ; preds = %395
  %416 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %417 = load i32, i32* %16, align 4
  %418 = call i64 @ubifs_calc_dark(%struct.ubifs_info* %416, i32 %417)
  %419 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %420 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %419, i32 0, i32 6
  %421 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %420, i32 0, i32 5
  %422 = load i32, i32* %421, align 4
  %423 = sext i32 %422 to i64
  %424 = add nsw i64 %423, %418
  %425 = trunc i64 %424 to i32
  store i32 %425, i32* %421, align 4
  br label %426

426:                                              ; preds = %415, %408
  %427 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %428 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 8
  %430 = load i32, i32* %16, align 4
  %431 = sub nsw i32 %429, %430
  %432 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %433 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %432, i32 0, i32 6
  %434 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %433, i32 0, i32 6
  %435 = load i32, i32* %434, align 8
  %436 = add nsw i32 %435, %431
  store i32 %436, i32* %434, align 8
  br label %437

437:                                              ; preds = %426, %388
  %438 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %439 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %438, i32 0, i32 2
  %440 = load i32, i32* %439, align 4
  %441 = load i32, i32* @LPROPS_TAKEN, align 4
  %442 = and i32 %440, %441
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %458

444:                                              ; preds = %437
  %445 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %446 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 4
  %448 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %449 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %448, i32 0, i32 2
  %450 = load i32, i32* %449, align 8
  %451 = icmp eq i32 %447, %450
  br i1 %451, label %452, label %458

452:                                              ; preds = %444
  %453 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %454 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %453, i32 0, i32 6
  %455 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %454, i32 0, i32 1
  %456 = load i64, i64* %455, align 8
  %457 = add nsw i64 %456, 1
  store i64 %457, i64* %455, align 8
  br label %458

458:                                              ; preds = %452, %444, %437
  %459 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %460 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %461 = call i32 @change_category(%struct.ubifs_info* %459, %struct.ubifs_lprops* %460)
  %462 = load i32, i32* %13, align 4
  %463 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %464 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %463, i32 0, i32 4
  %465 = load i32, i32* %464, align 8
  %466 = add nsw i32 %465, %462
  store i32 %466, i32* %464, align 8
  %467 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %468 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %467, i32 0, i32 5
  %469 = call i32 @spin_unlock(i32* %468)
  %470 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  store %struct.ubifs_lprops* %470, %struct.ubifs_lprops** %7, align 8
  br label %471

471:                                              ; preds = %458, %169
  %472 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %7, align 8
  ret %struct.ubifs_lprops* %472
}

declare dso_local i32 @dbg_lp(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @is_lprops_dirty(%struct.ubifs_info*, %struct.ubifs_lprops*) #1

declare dso_local %struct.ubifs_lprops* @ubifs_lpt_lookup_dirty(%struct.ubifs_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_lprops*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ubifs_calc_dark(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @change_category(%struct.ubifs_info*, %struct.ubifs_lprops*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
