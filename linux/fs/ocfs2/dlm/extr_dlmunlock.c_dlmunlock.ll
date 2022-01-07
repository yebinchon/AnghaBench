; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmunlock.c_dlmunlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmunlock.c_dlmunlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i64, i32 }
%struct.dlm_lockstatus = type { %struct.dlm_lock* }
%struct.dlm_lock = type { %struct.TYPE_2__, %struct.dlm_lock_resource* }
%struct.TYPE_2__ = type { i64 }
%struct.dlm_lock_resource = type { i64, i32 }

@DLM_BADARGS = common dso_local global i32 0, align 4
@LKM_CANCEL = common dso_local global i32 0, align 4
@LKM_VALBLK = common dso_local global i32 0, align 4
@LKM_INVVALBLK = common dso_local global i32 0, align 4
@DLM_BADPARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"VALBLK given with CANCEL: ignoring VALBLK\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"lock=%p res=%p\0A\00", align 1
@LKM_EXMODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [60 x i8] c"done calling dlmunlock_master: returned %d, call_ast is %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"done calling dlmunlock_remote: returned %d, call_ast is %d\0A\00", align 1
@DLM_RECOVERING = common dso_local global i32 0, align 4
@DLM_MIGRATING = common dso_local global i32 0, align 4
@DLM_FORWARD = common dso_local global i32 0, align 4
@DLM_NOLOCKMGR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [73 x i8] c"retrying unlock due to pending recovery/migration/in-progress/reconnect\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"calling unlockast(%p, %d)\0A\00", align 1
@DLM_CANCELGRANT = common dso_local global i32 0, align 4
@DLM_NORMAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"kicking the thread\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"returning status=%d!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlmunlock(%struct.dlm_ctxt* %0, %struct.dlm_lockstatus* %1, i32 %2, i32 (i8*, i32)** %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dlm_ctxt*, align 8
  %8 = alloca %struct.dlm_lockstatus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32 (i8*, i32)**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dlm_lock_resource*, align 8
  %14 = alloca %struct.dlm_lock*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %7, align 8
  store %struct.dlm_lockstatus* %1, %struct.dlm_lockstatus** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 (i8*, i32)** %3, i32 (i8*, i32)*** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.dlm_lock* null, %struct.dlm_lock** %14, align 8
  %17 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %8, align 8
  %18 = icmp ne %struct.dlm_lockstatus* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @DLM_BADARGS, align 4
  %21 = call i32 @dlm_error(i32 %20)
  %22 = load i32, i32* @DLM_BADARGS, align 4
  store i32 %22, i32* %6, align 4
  br label %220

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @LKM_CANCEL, align 4
  %26 = load i32, i32* @LKM_VALBLK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @LKM_INVVALBLK, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = and i32 %24, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load i32, i32* @DLM_BADPARAM, align 4
  %35 = call i32 @dlm_error(i32 %34)
  %36 = load i32, i32* @DLM_BADPARAM, align 4
  store i32 %36, i32* %6, align 4
  br label %220

37:                                               ; preds = %23
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @LKM_VALBLK, align 4
  %40 = load i32, i32* @LKM_CANCEL, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = load i32, i32* @LKM_VALBLK, align 4
  %44 = load i32, i32* @LKM_CANCEL, align 4
  %45 = or i32 %43, %44
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @LKM_VALBLK, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %47, %37
  %54 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %8, align 8
  %55 = getelementptr inbounds %struct.dlm_lockstatus, %struct.dlm_lockstatus* %54, i32 0, i32 0
  %56 = load %struct.dlm_lock*, %struct.dlm_lock** %55, align 8
  %57 = icmp ne %struct.dlm_lock* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %8, align 8
  %60 = getelementptr inbounds %struct.dlm_lockstatus, %struct.dlm_lockstatus* %59, i32 0, i32 0
  %61 = load %struct.dlm_lock*, %struct.dlm_lock** %60, align 8
  %62 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %61, i32 0, i32 1
  %63 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %62, align 8
  %64 = icmp ne %struct.dlm_lock_resource* %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %58, %53
  %66 = load i32, i32* @DLM_BADPARAM, align 4
  %67 = call i32 @dlm_error(i32 %66)
  %68 = load i32, i32* @DLM_BADPARAM, align 4
  store i32 %68, i32* %6, align 4
  br label %220

69:                                               ; preds = %58
  %70 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %8, align 8
  %71 = getelementptr inbounds %struct.dlm_lockstatus, %struct.dlm_lockstatus* %70, i32 0, i32 0
  %72 = load %struct.dlm_lock*, %struct.dlm_lock** %71, align 8
  store %struct.dlm_lock* %72, %struct.dlm_lock** %14, align 8
  %73 = load %struct.dlm_lock*, %struct.dlm_lock** %14, align 8
  %74 = icmp ne %struct.dlm_lock* %73, null
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i32 @BUG_ON(i32 %76)
  %78 = load %struct.dlm_lock*, %struct.dlm_lock** %14, align 8
  %79 = call i32 @dlm_lock_get(%struct.dlm_lock* %78)
  %80 = load %struct.dlm_lock*, %struct.dlm_lock** %14, align 8
  %81 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %80, i32 0, i32 1
  %82 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %81, align 8
  store %struct.dlm_lock_resource* %82, %struct.dlm_lock_resource** %13, align 8
  %83 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %84 = icmp ne %struct.dlm_lock_resource* %83, null
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i32 @BUG_ON(i32 %86)
  %88 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %89 = call i32 @dlm_lockres_get(%struct.dlm_lock_resource* %88)
  br label %90

90:                                               ; preds = %163, %69
  store i32 0, i32* %15, align 4
  %91 = load %struct.dlm_lock*, %struct.dlm_lock** %14, align 8
  %92 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %93 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.dlm_lock* %91, %struct.dlm_lock_resource* %92)
  %94 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %95 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %94, i32 0, i32 1
  %96 = call i32 @spin_lock(i32* %95)
  %97 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %98 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %101 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @LKM_VALBLK, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %90
  %110 = load %struct.dlm_lock*, %struct.dlm_lock** %14, align 8
  %111 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @LKM_EXMODE, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %109
  %117 = load i32, i32* @LKM_VALBLK, align 4
  %118 = xor i32 %117, -1
  %119 = load i32, i32* %9, align 4
  %120 = and i32 %119, %118
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %116, %109, %90
  %122 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %123 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %122, i32 0, i32 1
  %124 = call i32 @spin_unlock(i32* %123)
  %125 = load i32, i32* %16, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %121
  %128 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %129 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %130 = load %struct.dlm_lock*, %struct.dlm_lock** %14, align 8
  %131 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %8, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @dlmunlock_master(%struct.dlm_ctxt* %128, %struct.dlm_lock_resource* %129, %struct.dlm_lock* %130, %struct.dlm_lockstatus* %131, i32 %132, i32* %15)
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %15, align 4
  %136 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %134, i32 %135)
  br label %147

