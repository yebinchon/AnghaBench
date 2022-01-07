; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmlock.c_dlmlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmlock.c_dlmlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i64 }
%struct.dlm_lockstatus = type { i32, i32, %struct.dlm_lock* }
%struct.dlm_lock = type { i8*, %struct.dlm_lockstatus*, i32*, i32*, %struct.dlm_lock_resource* }
%struct.dlm_lock_resource = type { i64, i32 }

@DLM_BADARGS = common dso_local global i32 0, align 4
@DLM_BADPARAM = common dso_local global i32 0, align 4
@LKM_EXMODE = common dso_local global i32 0, align 4
@LKM_PRMODE = common dso_local global i32 0, align 4
@LKM_NLMODE = common dso_local global i32 0, align 4
@LKM_VALID_FLAGS = common dso_local global i32 0, align 4
@LKM_CONVERT = common dso_local global i32 0, align 4
@LKM_RECOVERY = common dso_local global i32 0, align 4
@LKM_LOCAL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"strange LOCAL convert request!\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"NULL lock pointer in convert request\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"NULL lockres pointer in convert request\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"new args:  lksb=%p, ast=%p, bast=%p, astdata=%p\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"orig args: lksb=%p, ast=%p, bast=%p, astdata=%p\0A\00", align 1
@DLM_RECOVERING = common dso_local global i32 0, align 4
@DLM_MIGRATING = common dso_local global i32 0, align 4
@DLM_FORWARD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"retrying convert with migration/recovery/in-progress\0A\00", align 1
@DLM_IVBUFLEN = common dso_local global i32 0, align 4
@DLM_LOCKID_NAME_MAX = common dso_local global i32 0, align 4
@DLM_IVLOCKID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"type=%d, flags = 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"creating lock: lock=%p res=%p\0A\00", align 1
@LKM_VALBLK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"LKM_VALBLK passed by caller\0A\00", align 1
@LKM_GET_LVB = common dso_local global i32 0, align 4
@DLM_LKSB_GET_LVB = common dso_local global i32 0, align 4
@DLM_NODE_DEATH_WAIT_MAX = common dso_local global i32 0, align 4
@DLM_NORMAL = common dso_local global i32 0, align 4
@DLM_NOTQUEUED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlmlock(%struct.dlm_ctxt* %0, i32 %1, %struct.dlm_lockstatus* %2, i32 %3, i8* %4, i32 %5, i32* %6, i8* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.dlm_ctxt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dlm_lockstatus*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.dlm_lock_resource*, align 8
  %22 = alloca %struct.dlm_lock*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %11, align 8
  store i32 %1, i32* %12, align 4
  store %struct.dlm_lockstatus* %2, %struct.dlm_lockstatus** %13, align 8
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  store %struct.dlm_lock_resource* null, %struct.dlm_lock_resource** %21, align 8
  store %struct.dlm_lock* null, %struct.dlm_lock** %22, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %26 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %13, align 8
  %27 = icmp ne %struct.dlm_lockstatus* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %9
  %29 = load i32, i32* @DLM_BADARGS, align 4
  %30 = call i32 @dlm_error(i32 %29)
  %31 = load i32, i32* @DLM_BADARGS, align 4
  store i32 %31, i32* %10, align 4
  br label %411

32:                                               ; preds = %9
  %33 = load i32, i32* @DLM_BADPARAM, align 4
  store i32 %33, i32* %20, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @LKM_EXMODE, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @LKM_PRMODE, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @LKM_NLMODE, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %20, align 4
  %47 = call i32 @dlm_error(i32 %46)
  br label %386

48:                                               ; preds = %41, %37, %32
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @LKM_VALID_FLAGS, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* %20, align 4
  %56 = call i32 @dlm_error(i32 %55)
  br label %386

57:                                               ; preds = %48
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @LKM_CONVERT, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %23, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @LKM_RECOVERY, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %24, align 4
  %64 = load i32, i32* %24, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %57
  %67 = load i8*, i8** %15, align 8
  %68 = load i32, i32* %16, align 4
  %69 = call i32 @dlm_is_recovery_lock(i8* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* %23, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71, %66
  %75 = load i32, i32* %20, align 4
  %76 = call i32 @dlm_error(i32 %75)
  br label %386

77:                                               ; preds = %71, %57
  %78 = load i32, i32* %23, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @LKM_LOCAL, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* @ML_ERROR, align 4
  %87 = call i32 (i32, i8*, ...) @mlog(i32 %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %386

88:                                               ; preds = %80, %77
  %89 = load i32, i32* %23, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %198

91:                                               ; preds = %88
  %92 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %13, align 8
  %93 = getelementptr inbounds %struct.dlm_lockstatus, %struct.dlm_lockstatus* %92, i32 0, i32 2
  %94 = load %struct.dlm_lock*, %struct.dlm_lock** %93, align 8
  store %struct.dlm_lock* %94, %struct.dlm_lock** %22, align 8
  %95 = load %struct.dlm_lock*, %struct.dlm_lock** %22, align 8
  %96 = icmp ne %struct.dlm_lock* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* @ML_ERROR, align 4
  %99 = call i32 (i32, i8*, ...) @mlog(i32 %98, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %386

100:                                              ; preds = %91
  %101 = load %struct.dlm_lock*, %struct.dlm_lock** %22, align 8
  %102 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %101, i32 0, i32 4
  %103 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %102, align 8
  store %struct.dlm_lock_resource* %103, %struct.dlm_lock_resource** %21, align 8
  %104 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %21, align 8
  %105 = icmp ne %struct.dlm_lock_resource* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %100
  %107 = load i32, i32* @ML_ERROR, align 4
  %108 = call i32 (i32, i8*, ...) @mlog(i32 %107, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %386

109:                                              ; preds = %100
  %110 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %21, align 8
  %111 = call i32 @dlm_lockres_get(%struct.dlm_lock_resource* %110)
  %112 = load %struct.dlm_lock*, %struct.dlm_lock** %22, align 8
  %113 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %112, i32 0, i32 1
  %114 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %113, align 8
  %115 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %13, align 8
  %116 = icmp ne %struct.dlm_lockstatus* %114, %115
  br i1 %116, label %135, label %117

117:                                              ; preds = %109
  %118 = load %struct.dlm_lock*, %struct.dlm_lock** %22, align 8
  %119 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = load i32*, i32** %17, align 8
  %122 = icmp ne i32* %120, %121
  br i1 %122, label %135, label %123

123:                                              ; preds = %117
  %124 = load %struct.dlm_lock*, %struct.dlm_lock** %22, align 8
  %125 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i32*, i32** %19, align 8
  %128 = icmp ne i32* %126, %127
  br i1 %128, label %135, label %129

129:                                              ; preds = %123
  %130 = load %struct.dlm_lock*, %struct.dlm_lock** %22, align 8
  %131 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = load i8*, i8** %18, align 8
  %134 = icmp ne i8* %132, %133
  br i1 %134, label %135, label %157

135:                                              ; preds = %129, %123, %117, %109
  %136 = load i32, i32* @DLM_BADARGS, align 4
  store i32 %136, i32* %20, align 4
  %137 = load i32, i32* @ML_ERROR, align 4
  %138 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %13, align 8
  %139 = load i32*, i32** %17, align 8
  %140 = load i32*, i32** %19, align 8
  %141 = load i8*, i8** %18, align 8
  %142 = call i32 (i32, i8*, ...) @mlog(i32 %137, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), %struct.dlm_lockstatus* %138, i32* %139, i32* %140, i8* %141)
  %143 = load i32, i32* @ML_ERROR, align 4
  %144 = load %struct.dlm_lock*, %struct.dlm_lock** %22, align 8
  %145 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %144, i32 0, i32 1
  %146 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %145, align 8
  %147 = load %struct.dlm_lock*, %struct.dlm_lock** %22, align 8
  %148 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.dlm_lock*, %struct.dlm_lock** %22, align 8
  %151 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.dlm_lock*, %struct.dlm_lock** %22, align 8
  %154 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 (i32, i8*, ...) @mlog(i32 %143, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), %struct.dlm_lockstatus* %146, i32* %149, i32* %152, i8* %155)
  br label %386

157:                                              ; preds = %129
  br label %158

158:                                              ; preds = %194, %157
  %159 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %160 = call i32 @dlm_wait_for_recovery(%struct.dlm_ctxt* %159)
  %161 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %21, align 8
  %162 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %165 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %163, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %158
  %169 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %170 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %21, align 8
  %171 = load %struct.dlm_lock*, %struct.dlm_lock** %22, align 8
  %172 = load i32, i32* %14, align 4
  %173 = load i32, i32* %12, align 4
  %174 = call i32 @dlmconvert_master(%struct.dlm_ctxt* %169, %struct.dlm_lock_resource* %170, %struct.dlm_lock* %171, i32 %172, i32 %173)
  store i32 %174, i32* %20, align 4
  br label %182

175:                                              ; preds = %158
  %176 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %177 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %21, align 8
  %178 = load %struct.dlm_lock*, %struct.dlm_lock** %22, align 8
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* %12, align 4
  %181 = call i32 @dlmconvert_remote(%struct.dlm_ctxt* %176, %struct.dlm_lock_resource* %177, %struct.dlm_lock* %178, i32 %179, i32 %180)
  store i32 %181, i32* %20, align 4
  br label %182

182:                                              ; preds = %175, %168
  %183 = load i32, i32* %20, align 4
  %184 = load i32, i32* @DLM_RECOVERING, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %194, label %186

186:                                              ; preds = %182
  %187 = load i32, i32* %20, align 4
  %188 = load i32, i32* @DLM_MIGRATING, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %194, label %190

190:                                              ; preds = %186
  %191 = load i32, i32* %20, align 4
  %192 = load i32, i32* @DLM_FORWARD, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %190, %186, %182
  %195 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  %196 = call i32 @msleep(i32 100)
  br label %158

197:                                              ; preds = %190
  br label %385

198:                                              ; preds = %88
  %199 = load i32, i32* @DLM_BADARGS, align 4
  store i32 %199, i32* %20, align 4
  %200 = load i8*, i8** %15, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %205, label %202

202:                                              ; preds = %198
  %203 = load i32, i32* %20, align 4
  %204 = call i32 @dlm_error(i32 %203)
  br label %386

205:                                              ; preds = %198
  %206 = load i32, i32* @DLM_IVBUFLEN, align 4
  store i32 %206, i32* %20, align 4
  %207 = load i32, i32* %16, align 4
  %208 = load i32, i32* @DLM_LOCKID_NAME_MAX, align 4
  %209 = icmp sgt i32 %207, %208
  br i1 %209, label %213, label %210

210:                                              ; preds = %205
  %211 = load i32, i32* %16, align 4
  %212 = icmp slt i32 %211, 1
  br i1 %212, label %213, label %216

213:                                              ; preds = %210, %205
  %214 = load i32, i32* %20, align 4
  %215 = call i32 @dlm_error(i32 %214)
  br label %386

216:                                              ; preds = %210
  %217 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %218 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @dlm_get_next_cookie(i64 %219, i32* %25)
  %221 = load i32, i32* %12, align 4
  %222 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %223 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i32, i32* %25, align 4
  %226 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %13, align 8
  %227 = call %struct.dlm_lock* @dlm_new_lock(i32 %221, i64 %224, i32 %225, %struct.dlm_lockstatus* %226)
  store %struct.dlm_lock* %227, %struct.dlm_lock** %22, align 8
  %228 = load %struct.dlm_lock*, %struct.dlm_lock** %22, align 8
  %229 = icmp ne %struct.dlm_lock* %228, null
  br i1 %229, label %233, label %230

230:                                              ; preds = %216
  %231 = load i32, i32* %20, align 4
  %232 = call i32 @dlm_error(i32 %231)
  br label %386

233:                                              ; preds = %216
  %234 = load i32, i32* %24, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %233
  %237 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %238 = call i32 @dlm_wait_for_recovery(%struct.dlm_ctxt* %237)
  br label %239

239:                                              ; preds = %236, %233
  %240 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %241 = load i8*, i8** %15, align 8
  %242 = load i32, i32* %16, align 4
  %243 = load i32, i32* %14, align 4
  %244 = call %struct.dlm_lock_resource* @dlm_get_lock_resource(%struct.dlm_ctxt* %240, i8* %241, i32 %242, i32 %243)
  store %struct.dlm_lock_resource* %244, %struct.dlm_lock_resource** %21, align 8
  %245 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %21, align 8
  %246 = icmp ne %struct.dlm_lock_resource* %245, null
  br i1 %246, label %251, label %247

247:                                              ; preds = %239
  %248 = load i32, i32* @DLM_IVLOCKID, align 4
  store i32 %248, i32* %20, align 4
  %249 = load i32, i32* %20, align 4
  %250 = call i32 @dlm_error(i32 %249)
  br label %386

251:                                              ; preds = %239
  %252 = load i32, i32* %12, align 4
  %253 = load i32, i32* %14, align 4
  %254 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %252, i32 %253)
  %255 = load %struct.dlm_lock*, %struct.dlm_lock** %22, align 8
  %256 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %21, align 8
  %257 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), %struct.dlm_lock* %255, %struct.dlm_lock_resource* %256)
  %258 = load %struct.dlm_lock*, %struct.dlm_lock** %22, align 8
  %259 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %21, align 8
  %260 = call i32 @dlm_lock_attach_lockres(%struct.dlm_lock* %258, %struct.dlm_lock_resource* %259)
  %261 = load i32*, i32** %17, align 8
  %262 = load %struct.dlm_lock*, %struct.dlm_lock** %22, align 8
  %263 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %262, i32 0, i32 3
  store i32* %261, i32** %263, align 8
  %264 = load i32*, i32** %19, align 8
  %265 = load %struct.dlm_lock*, %struct.dlm_lock** %22, align 8
  %266 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %265, i32 0, i32 2
  store i32* %264, i32** %266, align 8
  %267 = load i8*, i8** %18, align 8
  %268 = load %struct.dlm_lock*, %struct.dlm_lock** %22, align 8
  %269 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %268, i32 0, i32 0
  store i8* %267, i8** %269, align 8
  br label %270

