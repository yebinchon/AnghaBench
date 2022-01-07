; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c___ocfs2_recovery_thread.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c___ocfs2_recovery_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, i32, i32, i32*, i32, i32, %struct.TYPE_2__*, i32, %struct.ocfs2_recovery_map* }
%struct.TYPE_2__ = type { i32 }
%struct.ocfs2_recovery_map = type { i32*, i64 }
%struct.ocfs2_quota_recovery = type { i32 }

@OCFS2_FEATURE_RO_COMPAT_USRQUOTA = common dso_local global i32 0, align 4
@OCFS2_FEATURE_RO_COMPAT_GRPQUOTA = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ORPHAN_NO_NEED_TRUNCATE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Error %d recovering node %d on device (%u,%u)!\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Volume requires unmount.\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@ORPHAN_NEED_TRUNCATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @__ocfs2_recovery_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_recovery_thread(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_super*, align 8
  %8 = alloca %struct.ocfs2_recovery_map*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_quota_recovery*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.ocfs2_super*
  store %struct.ocfs2_super* %15, %struct.ocfs2_super** %7, align 8
  %16 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %17 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %16, i32 0, i32 8
  %18 = load %struct.ocfs2_recovery_map*, %struct.ocfs2_recovery_map** %17, align 8
  store %struct.ocfs2_recovery_map* %18, %struct.ocfs2_recovery_map** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %20 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %19, i32 0, i32 6
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* @OCFS2_FEATURE_RO_COMPAT_USRQUOTA, align 4
  %23 = call i64 @OCFS2_HAS_RO_COMPAT_FEATURE(%struct.TYPE_2__* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %1
  %26 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %27 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %26, i32 0, i32 6
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* @OCFS2_FEATURE_RO_COMPAT_GRPQUOTA, align 4
  %30 = call i64 @OCFS2_HAS_RO_COMPAT_FEATURE(%struct.TYPE_2__* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %25, %1
  %33 = phi i1 [ true, %1 ], [ %31, %25 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %13, align 4
  %35 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %36 = call i32 @ocfs2_wait_on_mount(%struct.ocfs2_super* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %246

40:                                               ; preds = %32
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %45 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @GFP_NOFS, align 4
  %48 = call i32* @kcalloc(i32 %46, i32 4, i32 %47)
  store i32* %48, i32** %9, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %246

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %40
  br label %56

56:                                               ; preds = %256, %55
  %57 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %58 = call i32 @ocfs2_super_lock(%struct.ocfs2_super* %57, i32 1)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @mlog_errno(i32 %62)
  br label %246

64:                                               ; preds = %56
  %65 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %66 = call i32 @ocfs2_compute_replay_slots(%struct.ocfs2_super* %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @mlog_errno(i32 %70)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %74 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %77 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @ORPHAN_NO_NEED_TRUNCATE, align 4
  %80 = call i32 @ocfs2_queue_recovery_completion(i32 %75, i32 %78, i32* null, i32* null, %struct.ocfs2_quota_recovery* null, i32 %79)
  %81 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %82 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %81, i32 0, i32 5
  %83 = call i32 @spin_lock(i32* %82)
  br label %84

84:                                               ; preds = %174, %72
  %85 = load %struct.ocfs2_recovery_map*, %struct.ocfs2_recovery_map** %8, align 8
  %86 = getelementptr inbounds %struct.ocfs2_recovery_map, %struct.ocfs2_recovery_map* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %178

89:                                               ; preds = %84
  %90 = load %struct.ocfs2_recovery_map*, %struct.ocfs2_recovery_map** %8, align 8
  %91 = getelementptr inbounds %struct.ocfs2_recovery_map, %struct.ocfs2_recovery_map* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %5, align 4
  %95 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %96 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %95, i32 0, i32 5
  %97 = call i32 @spin_unlock(i32* %96)
  %98 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @ocfs2_node_num_to_slot(%struct.ocfs2_super* %98, i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @trace_ocfs2_recovery_thread_node(i32 %101, i32 %102)
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @ENOENT, align 4
  %106 = sub nsw i32 0, %105
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %89
  store i32 0, i32* %4, align 4
  br label %148

109:                                              ; preds = %89
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %143

112:                                              ; preds = %109
  store i32 0, i32* %11, align 4
  br label %113

113:                                              ; preds = %128, %112
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load i32*, i32** %9, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %122, %123
  br label %125

125:                                              ; preds = %117, %113
  %126 = phi i1 [ false, %113 ], [ %124, %117 ]
  br i1 %126, label %127, label %131

127:                                              ; preds = %125
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  br label %113

131:                                              ; preds = %125
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %131
  %136 = load i32, i32* %6, align 4
  %137 = load i32*, i32** %9, align 8
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  store i32 %136, i32* %141, align 4
  br label %142

142:                                              ; preds = %135, %131
  br label %143

143:                                              ; preds = %142, %109
  %144 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @ocfs2_recover_node(%struct.ocfs2_super* %144, i32 %145, i32 %146)
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %143, %108
  %149 = load i32, i32* %4, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %148
  %152 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @ocfs2_recovery_map_clear(%struct.ocfs2_super* %152, i32 %153)
  br label %174

155:                                              ; preds = %148
  %156 = load i32, i32* @ML_ERROR, align 4
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* %5, align 4
  %159 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %160 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %159, i32 0, i32 6
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @MAJOR(i32 %163)
  %165 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %166 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %165, i32 0, i32 6
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @MINOR(i32 %169)
  %171 = call i32 (i32, i8*, ...) @mlog(i32 %156, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %157, i32 %158, i32 %164, i32 %170)
  %172 = load i32, i32* @ML_ERROR, align 4
  %173 = call i32 (i32, i8*, ...) @mlog(i32 %172, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %174

174:                                              ; preds = %155, %151
  %175 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %176 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %175, i32 0, i32 5
  %177 = call i32 @spin_lock(i32* %176)
  br label %84

178:                                              ; preds = %84
  %179 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %180 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %179, i32 0, i32 5
  %181 = call i32 @spin_unlock(i32* %180)
  %182 = load i32, i32* %4, align 4
  %183 = call i32 @trace_ocfs2_recovery_thread_end(i32 %182)
  %184 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %185 = call i32 @ocfs2_check_journals_nolocks(%struct.ocfs2_super* %184)
  store i32 %185, i32* %4, align 4
  %186 = load i32, i32* %4, align 4
  %187 = load i32, i32* @EROFS, align 4
  %188 = sub nsw i32 0, %187
  %189 = icmp eq i32 %186, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %178
  br label %193

191:                                              ; preds = %178
  %192 = load i32, i32* %4, align 4
  br label %193

193:                                              ; preds = %191, %190
  %194 = phi i32 [ 0, %190 ], [ %192, %191 ]
  store i32 %194, i32* %4, align 4
  %195 = load i32, i32* %4, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load i32, i32* %4, align 4
  %199 = call i32 @mlog_errno(i32 %198)
  br label %200

200:                                              ; preds = %197, %193
  %201 = load i32, i32* %13, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %240

203:                                              ; preds = %200
  store i32 0, i32* %11, align 4
  br label %204

204:                                              ; preds = %236, %203
  %205 = load i32, i32* %11, align 4
  %206 = load i32, i32* %10, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %239

208:                                              ; preds = %204
  %209 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %210 = load i32*, i32** %9, align 8
  %211 = load i32, i32* %11, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = call %struct.ocfs2_quota_recovery* @ocfs2_begin_quota_recovery(%struct.ocfs2_super* %209, i32 %214)
  store %struct.ocfs2_quota_recovery* %215, %struct.ocfs2_quota_recovery** %12, align 8
  %216 = load %struct.ocfs2_quota_recovery*, %struct.ocfs2_quota_recovery** %12, align 8
  %217 = call i64 @IS_ERR(%struct.ocfs2_quota_recovery* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %208
  %220 = load %struct.ocfs2_quota_recovery*, %struct.ocfs2_quota_recovery** %12, align 8
  %221 = call i32 @PTR_ERR(%struct.ocfs2_quota_recovery* %220)
  store i32 %221, i32* %4, align 4
  %222 = load i32, i32* %4, align 4
  %223 = call i32 @mlog_errno(i32 %222)
  br label %236

224:                                              ; preds = %208
  %225 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %226 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = load i32*, i32** %9, align 8
  %229 = load i32, i32* %11, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.ocfs2_quota_recovery*, %struct.ocfs2_quota_recovery** %12, align 8
  %234 = load i32, i32* @ORPHAN_NEED_TRUNCATE, align 4
  %235 = call i32 @ocfs2_queue_recovery_completion(i32 %227, i32 %232, i32* null, i32* null, %struct.ocfs2_quota_recovery* %233, i32 %234)
  br label %236

236:                                              ; preds = %224, %219
  %237 = load i32, i32* %11, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %11, align 4
  br label %204

239:                                              ; preds = %204
  br label %240

240:                                              ; preds = %239, %200
  %241 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %242 = call i32 @ocfs2_super_unlock(%struct.ocfs2_super* %241, i32 1)
  %243 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %244 = load i32, i32* @ORPHAN_NEED_TRUNCATE, align 4
  %245 = call i32 @ocfs2_queue_replay_slots(%struct.ocfs2_super* %243, i32 %244)
  br label %246

246:                                              ; preds = %240, %61, %51, %39
  %247 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %248 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %247, i32 0, i32 1
  %249 = call i32 @mutex_lock(i32* %248)
  %250 = load i32, i32* %4, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %260, label %252

252:                                              ; preds = %246
  %253 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %254 = call i32 @ocfs2_recovery_completed(%struct.ocfs2_super* %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %260, label %256

256:                                              ; preds = %252
  %257 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %258 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %257, i32 0, i32 1
  %259 = call i32 @mutex_unlock(i32* %258)
  br label %56

260:                                              ; preds = %252, %246
  %261 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %262 = call i32 @ocfs2_free_replay_slots(%struct.ocfs2_super* %261)
  %263 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %264 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %263, i32 0, i32 3
  store i32* null, i32** %264, align 8
  %265 = call i32 (...) @mb()
  %266 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %267 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %266, i32 0, i32 2
  %268 = call i32 @wake_up(i32* %267)
  %269 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %270 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %269, i32 0, i32 1
  %271 = call i32 @mutex_unlock(i32* %270)
  %272 = load i32, i32* %13, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %260
  %275 = load i32*, i32** %9, align 8
  %276 = call i32 @kfree(i32* %275)
  br label %277

277:                                              ; preds = %274, %260
  %278 = load i32, i32* %4, align 4
  %279 = call i32 @complete_and_exit(i32* null, i32 %278)
  %280 = load i32, i32* %2, align 4
  ret i32 %280
}

declare dso_local i64 @OCFS2_HAS_RO_COMPAT_FEATURE(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @ocfs2_wait_on_mount(%struct.ocfs2_super*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ocfs2_super_lock(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_compute_replay_slots(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_queue_recovery_completion(i32, i32, i32*, i32*, %struct.ocfs2_quota_recovery*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_node_num_to_slot(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @trace_ocfs2_recovery_thread_node(i32, i32) #1

declare dso_local i32 @ocfs2_recover_node(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @ocfs2_recovery_map_clear(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @trace_ocfs2_recovery_thread_end(i32) #1

declare dso_local i32 @ocfs2_check_journals_nolocks(%struct.ocfs2_super*) #1

declare dso_local %struct.ocfs2_quota_recovery* @ocfs2_begin_quota_recovery(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ocfs2_quota_recovery*) #1

declare dso_local i32 @PTR_ERR(%struct.ocfs2_quota_recovery*) #1

declare dso_local i32 @ocfs2_super_unlock(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_queue_replay_slots(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ocfs2_recovery_completed(%struct.ocfs2_super*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ocfs2_free_replay_slots(%struct.ocfs2_super*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @complete_and_exit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