137:                                              ; preds = %121
  %138 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %139 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %140 = load %struct.dlm_lock*, %struct.dlm_lock** %14, align 8
  %141 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %8, align 8
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @dlmunlock_remote(%struct.dlm_ctxt* %138, %struct.dlm_lock_resource* %139, %struct.dlm_lock* %140, %struct.dlm_lockstatus* %141, i32 %142, i32* %15)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %15, align 4
  %146 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %137, %127
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* @DLM_RECOVERING, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %163, label %151

151:                                              ; preds = %147
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* @DLM_MIGRATING, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %163, label %155

155:                                              ; preds = %151
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* @DLM_FORWARD, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* @DLM_NOLOCKMGR, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %159, %155, %151, %147
  %164 = call i32 @msleep(i32 50)
  %165 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0))
  br label %90

166:                                              ; preds = %159
  %167 = load i32, i32* %15, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %191

169:                                              ; preds = %166
  %170 = load i8*, i8** %11, align 8
  %171 = load i32, i32* %12, align 4
  %172 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %170, i32 %171)
  %173 = load i32, i32* %16, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %169
  %176 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %177 = call i32 @dlm_kick_thread(%struct.dlm_ctxt* %176, %struct.dlm_lock_resource* null)
  %178 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %179 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %182 = load %struct.dlm_lock*, %struct.dlm_lock** %14, align 8
  %183 = call i32 @dlm_lock_basts_flushed(%struct.dlm_ctxt* %181, %struct.dlm_lock* %182)
  %184 = call i32 @wait_event(i32 %180, i32 %183)
  br label %185

185:                                              ; preds = %175, %169
  %186 = load i32 (i8*, i32)**, i32 (i8*, i32)*** %10, align 8
  %187 = load i32 (i8*, i32)*, i32 (i8*, i32)** %186, align 8
  %188 = load i8*, i8** %11, align 8
  %189 = load i32, i32* %12, align 4
  %190 = call i32 %187(i8* %188, i32 %189)
  br label %191

191:                                              ; preds = %185, %166
  %192 = load i32, i32* %12, align 4
  %193 = load i32, i32* @DLM_CANCELGRANT, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %191
  %196 = load i32, i32* @DLM_NORMAL, align 4
  store i32 %196, i32* %12, align 4
  br label %197

197:                                              ; preds = %195, %191
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* @DLM_NORMAL, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %206

201:                                              ; preds = %197
  %202 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %203 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %204 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %205 = call i32 @dlm_kick_thread(%struct.dlm_ctxt* %203, %struct.dlm_lock_resource* %204)
  br label %209

206:                                              ; preds = %197
  %207 = load i32, i32* %12, align 4
  %208 = call i32 @dlm_error(i32 %207)
  br label %209

209:                                              ; preds = %206, %201
  %210 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %211 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %212 = call i32 @dlm_lockres_calc_usage(%struct.dlm_ctxt* %210, %struct.dlm_lock_resource* %211)
  %213 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %214 = call i32 @dlm_lockres_put(%struct.dlm_lock_resource* %213)
  %215 = load %struct.dlm_lock*, %struct.dlm_lock** %14, align 8
  %216 = call i32 @dlm_lock_put(%struct.dlm_lock* %215)
  %217 = load i32, i32* %12, align 4
  %218 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %217)
  %219 = load i32, i32* %12, align 4
  store i32 %219, i32* %6, align 4
  br label %220

220:                                              ; preds = %209, %65, %33, %19
  %221 = load i32, i32* %6, align 4
  ret i32 %221
}

declare dso_local i32 @dlm_error(i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dlm_lock_get(%struct.dlm_lock*) #1

declare dso_local i32 @dlm_lockres_get(%struct.dlm_lock_resource*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlmunlock_master(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*, %struct.dlm_lockstatus*, i32, i32*) #1

declare dso_local i32 @dlmunlock_remote(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*, %struct.dlm_lockstatus*, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dlm_kick_thread(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @dlm_lock_basts_flushed(%struct.dlm_ctxt*, %struct.dlm_lock*) #1

declare dso_local i32 @dlm_lockres_calc_usage(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_lockres_put(%struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_lock_put(%struct.dlm_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