270:                                              ; preds = %345, %337, %251
  %271 = load i32, i32* %14, align 4
  %272 = load i32, i32* @LKM_VALBLK, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %297

275:                                              ; preds = %270
  %276 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %277 = load i32, i32* %12, align 4
  %278 = load i32, i32* @LKM_PRMODE, align 4
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %285

280:                                              ; preds = %275
  %281 = load i32, i32* @LKM_VALBLK, align 4
  %282 = xor i32 %281, -1
  %283 = load i32, i32* %14, align 4
  %284 = and i32 %283, %282
  store i32 %284, i32* %14, align 4
  br label %296

285:                                              ; preds = %275
  %286 = load i32, i32* @LKM_GET_LVB, align 4
  %287 = load i32, i32* %14, align 4
  %288 = or i32 %287, %286
  store i32 %288, i32* %14, align 4
  %289 = load i32, i32* @DLM_LKSB_GET_LVB, align 4
  %290 = load %struct.dlm_lock*, %struct.dlm_lock** %22, align 8
  %291 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %290, i32 0, i32 1
  %292 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %291, align 8
  %293 = getelementptr inbounds %struct.dlm_lockstatus, %struct.dlm_lockstatus* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = or i32 %294, %289
  store i32 %295, i32* %293, align 4
  br label %296

