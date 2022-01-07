; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_master_request_handler.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_master_request_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2net_msg = type { i64 }
%struct.dlm_ctxt = type { i64, i32, i32 }
%struct.dlm_lock_resource = type { i32, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dlm_master_request = type { i8*, i32, i32 }
%struct.dlm_master_list_entry = type { i64, i64, i32, i32, i32 }

@DLM_MASTER_RESP_MAYBE = common dso_local global i32 0, align 4
@DLM_MASTER_RESP_NO = common dso_local global i32 0, align 4
@DLM_LOCKID_NAME_MAX = common dso_local global i32 0, align 4
@DLM_IVBUFLEN = common dso_local global i32 0, align 4
@DLM_LOCK_RES_RECOVERING = common dso_local global i32 0, align 4
@DLM_LOCK_RES_MIGRATING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"returning DLM_MASTER_RESP_ERROR since res is being recovered/migrated\0A\00", align 1
@DLM_MASTER_RESP_ERROR = common dso_local global i32 0, align 4
@dlm_mle_cache = common dso_local global i32 0, align 4
@DLM_MASTER_RESP_YES = common dso_local global i32 0, align 4
@DLM_LOCK_RES_OWNER_UNKNOWN = common dso_local global i64 0, align 8
@DLM_LOCK_RES_IN_PROGRESS = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"lock with no owner should be in-progress!\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"no mle found for this lock!\0A\00", align 1
@DLM_MLE_BLOCK = common dso_local global i64 0, align 8
@DLM_MLE_MIGRATION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"node %u is master, but trying to migrate to node %u.\0A\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"no owner on lockres, but this node is trying to migrate it to %u?!\0A\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"no lockres, but an mle with this node as master!\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"migration mle was found (%u->%u)\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"%u is the owner of %.*s, cleaning everyone else\0A\00", align 1
@DLM_ASSERT_MASTER_MLE_CLEANUP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"failed to dispatch assert master work\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_master_request_handler(%struct.o2net_msg* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.o2net_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dlm_ctxt*, align 8
  %12 = alloca %struct.dlm_lock_resource*, align 8
  %13 = alloca %struct.dlm_master_request*, align 8
  %14 = alloca %struct.dlm_master_list_entry*, align 8
  %15 = alloca %struct.dlm_master_list_entry*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.o2net_msg* %0, %struct.o2net_msg** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %24 = load i32, i32* @DLM_MASTER_RESP_MAYBE, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = bitcast i8* %25 to %struct.dlm_ctxt*
  store %struct.dlm_ctxt* %26, %struct.dlm_ctxt** %11, align 8
  store %struct.dlm_lock_resource* null, %struct.dlm_lock_resource** %12, align 8
  %27 = load %struct.o2net_msg*, %struct.o2net_msg** %6, align 8
  %28 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.dlm_master_request*
  store %struct.dlm_master_request* %30, %struct.dlm_master_request** %13, align 8
  store %struct.dlm_master_list_entry* null, %struct.dlm_master_list_entry** %14, align 8
  store %struct.dlm_master_list_entry* null, %struct.dlm_master_list_entry** %15, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %31 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %32 = call i32 @dlm_grab(%struct.dlm_ctxt* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* @DLM_MASTER_RESP_NO, align 4
  store i32 %35, i32* %5, align 4
  br label %453

36:                                               ; preds = %4
  %37 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %38 = call i32 @dlm_domain_fully_joined(%struct.dlm_ctxt* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @DLM_MASTER_RESP_NO, align 4
  store i32 %41, i32* %10, align 4
  br label %393

42:                                               ; preds = %36
  %43 = load %struct.dlm_master_request*, %struct.dlm_master_request** %13, align 8
  %44 = getelementptr inbounds %struct.dlm_master_request, %struct.dlm_master_request* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %16, align 8
  %46 = load %struct.dlm_master_request*, %struct.dlm_master_request** %13, align 8
  %47 = getelementptr inbounds %struct.dlm_master_request, %struct.dlm_master_request* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %17, align 4
  %49 = load i8*, i8** %16, align 8
  %50 = load i32, i32* %17, align 4
  %51 = call i32 @dlm_lockid_hash(i8* %49, i32 %50)
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* @DLM_LOCKID_NAME_MAX, align 4
  %54 = icmp ugt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %42
  %56 = load i32, i32* @DLM_IVBUFLEN, align 4
  store i32 %56, i32* %10, align 4
  br label %393

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %309, %80, %57
  %59 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %60 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %59, i32 0, i32 1
  %61 = call i32 @spin_lock(i32* %60)
  %62 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %63 = load i8*, i8** %16, align 8
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %18, align 4
  %66 = call %struct.dlm_lock_resource* @__dlm_lookup_lockres(%struct.dlm_ctxt* %62, i8* %63, i32 %64, i32 %65)
  store %struct.dlm_lock_resource* %66, %struct.dlm_lock_resource** %12, align 8
  %67 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %68 = icmp ne %struct.dlm_lock_resource* %67, null
  br i1 %68, label %69, label %279

69:                                               ; preds = %58
  %70 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %71 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %70, i32 0, i32 1
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %74 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %73, i32 0, i32 2
  %75 = call i32 @spin_lock(i32* %74)
  %76 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %77 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %76, i32 0, i32 4
  %78 = call i64 @hlist_unhashed(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %69
  %81 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %82 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %81, i32 0, i32 2
  %83 = call i32 @spin_unlock(i32* %82)
  %84 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %85 = call i32 @dlm_lockres_put(%struct.dlm_lock_resource* %84)
  br label %58

86:                                               ; preds = %69
  %87 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %88 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @DLM_LOCK_RES_RECOVERING, align 4
  %91 = load i32, i32* @DLM_LOCK_RES_MIGRATING, align 4
  %92 = or i32 %90, %91
  %93 = and i32 %89, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %86
  %96 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %97 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %96, i32 0, i32 2
  %98 = call i32 @spin_unlock(i32* %97)
  %99 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %100 = load i32, i32* @DLM_MASTER_RESP_ERROR, align 4
  store i32 %100, i32* %10, align 4
  %101 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %102 = icmp ne %struct.dlm_master_list_entry* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load i32, i32* @dlm_mle_cache, align 4
  %105 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %106 = call i32 @kmem_cache_free(i32 %104, %struct.dlm_master_list_entry* %105)
  br label %107

107:                                              ; preds = %103, %95
  br label %393

108:                                              ; preds = %86
  %109 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %110 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %113 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %111, %114
  br i1 %115, label %116, label %134

116:                                              ; preds = %108
  %117 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %118 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %119 = load %struct.dlm_master_request*, %struct.dlm_master_request** %13, align 8
  %120 = getelementptr inbounds %struct.dlm_master_request, %struct.dlm_master_request* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @dlm_lockres_set_refmap_bit(%struct.dlm_ctxt* %117, %struct.dlm_lock_resource* %118, i32 %121)
  %123 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %124 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %123, i32 0, i32 2
  %125 = call i32 @spin_unlock(i32* %124)
  %126 = load i32, i32* @DLM_MASTER_RESP_YES, align 4
  store i32 %126, i32* %10, align 4
  %127 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %128 = icmp ne %struct.dlm_master_list_entry* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %116
  %130 = load i32, i32* @dlm_mle_cache, align 4
  %131 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %132 = call i32 @kmem_cache_free(i32 %130, %struct.dlm_master_list_entry* %131)
  br label %133

133:                                              ; preds = %129, %116
  store i32 1, i32* %22, align 4
  br label %393

134:                                              ; preds = %108
  %135 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %136 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @DLM_LOCK_RES_OWNER_UNKNOWN, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %152

140:                                              ; preds = %134
  %141 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %142 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %141, i32 0, i32 2
  %143 = call i32 @spin_unlock(i32* %142)
  %144 = load i32, i32* @DLM_MASTER_RESP_NO, align 4
  store i32 %144, i32* %10, align 4
  %145 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %146 = icmp ne %struct.dlm_master_list_entry* %145, null
  br i1 %146, label %147, label %151

147:                                              ; preds = %140
  %148 = load i32, i32* @dlm_mle_cache, align 4
  %149 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %150 = call i32 @kmem_cache_free(i32 %148, %struct.dlm_master_list_entry* %149)
  br label %151

151:                                              ; preds = %147, %140
  br label %393

152:                                              ; preds = %134
  br label %153

153:                                              ; preds = %152
  %154 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %155 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @DLM_LOCK_RES_IN_PROGRESS, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %153
  %161 = load i32, i32* @ML_ERROR, align 4
  %162 = call i32 (i32, i8*, ...) @mlog(i32 %161, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %163 = call i32 (...) @BUG()
  br label %164

164:                                              ; preds = %160, %153
  %165 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %166 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %165, i32 0, i32 2
  %167 = call i32 @spin_lock(i32* %166)
  %168 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %169 = load i8*, i8** %16, align 8
  %170 = load i32, i32* %17, align 4
  %171 = call i32 @dlm_find_mle(%struct.dlm_ctxt* %168, %struct.dlm_master_list_entry** %15, i8* %169, i32 %170)
  store i32 %171, i32* %19, align 4
  %172 = load i32, i32* %19, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %164
  %175 = load i32, i32* @ML_ERROR, align 4
  %176 = call i32 (i32, i8*, ...) @mlog(i32 %175, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %177 = call i32 (...) @BUG()
  br label %178

178:                                              ; preds = %174, %164
  store i32 1, i32* %21, align 4
  %179 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %180 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %179, i32 0, i32 2
  %181 = call i32 @spin_lock(i32* %180)
  %182 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %183 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @DLM_MLE_BLOCK, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %178
  %188 = load i32, i32* @DLM_MASTER_RESP_NO, align 4
  store i32 %188, i32* %10, align 4
  br label %249

189:                                              ; preds = %178
  %190 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %191 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @DLM_MLE_MIGRATION, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %220

195:                                              ; preds = %189
  %196 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %197 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %200 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i64 %198, i32 %201)
  %203 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %204 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %207 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp eq i64 %205, %208
  br i1 %209, label %210, label %217

210:                                              ; preds = %195
  %211 = load i32, i32* @ML_ERROR, align 4
  %212 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %213 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = call i32 (i32, i8*, ...) @mlog(i32 %211, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i32 %214)
  %216 = call i32 (...) @BUG()
  br label %219

217:                                              ; preds = %195
  %218 = load i32, i32* @DLM_MASTER_RESP_NO, align 4
  store i32 %218, i32* %10, align 4
  br label %219

219:                                              ; preds = %217, %210
  br label %248

220:                                              ; preds = %189
  %221 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %222 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @DLM_LOCK_RES_OWNER_UNKNOWN, align 8
  %225 = icmp ne i64 %223, %224
  br i1 %225, label %226, label %245

226:                                              ; preds = %220
  store i32 0, i32* %21, align 4
  %227 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %228 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %231 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp eq i64 %229, %232
  br i1 %233, label %234, label %242

234:                                              ; preds = %226
  %235 = load i32, i32* @DLM_MASTER_RESP_YES, align 4
  store i32 %235, i32* %10, align 4
  store i32 1, i32* %22, align 4
  %236 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %237 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %238 = load %struct.dlm_master_request*, %struct.dlm_master_request** %13, align 8
  %239 = getelementptr inbounds %struct.dlm_master_request, %struct.dlm_master_request* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @dlm_lockres_set_refmap_bit(%struct.dlm_ctxt* %236, %struct.dlm_lock_resource* %237, i32 %240)
  br label %244

242:                                              ; preds = %226
  %243 = load i32, i32* @DLM_MASTER_RESP_NO, align 4
  store i32 %243, i32* %10, align 4
  br label %244

244:                                              ; preds = %242, %234
  br label %247

245:                                              ; preds = %220
  %246 = load i32, i32* @DLM_MASTER_RESP_MAYBE, align 4
  store i32 %246, i32* %10, align 4
  br label %247

247:                                              ; preds = %245, %244
  br label %248

248:                                              ; preds = %247, %219
  br label %249

249:                                              ; preds = %248, %187
  %250 = load i32, i32* %21, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %260

252:                                              ; preds = %249
  %253 = load %struct.dlm_master_request*, %struct.dlm_master_request** %13, align 8
  %254 = getelementptr inbounds %struct.dlm_master_request, %struct.dlm_master_request* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %257 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @set_bit(i32 %255, i32 %258)
  br label %260

260:                                              ; preds = %252, %249
  %261 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %262 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %261, i32 0, i32 2
  %263 = call i32 @spin_unlock(i32* %262)
  %264 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %265 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %264, i32 0, i32 2
  %266 = call i32 @spin_unlock(i32* %265)
  %267 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %268 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %267, i32 0, i32 2
  %269 = call i32 @spin_unlock(i32* %268)
  %270 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %271 = call i32 @dlm_put_mle(%struct.dlm_master_list_entry* %270)
  %272 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %273 = icmp ne %struct.dlm_master_list_entry* %272, null
  br i1 %273, label %274, label %278

274:                                              ; preds = %260
  %275 = load i32, i32* @dlm_mle_cache, align 4
  %276 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %277 = call i32 @kmem_cache_free(i32 %275, %struct.dlm_master_list_entry* %276)
  br label %278

278:                                              ; preds = %274, %260
  br label %393

279:                                              ; preds = %58
  %280 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %281 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %280, i32 0, i32 2
  %282 = call i32 @spin_lock(i32* %281)
  %283 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %284 = load i8*, i8** %16, align 8
  %285 = load i32, i32* %17, align 4
  %286 = call i32 @dlm_find_mle(%struct.dlm_ctxt* %283, %struct.dlm_master_list_entry** %15, i8* %284, i32 %285)
  store i32 %286, i32* %19, align 4
  %287 = load i32, i32* %19, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %328, label %289

289:                                              ; preds = %279
  %290 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %291 = icmp ne %struct.dlm_master_list_entry* %290, null
  br i1 %291, label %310, label %292

292:                                              ; preds = %289
  %293 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %294 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %293, i32 0, i32 2
  %295 = call i32 @spin_unlock(i32* %294)
  %296 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %297 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %296, i32 0, i32 1
  %298 = call i32 @spin_unlock(i32* %297)
  %299 = load i32, i32* @dlm_mle_cache, align 4
  %300 = load i32, i32* @GFP_NOFS, align 4
  %301 = call %struct.dlm_master_list_entry* @kmem_cache_alloc(i32 %299, i32 %300)
  store %struct.dlm_master_list_entry* %301, %struct.dlm_master_list_entry** %14, align 8
  %302 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %303 = icmp ne %struct.dlm_master_list_entry* %302, null
  br i1 %303, label %309, label %304

304:                                              ; preds = %292
  %305 = load i32, i32* @DLM_MASTER_RESP_ERROR, align 4
  store i32 %305, i32* %10, align 4
  %306 = load i32, i32* @ENOMEM, align 4
  %307 = sub nsw i32 0, %306
  %308 = call i32 @mlog_errno(i32 %307)
  br label %393

309:                                              ; preds = %292
  br label %58

310:                                              ; preds = %289
  %311 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %312 = load i64, i64* @DLM_MLE_BLOCK, align 8
  %313 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %314 = load i8*, i8** %16, align 8
  %315 = load i32, i32* %17, align 4
  %316 = call i32 @dlm_init_mle(%struct.dlm_master_list_entry* %311, i64 %312, %struct.dlm_ctxt* %313, i32* null, i8* %314, i32 %315)
  %317 = load %struct.dlm_master_request*, %struct.dlm_master_request** %13, align 8
  %318 = getelementptr inbounds %struct.dlm_master_request, %struct.dlm_master_request* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %321 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @set_bit(i32 %319, i32 %322)
  %324 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %325 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %326 = call i32 @__dlm_insert_mle(%struct.dlm_ctxt* %324, %struct.dlm_master_list_entry* %325)
  %327 = load i32, i32* @DLM_MASTER_RESP_NO, align 4
  store i32 %327, i32* %10, align 4
  br label %380

328:                                              ; preds = %279
  %329 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %330 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %329, i32 0, i32 2
  %331 = call i32 @spin_lock(i32* %330)
  %332 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %333 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %332, i32 0, i32 1
  %334 = load i64, i64* %333, align 8
  %335 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %336 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = icmp eq i64 %334, %337
  br i1 %338, label %339, label %343

339:                                              ; preds = %328
  %340 = load i32, i32* @ML_ERROR, align 4
  %341 = call i32 (i32, i8*, ...) @mlog(i32 %340, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %342 = call i32 (...) @BUG()
  br label %343

343:                                              ; preds = %339, %328
  %344 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %345 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @DLM_MLE_BLOCK, align 8
  %348 = icmp eq i64 %346, %347
  br i1 %348, label %349, label %351

349:                                              ; preds = %343
  %350 = load i32, i32* @DLM_MASTER_RESP_NO, align 4
  store i32 %350, i32* %10, align 4
  br label %369

351:                                              ; preds = %343
  %352 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %353 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* @DLM_MLE_MIGRATION, align 8
  %356 = icmp eq i64 %354, %355
  br i1 %356, label %357, label %366

357:                                              ; preds = %351
  %358 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %359 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %358, i32 0, i32 1
  %360 = load i64, i64* %359, align 8
  %361 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %362 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %361, i32 0, i32 4
  %363 = load i32, i32* %362, align 8
  %364 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i64 %360, i32 %363)
  %365 = load i32, i32* @DLM_MASTER_RESP_NO, align 4
  store i32 %365, i32* %10, align 4
  br label %368

366:                                              ; preds = %351
  %367 = load i32, i32* @DLM_MASTER_RESP_MAYBE, align 4
  store i32 %367, i32* %10, align 4
  br label %368

368:                                              ; preds = %366, %357
  br label %369

369:                                              ; preds = %368, %349
  %370 = load %struct.dlm_master_request*, %struct.dlm_master_request** %13, align 8
  %371 = getelementptr inbounds %struct.dlm_master_request, %struct.dlm_master_request* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %374 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %373, i32 0, i32 3
  %375 = load i32, i32* %374, align 4
  %376 = call i32 @set_bit(i32 %372, i32 %375)
  %377 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %378 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %377, i32 0, i32 2
  %379 = call i32 @spin_unlock(i32* %378)
  br label %380

380:                                              ; preds = %369, %310
  %381 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %382 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %381, i32 0, i32 2
  %383 = call i32 @spin_unlock(i32* %382)
  %384 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %385 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %384, i32 0, i32 1
  %386 = call i32 @spin_unlock(i32* %385)
  %387 = load i32, i32* %19, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %380
  %390 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %15, align 8
  %391 = call i32 @dlm_put_mle(%struct.dlm_master_list_entry* %390)
  br label %392

392:                                              ; preds = %389, %380
  br label %393

393:                                              ; preds = %392, %304, %278, %151, %133, %107, %55, %40
  %394 = load i32, i32* %22, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %438

396:                                              ; preds = %393
  %397 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %398 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %397, i32 0, i32 0
  %399 = load i64, i64* %398, align 8
  %400 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %401 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %400, i32 0, i32 3
  %402 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %405 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %404, i32 0, i32 3
  %406 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i64 %399, i32 %403, i32 %407)
  %409 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %410 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %409, i32 0, i32 2
  %411 = call i32 @spin_lock(i32* %410)
  %412 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %413 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %414 = load %struct.dlm_master_request*, %struct.dlm_master_request** %13, align 8
  %415 = getelementptr inbounds %struct.dlm_master_request, %struct.dlm_master_request* %414, i32 0, i32 2
  %416 = load i32, i32* %415, align 4
  %417 = load i32, i32* @DLM_ASSERT_MASTER_MLE_CLEANUP, align 4
  %418 = call i32 @dlm_dispatch_assert_master(%struct.dlm_ctxt* %412, %struct.dlm_lock_resource* %413, i32 0, i32 %416, i32 %417)
  store i32 %418, i32* %20, align 4
  %419 = load i32, i32* %20, align 4
  %420 = icmp slt i32 %419, 0
  br i1 %420, label %421, label %430

421:                                              ; preds = %396
  %422 = load i32, i32* @ML_ERROR, align 4
  %423 = call i32 (i32, i8*, ...) @mlog(i32 %422, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %424 = load i32, i32* @DLM_MASTER_RESP_ERROR, align 4
  store i32 %424, i32* %10, align 4
  %425 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %426 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %425, i32 0, i32 2
  %427 = call i32 @spin_unlock(i32* %426)
  %428 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %429 = call i32 @dlm_lockres_put(%struct.dlm_lock_resource* %428)
  br label %437

430:                                              ; preds = %396
  store i32 1, i32* %23, align 4
  %431 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %432 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %433 = call i32 @__dlm_lockres_grab_inflight_worker(%struct.dlm_ctxt* %431, %struct.dlm_lock_resource* %432)
  %434 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %435 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %434, i32 0, i32 2
  %436 = call i32 @spin_unlock(i32* %435)
  br label %437

437:                                              ; preds = %430, %421
  br label %445

438:                                              ; preds = %393
  %439 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %440 = icmp ne %struct.dlm_lock_resource* %439, null
  br i1 %440, label %441, label %444

441:                                              ; preds = %438
  %442 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %443 = call i32 @dlm_lockres_put(%struct.dlm_lock_resource* %442)
  br label %444

444:                                              ; preds = %441, %438
  br label %445

445:                                              ; preds = %444, %437
  %446 = load i32, i32* %23, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %451, label %448

448:                                              ; preds = %445
  %449 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %450 = call i32 @dlm_put(%struct.dlm_ctxt* %449)
  br label %451

451:                                              ; preds = %448, %445
  %452 = load i32, i32* %10, align 4
  store i32 %452, i32* %5, align 4
  br label %453

453:                                              ; preds = %451, %34
  %454 = load i32, i32* %5, align 4
  ret i32 %454
}

declare dso_local i32 @dlm_grab(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_domain_fully_joined(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_lockid_hash(i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dlm_lock_resource* @__dlm_lookup_lockres(%struct.dlm_ctxt*, i8*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @hlist_unhashed(i32*) #1

declare dso_local i32 @dlm_lockres_put(%struct.dlm_lock_resource*) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.dlm_master_list_entry*) #1

declare dso_local i32 @dlm_lockres_set_refmap_bit(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dlm_find_mle(%struct.dlm_ctxt*, %struct.dlm_master_list_entry**, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @dlm_put_mle(%struct.dlm_master_list_entry*) #1

declare dso_local %struct.dlm_master_list_entry* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @dlm_init_mle(%struct.dlm_master_list_entry*, i64, %struct.dlm_ctxt*, i32*, i8*, i32) #1

declare dso_local i32 @__dlm_insert_mle(%struct.dlm_ctxt*, %struct.dlm_master_list_entry*) #1

declare dso_local i32 @dlm_dispatch_assert_master(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i32, i32, i32) #1

declare dso_local i32 @__dlm_lockres_grab_inflight_worker(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_put(%struct.dlm_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
