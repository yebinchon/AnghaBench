; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_pick_recovery_master.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_pick_recovery_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dlm_lockstatus = type { i32 }
%struct.dlm_lock_resource = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"starting recovery of %s at %lu, dead=%u, this=%u\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@LKM_EXMODE = common dso_local global i32 0, align 4
@LKM_NOQUEUE = common dso_local global i32 0, align 4
@LKM_RECOVERY = common dso_local global i32 0, align 4
@DLM_RECOVERY_LOCK_NAME = common dso_local global i32 0, align 4
@DLM_RECOVERY_LOCK_NAME_LEN = common dso_local global i32 0, align 4
@dlm_reco_ast = common dso_local global i32 0, align 4
@dlm_reco_bast = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"%s: dlmlock($RECOVERY) returned %d, lksb=%d\0A\00", align 1
@DLM_NORMAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"dlm=%s dlmlock says I got it (this=%u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"%s: got reco EX lock, but %u will do the recovery\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@O2NM_INVALID_NODE_NUM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"%s: got reco EX lock, but node got recovered already\0A\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"%s: new master is %u but no dead node!\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"%s: dead=%u, this=%u, sending begin_reco now\0A\00", align 1
@dlm_reco_unlock_ast = common dso_local global i32 0, align 4
@DLM_DENIED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"got DLM_DENIED, trying LKM_CANCEL\0A\00", align 1
@LKM_CANCEL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"dlmunlock returned %d\0A\00", align 1
@DLM_NOTQUEUED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [51 x i8] c"dlm=%s dlmlock says another node got it (this=%u)\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"%s: reco master taking awhile\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"%s: reco master %u is ready to recover %u\0A\00", align 1
@DLM_RECOVERING = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [48 x i8] c"dlm=%s dlmlock says master node died (this=%u)\0A\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"%s: got %s from dlmlock($RECOVERY), lksb.status=%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"recovery lock not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*)* @dlm_pick_recovery_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_pick_recovery_master(%struct.dlm_ctxt* %0) #0 {
  %2 = alloca %struct.dlm_ctxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlm_lockstatus, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dlm_lock_resource*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %2, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %10 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @jiffies, align 4
  %13 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %14 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %18 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i32 %16, i32 %19)
  br label %21

21:                                               ; preds = %209, %185, %1
  %22 = call i32 @memset(%struct.dlm_lockstatus* %4, i32 0, i32 4)
  %23 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %24 = load i32, i32* @LKM_EXMODE, align 4
  %25 = load i32, i32* @LKM_NOQUEUE, align 4
  %26 = load i32, i32* @LKM_RECOVERY, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @DLM_RECOVERY_LOCK_NAME, align 4
  %29 = load i32, i32* @DLM_RECOVERY_LOCK_NAME_LEN, align 4
  %30 = load i32, i32* @dlm_reco_ast, align 4
  %31 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %32 = load i32, i32* @dlm_reco_bast, align 4
  %33 = call i32 @dlmlock(%struct.dlm_ctxt* %23, i32 %24, %struct.dlm_lockstatus* %4, i32 %27, i32 %28, i32 %29, i32 %30, %struct.dlm_ctxt* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %35 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %3, align 4
  %38 = getelementptr inbounds %struct.dlm_lockstatus, %struct.dlm_lockstatus* %4, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37, i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @DLM_NORMAL, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %163

44:                                               ; preds = %21
  %45 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %46 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %49 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %50)
  %52 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %53 = call i64 @dlm_reco_master_ready(%struct.dlm_ctxt* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %44
  %56 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %57 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %60 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %58, i32 %62)
  %64 = load i32, i32* @EEXIST, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %105

66:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  %67 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %68 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %67, i32 0, i32 4
  %69 = call i32 @spin_lock(i32* %68)
  %70 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %71 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @O2NM_INVALID_NODE_NUM, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %66
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  %79 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %80 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  %83 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %84 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @O2NM_INVALID_NODE_NUM, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %76
  %90 = load i32, i32* @ML_ERROR, align 4
  %91 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %92 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %95 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i32, i8*, ...) @mlog(i32 %90, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %93, i32 %97)
  %99 = call i32 (...) @BUG()
  br label %100

100:                                              ; preds = %89, %76
  br label %101

101:                                              ; preds = %100, %66
  %102 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %103 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %102, i32 0, i32 4
  %104 = call i32 @spin_unlock(i32* %103)
  br label %105

105:                                              ; preds = %101, %55
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %139, label %108

108:                                              ; preds = %105
  %109 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %110 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %113 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %117 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %111, i32 %115, i32 %118)
  %120 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %121 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %122 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @dlm_send_begin_reco_message(%struct.dlm_ctxt* %120, i32 %124)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @BUG_ON(i32 %126)
  %128 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %129 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %128, i32 0, i32 4
  %130 = call i32 @spin_lock(i32* %129)
  %131 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %132 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %133 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @dlm_set_reco_master(%struct.dlm_ctxt* %131, i32 %134)
  %136 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %137 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %136, i32 0, i32 4
  %138 = call i32 @spin_unlock(i32* %137)
  br label %139