296:                                              ; preds = %285, %280
  br label %297

297:                                              ; preds = %296, %270
  %298 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %21, align 8
  %299 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %302 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = icmp eq i64 %300, %303
  br i1 %304, label %305, label %311

305:                                              ; preds = %297
  %306 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %307 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %21, align 8
  %308 = load %struct.dlm_lock*, %struct.dlm_lock** %22, align 8
  %309 = load i32, i32* %14, align 4
  %310 = call i32 @dlmlock_master(%struct.dlm_ctxt* %306, %struct.dlm_lock_resource* %307, %struct.dlm_lock* %308, i32 %309)
  store i32 %310, i32* %20, align 4
  br label %317

311:                                              ; preds = %297
  %312 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %313 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %21, align 8
  %314 = load %struct.dlm_lock*, %struct.dlm_lock** %22, align 8
  %315 = load i32, i32* %14, align 4
  %316 = call i32 @dlmlock_remote(%struct.dlm_ctxt* %312, %struct.dlm_lock_resource* %313, %struct.dlm_lock* %314, i32 %315)
  store i32 %316, i32* %20, align 4
  br label %317

317:                                              ; preds = %311, %305
  %318 = load i32, i32* %20, align 4
  %319 = load i32, i32* @DLM_RECOVERING, align 4
  %320 = icmp eq i32 %318, %319
  br i1 %320, label %329, label %321

