; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_gc.c_ubifs_garbage_collect.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_gc.c_ubifs_garbage_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_wbuf }
%struct.ubifs_wbuf = type { i32, i32, i32, i32, i32 }
%struct.ubifs_lprops = type { i32, i64, i64 }

@GCHD = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@SOFT_LEBS_LIMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"soft limit, some index LEBs GC'ed, -EAGAIN\00", align 1
@HARD_LEBS_LIMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"hard limit, -ENOSPC\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"no more dirty LEBs\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"found LEB %d: free %d, dirty %d, sum %d (min. space %d)\00", align 1
@LEB_FREED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"LEB %d freed, return\00", align 1
@LEB_FREED_IDX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"indexing LEB %d freed, continue\00", align 1
@LEB_RETAINED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"LEB %d retained, freed %d bytes\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"did not make progress\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"try again\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"set min. space to %d\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"no space, some index LEBs GC'ed, -EAGAIN\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_garbage_collect(%struct.ubifs_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubifs_lprops, align 8
  %11 = alloca %struct.ubifs_wbuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %18 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %17, i32 0, i32 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* @GCHD, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.ubifs_wbuf* %22, %struct.ubifs_wbuf** %11, align 8
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %24 = call i32 @ubifs_assert_cmt_locked(%struct.ubifs_info* %23)
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %2
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %32 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %30, %2
  %37 = phi i1 [ false, %2 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @ubifs_assert(%struct.ubifs_info* %25, i32 %38)
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %41 = call i64 @ubifs_gc_should_commit(%struct.ubifs_info* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %323

46:                                               ; preds = %36
  %47 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %48 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %47, i32 0, i32 3
  %49 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %50 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mutex_lock_nested(i32* %48, i32 %51)
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %54 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load i32, i32* @EROFS, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %285

60:                                               ; preds = %46
  %61 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %62 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %63 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 @ubifs_assert(%struct.ubifs_info* %61, i32 %67)
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %249, %60
  %70 = call i32 (...) @cond_resched()
  %71 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %72 = call i64 @ubifs_gc_should_commit(%struct.ubifs_info* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @EAGAIN, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %8, align 4
  br label %252

77:                                               ; preds = %69
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @SOFT_LEBS_LIMIT, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %83 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %82, i32 0, i32 4
  %84 = call i32 @list_empty(i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %81
  %87 = call i32 (i8*, ...) @dbg_gc(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %88 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %89 = call i32 @ubifs_commit_required(%struct.ubifs_info* %88)
  %90 = load i32, i32* @EAGAIN, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %8, align 4
  br label %252

92:                                               ; preds = %81, %77
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @HARD_LEBS_LIMIT, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = call i32 (i8*, ...) @dbg_gc(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* @ENOSPC, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %8, align 4
  br label %252

100:                                              ; preds = %92
  %101 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 0, i32 1
  %107 = call i32 @ubifs_find_dirty_leb(%struct.ubifs_info* %101, %struct.ubifs_lprops* %10, i32 %102, i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %100
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @ENOSPC, align 4
  %113 = sub nsw i32 0, %112
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = call i32 (i8*, ...) @dbg_gc(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %110
  br label %252

118:                                              ; preds = %100
  %119 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %126, %128
  %130 = load i32, i32* %9, align 4
  %131 = call i32 (i8*, ...) @dbg_gc(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %120, i64 %122, i64 %124, i64 %129, i32 %130)
  %132 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %133 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %136 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = sub nsw i32 %134, %137
  %139 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %140 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %138, %141
  store i32 %142, i32* %12, align 4
  %143 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %144 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, -1
  br i1 %146, label %147, label %148

147:                                              ; preds = %118
  store i32 0, i32* %12, align 4
  br label %148

148:                                              ; preds = %147, %118
  %149 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %150 = call i32 @ubifs_garbage_collect_leb(%struct.ubifs_info* %149, %struct.ubifs_lprops* %10)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %169

153:                                              ; preds = %148
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @EAGAIN, align 4
  %156 = sub nsw i32 0, %155
  %157 = icmp eq i32 %154, %156
  br i1 %157, label %158, label %168

158:                                              ; preds = %153
  %159 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %160 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @ubifs_return_leb(%struct.ubifs_info* %159, i32 %161)
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %158
  %166 = load i32, i32* %7, align 4
  store i32 %166, i32* %8, align 4
  br label %167

167:                                              ; preds = %165, %158
  br label %252

168:                                              ; preds = %153
  br label %290

169:                                              ; preds = %148
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* @LEB_FREED, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 (i8*, ...) @dbg_gc(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %175)
  %177 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  store i32 %178, i32* %8, align 4
  br label %252

179:                                              ; preds = %169
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* @LEB_FREED_IDX, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 (i8*, ...) @dbg_gc(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %185)
  br label %249

187:                                              ; preds = %179
  %188 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* @LEB_RETAINED, align 4
  %191 = icmp eq i32 %189, %190
  %192 = zext i1 %191 to i32
  %193 = call i32 @ubifs_assert(%struct.ubifs_info* %188, i32 %192)
  %194 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %195 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %198 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = sub nsw i32 %196, %199
  %201 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %202 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = sub nsw i32 %200, %203
  store i32 %204, i32* %13, align 4
  %205 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* %13, align 4
  %208 = load i32, i32* %12, align 4
  %209 = sub nsw i32 %207, %208
  %210 = call i32 (i8*, ...) @dbg_gc(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %206, i32 %209)
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* %12, align 4
  %213 = icmp sgt i32 %211, %212
  br i1 %213, label %214, label %227

214:                                              ; preds = %187
  %215 = load i32, i32* %9, align 4
  %216 = ashr i32 %215, 1
  store i32 %216, i32* %9, align 4
  %217 = load i32, i32* %9, align 4
  %218 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %219 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp slt i32 %217, %220
  br i1 %221, label %222, label %226

222:                                              ; preds = %214
  %223 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %224 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  store i32 %225, i32* %9, align 4
  br label %226

226:                                              ; preds = %222, %214
  br label %249

227:                                              ; preds = %187
  %228 = call i32 (i8*, ...) @dbg_gc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %229 = load i32, i32* %6, align 4
  %230 = load i32, i32* @SOFT_LEBS_LIMIT, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %234

232:                                              ; preds = %227
  %233 = call i32 (i8*, ...) @dbg_gc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %249

234:                                              ; preds = %227
  %235 = load i32, i32* %9, align 4
  %236 = shl i32 %235, 1
  store i32 %236, i32* %9, align 4
  %237 = load i32, i32* %9, align 4
  %238 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %239 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = icmp sgt i32 %237, %240
  br i1 %241, label %242, label %246

242:                                              ; preds = %234
  %243 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %244 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  store i32 %245, i32* %9, align 4
  br label %246

246:                                              ; preds = %242, %234
  %247 = load i32, i32* %9, align 4
  %248 = call i32 (i8*, ...) @dbg_gc(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %247)
  br label %249

249:                                              ; preds = %246, %232, %226, %183
  %250 = load i32, i32* %6, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %6, align 4
  br label %69

252:                                              ; preds = %173, %167, %117, %96, %86, %74
  %253 = load i32, i32* %8, align 4
  %254 = load i32, i32* @ENOSPC, align 4
  %255 = sub nsw i32 0, %254
  %256 = icmp eq i32 %253, %255
  br i1 %256, label %257, label %268

257:                                              ; preds = %252
  %258 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %259 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %258, i32 0, i32 4
  %260 = call i32 @list_empty(i32* %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %268, label %262

262:                                              ; preds = %257
  %263 = call i32 (i8*, ...) @dbg_gc(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  %264 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %265 = call i32 @ubifs_commit_required(%struct.ubifs_info* %264)
  %266 = load i32, i32* @EAGAIN, align 4
  %267 = sub nsw i32 0, %266
  store i32 %267, i32* %8, align 4
  br label %268

268:                                              ; preds = %262, %257, %252
  %269 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %270 = call i32 @ubifs_wbuf_sync_nolock(%struct.ubifs_wbuf* %269)
  store i32 %270, i32* %7, align 4
  %271 = load i32, i32* %7, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %279, label %273

273:                                              ; preds = %268
  %274 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %275 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %276 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @ubifs_leb_unmap(%struct.ubifs_info* %274, i32 %277)
  store i32 %278, i32* %7, align 4
  br label %279

279:                                              ; preds = %273, %268
  %280 = load i32, i32* %7, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %279
  %283 = load i32, i32* %7, align 4
  store i32 %283, i32* %8, align 4
  br label %290

284:                                              ; preds = %279
  br label %285

285:                                              ; preds = %284, %57
  %286 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %287 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %286, i32 0, i32 3
  %288 = call i32 @mutex_unlock(i32* %287)
  %289 = load i32, i32* %8, align 4
  store i32 %289, i32* %3, align 4
  br label %323

290:                                              ; preds = %282, %168
  %291 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %292 = load i32, i32* %8, align 4
  %293 = icmp slt i32 %292, 0
  %294 = zext i1 %293 to i32
  %295 = call i32 @ubifs_assert(%struct.ubifs_info* %291, i32 %294)
  %296 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %297 = load i32, i32* %8, align 4
  %298 = load i32, i32* @ENOSPC, align 4
  %299 = sub nsw i32 0, %298
  %300 = icmp ne i32 %297, %299
  br i1 %300, label %301, label %306

301:                                              ; preds = %290
  %302 = load i32, i32* %8, align 4
  %303 = load i32, i32* @EAGAIN, align 4
  %304 = sub nsw i32 0, %303
  %305 = icmp ne i32 %302, %304
  br label %306

306:                                              ; preds = %301, %290
  %307 = phi i1 [ false, %290 ], [ %305, %301 ]
  %308 = zext i1 %307 to i32
  %309 = call i32 @ubifs_assert(%struct.ubifs_info* %296, i32 %308)
  %310 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %311 = call i32 @ubifs_wbuf_sync_nolock(%struct.ubifs_wbuf* %310)
  %312 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %313 = load i32, i32* %8, align 4
  %314 = call i32 @ubifs_ro_mode(%struct.ubifs_info* %312, i32 %313)
  %315 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %316 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %315, i32 0, i32 3
  %317 = call i32 @mutex_unlock(i32* %316)
  %318 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %319 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = call i32 @ubifs_return_leb(%struct.ubifs_info* %318, i32 %320)
  %322 = load i32, i32* %8, align 4
  store i32 %322, i32* %3, align 4
  br label %323

323:                                              ; preds = %306, %285, %43
  %324 = load i32, i32* %3, align 4
  ret i32 %324
}

declare dso_local i32 @ubifs_assert_cmt_locked(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i64 @ubifs_gc_should_commit(%struct.ubifs_info*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dbg_gc(i8*, ...) #1

declare dso_local i32 @ubifs_commit_required(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_find_dirty_leb(%struct.ubifs_info*, %struct.ubifs_lprops*, i32, i32) #1

declare dso_local i32 @ubifs_garbage_collect_leb(%struct.ubifs_info*, %struct.ubifs_lprops*) #1

declare dso_local i32 @ubifs_return_leb(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_wbuf_sync_nolock(%struct.ubifs_wbuf*) #1

declare dso_local i32 @ubifs_leb_unmap(%struct.ubifs_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_ro_mode(%struct.ubifs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
