; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmconvert.c_dlmconvert_remote.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmconvert.c_dlmconvert_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32 }
%struct.dlm_lock_resource = type { i32, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.dlm_lock = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"type=%d, convert_type=%d, busy=%d\0A\00", align 1
@DLM_LOCK_RES_IN_PROGRESS = common dso_local global i32 0, align 4
@DLM_LOCK_RES_RECOVERING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"bailing out early since res is RECOVERING on secondary queue\0A\00", align 1
@DLM_RECOVERING = common dso_local global i32 0, align 4
@LKM_IVMODE = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [80 x i8] c"converting a remote lock that is already converting! (cookie=%u:%llu, conv=%d)\0A\00", align 1
@DLM_DENIED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [141 x i8] c"last convert request returned DLM_RECOVERING, but owner has already queued and sent ast to me. res %.*s, (cookie=%u:%llu, type=%d, conv=%d)\0A\00", align 1
@DLM_NORMAL = common dso_local global i32 0, align 4
@LKM_VALBLK = common dso_local global i32 0, align 4
@LKM_EXMODE = common dso_local global i32 0, align 4
@LKM_PUT_LVB = common dso_local global i32 0, align 4
@DLM_LKSB_PUT_LVB = common dso_local global i32 0, align 4
@LKM_NLMODE = common dso_local global i32 0, align 4
@LKM_GET_LVB = common dso_local global i32 0, align 4
@DLM_LKSB_GET_LVB = common dso_local global i32 0, align 4
@DLM_NOTQUEUED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [87 x i8] c"%s: res %.*s, owner died and lock has been moved back to granted list, retry convert.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlmconvert_remote(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, %struct.dlm_lock* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dlm_ctxt*, align 8
  %7 = alloca %struct.dlm_lock_resource*, align 8
  %8 = alloca %struct.dlm_lock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %6, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %7, align 8
  store %struct.dlm_lock* %2, %struct.dlm_lock** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %13 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %17 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %21 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DLM_LOCK_RES_IN_PROGRESS, align 4
  %24 = and i32 %22, %23
  %25 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19, i32 %24)
  %26 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %27 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %26, i32 0, i32 2
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %30 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DLM_LOCK_RES_RECOVERING, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %5
  %36 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @DLM_RECOVERING, align 4
  store i32 %37, i32* %11, align 4
  br label %234

38:                                               ; preds = %5
  %39 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %40 = call i32 @__dlm_wait_on_lockres(%struct.dlm_lock_resource* %39)
  %41 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %42 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @LKM_IVMODE, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %38
  %48 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %49 = call i32 @__dlm_print_one_lock_resource(%struct.dlm_lock_resource* %48)
  %50 = load i32, i32* @ML_ERROR, align 4
  %51 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %52 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @be64_to_cpu(i32 %54)
  %56 = call i32 @dlm_get_lock_cookie_node(i32 %55)
  %57 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %58 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @be64_to_cpu(i32 %60)
  %62 = call i32 @dlm_get_lock_cookie_seq(i32 %61)
  %63 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %64 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i8*, ...) @mlog(i32 %50, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %62, i32 %66)
  %68 = load i32, i32* @DLM_DENIED, align 4
  store i32 %68, i32* %11, align 4
  br label %234

69:                                               ; preds = %38
  %70 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %71 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %114

76:                                               ; preds = %69
  %77 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %78 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @LKM_IVMODE, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %114

83:                                               ; preds = %76
  %84 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %85 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %89 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %93 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @be64_to_cpu(i32 %95)
  %97 = call i32 @dlm_get_lock_cookie_node(i32 %96)
  %98 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %99 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @be64_to_cpu(i32 %101)
  %103 = call i32 @dlm_get_lock_cookie_seq(i32 %102)
  %104 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %105 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %109 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.3, i64 0, i64 0), i32 %87, i32 %91, i32 %97, i32 %103, i32 %107, i32 %111)
  %113 = load i32, i32* @DLM_NORMAL, align 4
  store i32 %113, i32* %11, align 4
  br label %234