321:                                              ; preds = %317
  %322 = load i32, i32* %20, align 4
  %323 = load i32, i32* @DLM_MIGRATING, align 4
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %329, label %325

325:                                              ; preds = %321
  %326 = load i32, i32* %20, align 4
  %327 = load i32, i32* @DLM_FORWARD, align 4
  %328 = icmp eq i32 %326, %327
  br i1 %328, label %329, label %349

329:                                              ; preds = %325, %321, %317
  %330 = call i32 @msleep(i32 100)
  %331 = load i32, i32* %24, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %345

333:                                              ; preds = %329
  %334 = load i32, i32* %20, align 4
  %335 = load i32, i32* @DLM_RECOVERING, align 4
  %336 = icmp ne i32 %334, %335
  br i1 %336, label %337, label %338

337:                                              ; preds = %333
  br label %270

338:                                              ; preds = %333
  %339 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %340 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %21, align 8
  %341 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = load i32, i32* @DLM_NODE_DEATH_WAIT_MAX, align 4
  %344 = call i32 @dlm_wait_for_node_death(%struct.dlm_ctxt* %339, i64 %342, i32 %343)
  br label %348

345:                                              ; preds = %329
  %346 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %347 = call i32 @dlm_wait_for_recovery(%struct.dlm_ctxt* %346)
  br label %270