139:                                              ; preds = %108, %105
  %140 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %141 = load i32, i32* @dlm_reco_unlock_ast, align 4
  %142 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %143 = call i32 @dlmunlock(%struct.dlm_ctxt* %140, %struct.dlm_lockstatus* %4, i32 0, i32 %141, %struct.dlm_ctxt* %142)
  store i32 %143, i32* %3, align 4
  %144 = load i32, i32* %3, align 4
  %145 = load i32, i32* @DLM_DENIED, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %139
  %148 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %149 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %150 = load i32, i32* @LKM_CANCEL, align 4
  %151 = load i32, i32* @dlm_reco_unlock_ast, align 4
  %152 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %153 = call i32 @dlmunlock(%struct.dlm_ctxt* %149, %struct.dlm_lockstatus* %4, i32 %150, i32 %151, %struct.dlm_ctxt* %152)
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %147, %139
  %155 = load i32, i32* %3, align 4
  %156 = load i32, i32* @DLM_NORMAL, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = load i32, i32* @ML_ERROR, align 4
  %160 = load i32, i32* %3, align 4
  %161 = call i32 (i32, i8*, ...) @mlog(i32 %159, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %160)
  br label %162

162:                                              ; preds = %158, %154
  br label %246

163:                                              ; preds = %21
  %164 = load i32, i32* %3, align 4
  %165 = load i32, i32* @DLM_NOTQUEUED, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %205

167:                                              ; preds = %163
  %168 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %169 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %172 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0), i32 %170, i32 %173)
  %175 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %176 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %179 = call i64 @dlm_reco_master_ready(%struct.dlm_ctxt* %178)
  %180 = call i32 @msecs_to_jiffies(i32 1000)
  %181 = call i32 @wait_event_timeout(i32 %177, i64 %179, i32 %180)
  %182 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %183 = call i64 @dlm_reco_master_ready(%struct.dlm_ctxt* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %167
  %186 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %187 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %188)
  br label %21

190:                                              ; preds = %167
  %191 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %192 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %195 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %199 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i32 %193, i32 %197, i32 %201)
  %203 = load i32, i32* @EEXIST, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %5, align 4
  br label %245

205:                                              ; preds = %163
  %206 = load i32, i32* %3, align 4
  %207 = load i32, i32* @DLM_RECOVERING, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %217

209:                                              ; preds = %205
  %210 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %211 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %214 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0), i32 %212, i32 %215)
  br label %21

217:                                              ; preds = %205
  %218 = load i32, i32* @ML_ERROR, align 4
  %219 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %220 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %3, align 4
  %223 = call i32 @dlm_errname(i32 %222)
  %224 = getelementptr inbounds %struct.dlm_lockstatus, %struct.dlm_lockstatus* %4, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @dlm_errname(i32 %225)
  %227 = call i32 (i32, i8*, ...) @mlog(i32 %218, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0), i32 %221, i32 %223, i32 %226)
  %228 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %229 = load i32, i32* @DLM_RECOVERY_LOCK_NAME, align 4
  %230 = load i32, i32* @DLM_RECOVERY_LOCK_NAME_LEN, align 4
  %231 = call %struct.dlm_lock_resource* @dlm_lookup_lockres(%struct.dlm_ctxt* %228, i32 %229, i32 %230)
  store %struct.dlm_lock_resource* %231, %struct.dlm_lock_resource** %6, align 8
  %232 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %233 = icmp ne %struct.dlm_lock_resource* %232, null
  br i1 %233, label %234, label %239

234:                                              ; preds = %217
  %235 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %236 = call i32 @dlm_print_one_lock_resource(%struct.dlm_lock_resource* %235)
  %237 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %238 = call i32 @dlm_lockres_put(%struct.dlm_lock_resource* %237)
  br label %242

239:                                              ; preds = %217
  %240 = load i32, i32* @ML_ERROR, align 4
  %241 = call i32 (i32, i8*, ...) @mlog(i32 %240, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  br label %242

242:                                              ; preds = %239, %234
  %243 = call i32 (...) @BUG()
  br label %244

244:                                              ; preds = %242
  br label %245

245:                                              ; preds = %244, %190
  br label %246

246:                                              ; preds = %245, %162
  %247 = load i32, i32* %5, align 4
  ret i32 %247
}

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.dlm_lockstatus*, i32, i32) #1

declare dso_local i32 @dlmlock(%struct.dlm_ctxt*, i32, %struct.dlm_lockstatus*, i32, i32, i32, i32, %struct.dlm_ctxt*, i32) #1

declare dso_local i64 @dlm_reco_master_ready(%struct.dlm_ctxt*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_send_begin_reco_message(%struct.dlm_ctxt*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dlm_set_reco_master(%struct.dlm_ctxt*, i32) #1

declare dso_local i32 @dlmunlock(%struct.dlm_ctxt*, %struct.dlm_lockstatus*, i32, i32, %struct.dlm_ctxt*) #1

declare dso_local i32 @wait_event_timeout(i32, i64, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dlm_errname(i32) #1

declare dso_local %struct.dlm_lock_resource* @dlm_lookup_lockres(%struct.dlm_ctxt*, i32, i32) #1

declare dso_local i32 @dlm_print_one_lock_resource(%struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_lockres_put(%struct.dlm_lock_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