114:                                              ; preds = %76, %69
  %115 = load i32, i32* @DLM_LOCK_RES_IN_PROGRESS, align 4
  %116 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %117 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %121 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %120, i32 0, i32 3
  %122 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %123 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %122, i32 0, i32 4
  %124 = call i32 @list_move_tail(i32* %121, i32* %123)
  %125 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %126 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %129 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  store i32 %127, i32* %130, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @LKM_VALBLK, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %178

135:                                              ; preds = %114
  %136 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %137 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @LKM_EXMODE, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %153

142:                                              ; preds = %135
  %143 = load i32, i32* @LKM_PUT_LVB, align 4
  %144 = load i32, i32* %9, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* @DLM_LKSB_PUT_LVB, align 4
  %147 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %148 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %147, i32 0, i32 1
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %146
  store i32 %152, i32* %150, align 4
  br label %177

153:                                              ; preds = %135
  %154 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %155 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @LKM_NLMODE, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %153
  %161 = load i32, i32* @LKM_VALBLK, align 4
  %162 = xor i32 %161, -1
  %163 = load i32, i32* %9, align 4
  %164 = and i32 %163, %162
  store i32 %164, i32* %9, align 4
  br label %176

165:                                              ; preds = %153
  %166 = load i32, i32* @LKM_GET_LVB, align 4
  %167 = load i32, i32* %9, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* @DLM_LKSB_GET_LVB, align 4
  %170 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %171 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %170, i32 0, i32 1
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %169
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %165, %160
  br label %177

177:                                              ; preds = %176, %142
  br label %178

178:                                              ; preds = %177, %114
  %179 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %180 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %179, i32 0, i32 2
  %181 = call i32 @spin_unlock(i32* %180)
  %182 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %183 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %184 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @dlm_send_remote_convert_request(%struct.dlm_ctxt* %182, %struct.dlm_lock_resource* %183, %struct.dlm_lock* %184, i32 %185, i32 %186)
  store i32 %187, i32* %11, align 4
  %188 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %189 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %188, i32 0, i32 2
  %190 = call i32 @spin_lock(i32* %189)
  %191 = load i32, i32* @DLM_LOCK_RES_IN_PROGRESS, align 4
  %192 = xor i32 %191, -1
  %193 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %194 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = and i32 %195, %192
  store i32 %196, i32* %194, align 4
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* @DLM_NORMAL, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %211

200:                                              ; preds = %178
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* @DLM_NOTQUEUED, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %200
  %205 = load i32, i32* %11, align 4
  %206 = call i32 @dlm_error(i32 %205)
  br label %207

207:                                              ; preds = %204, %200
  %208 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %209 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %210 = call i32 @dlm_revert_pending_convert(%struct.dlm_lock_resource* %208, %struct.dlm_lock* %209)
  br label %231

211:                                              ; preds = %178
  %212 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %213 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %230, label %216

216:                                              ; preds = %211
  %217 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %218 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %221 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %225 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.4, i64 0, i64 0), i32 %219, i32 %223, i32 %227)
  %229 = load i32, i32* @DLM_RECOVERING, align 4
  store i32 %229, i32* %11, align 4
  br label %230

230:                                              ; preds = %216, %211
  br label %231

231:                                              ; preds = %230, %207
  %232 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %233 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %232, i32 0, i32 0
  store i32 0, i32* %233, align 8
  br label %234

234:                                              ; preds = %231, %83, %47, %35
  %235 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %236 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %235, i32 0, i32 2
  %237 = call i32 @spin_unlock(i32* %236)
  %238 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %239 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %238, i32 0, i32 1
  %240 = call i32 @wake_up(i32* %239)
  %241 = load i32, i32* %11, align 4
  ret i32 %241
}

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__dlm_wait_on_lockres(%struct.dlm_lock_resource*) #1

declare dso_local i32 @__dlm_print_one_lock_resource(%struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_get_lock_cookie_node(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @dlm_get_lock_cookie_seq(i32) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_send_remote_convert_request(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*, i32, i32) #1

declare dso_local i32 @dlm_error(i32) #1

declare dso_local i32 @dlm_revert_pending_convert(%struct.dlm_lock_resource*, %struct.dlm_lock*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