348:                                              ; preds = %338
  br label %349

349:                                              ; preds = %348, %325
  %350 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %21, align 8
  %351 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %350, i32 0, i32 1
  %352 = call i32 @spin_lock(i32* %351)
  %353 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %354 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %21, align 8
  %355 = call i32 @dlm_lockres_drop_inflight_ref(%struct.dlm_ctxt* %353, %struct.dlm_lock_resource* %354)
  %356 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %21, align 8
  %357 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %356, i32 0, i32 1
  %358 = call i32 @spin_unlock(i32* %357)
  %359 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %360 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %21, align 8
  %361 = call i32 @dlm_lockres_calc_usage(%struct.dlm_ctxt* %359, %struct.dlm_lock_resource* %360)
  %362 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %363 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %21, align 8
  %364 = call i32 @dlm_kick_thread(%struct.dlm_ctxt* %362, %struct.dlm_lock_resource* %363)
  %365 = load i32, i32* %20, align 4
  %366 = load i32, i32* @DLM_NORMAL, align 4
  %367 = icmp ne i32 %365, %366
  br i1 %367, label %368, label %384

368:                                              ; preds = %349
  %369 = load i32, i32* @DLM_LKSB_GET_LVB, align 4
  %370 = xor i32 %369, -1
  %371 = load %struct.dlm_lock*, %struct.dlm_lock** %22, align 8
  %372 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %371, i32 0, i32 1
  %373 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %372, align 8
  %374 = getelementptr inbounds %struct.dlm_lockstatus, %struct.dlm_lockstatus* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = and i32 %375, %370
  store i32 %376, i32* %374, align 4
  %377 = load i32, i32* %20, align 4
  %378 = load i32, i32* @DLM_NOTQUEUED, align 4
  %379 = icmp ne i32 %377, %378
  br i1 %379, label %380, label %383

380:                                              ; preds = %368
  %381 = load i32, i32* %20, align 4
  %382 = call i32 @dlm_error(i32 %381)
  br label %383

383:                                              ; preds = %380, %368
  br label %386

384:                                              ; preds = %349
  br label %385

385:                                              ; preds = %384, %197
  br label %386

386:                                              ; preds = %385, %383, %247, %230, %213, %202, %135, %106, %97, %85, %74, %54, %45
  %387 = load i32, i32* %20, align 4
  %388 = load i32, i32* @DLM_NORMAL, align 4
  %389 = icmp ne i32 %387, %388
  br i1 %389, label %390, label %403

390:                                              ; preds = %386
  %391 = load %struct.dlm_lock*, %struct.dlm_lock** %22, align 8
  %392 = icmp ne %struct.dlm_lock* %391, null
  br i1 %392, label %393, label %399

393:                                              ; preds = %390
  %394 = load i32, i32* %23, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %399, label %396

396:                                              ; preds = %393
  %397 = load %struct.dlm_lock*, %struct.dlm_lock** %22, align 8
  %398 = call i32 @dlm_lock_put(%struct.dlm_lock* %397)
  br label %399

399:                                              ; preds = %396, %393, %390
  %400 = load i32, i32* %20, align 4
  %401 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %13, align 8
  %402 = getelementptr inbounds %struct.dlm_lockstatus, %struct.dlm_lockstatus* %401, i32 0, i32 0
  store i32 %400, i32* %402, align 8
  br label %403

403:                                              ; preds = %399, %386
  %404 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %21, align 8
  %405 = icmp ne %struct.dlm_lock_resource* %404, null
  br i1 %405, label %406, label %409

406:                                              ; preds = %403
  %407 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %21, align 8
  %408 = call i32 @dlm_lockres_put(%struct.dlm_lock_resource* %407)
  br label %409

409:                                              ; preds = %406, %403
  %410 = load i32, i32* %20, align 4
  store i32 %410, i32* %10, align 4
  br label %411

411:                                              ; preds = %409, %28
  %412 = load i32, i32* %10, align 4
  ret i32 %412
}

declare dso_local i32 @dlm_error(i32) #1

declare dso_local i32 @dlm_is_recovery_lock(i8*, i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @dlm_lockres_get(%struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_wait_for_recovery(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlmconvert_master(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*, i32, i32) #1

declare dso_local i32 @dlmconvert_remote(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dlm_get_next_cookie(i64, i32*) #1

declare dso_local %struct.dlm_lock* @dlm_new_lock(i32, i64, i32, %struct.dlm_lockstatus*) #1

declare dso_local %struct.dlm_lock_resource* @dlm_get_lock_resource(%struct.dlm_ctxt*, i8*, i32, i32) #1

declare dso_local i32 @dlm_lock_attach_lockres(%struct.dlm_lock*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @dlmlock_master(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*, i32) #1

declare dso_local i32 @dlmlock_remote(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*, i32) #1

declare dso_local i32 @dlm_wait_for_node_death(%struct.dlm_ctxt*, i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dlm_lockres_drop_inflight_ref(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_lockres_calc_usage(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_kick_thread(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_lock_put(%struct.dlm_lock*) #1

declare dso_local i32 @dlm_lockres_put(%struct.dlm_lock_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
