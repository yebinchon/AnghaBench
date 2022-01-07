; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c___ocfs2_cluster_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c___ocfs2_cluster_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, i32 }
%struct.ocfs2_lock_res = type { i32, i32, i64, i32, %struct.TYPE_5__, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.ocfs2_mask_waiter = type { i32 }

@OCFS2_MOUNT_NOINTR = common dso_local global i32 0, align 4
@OCFS2_LOCK_INITIALIZED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LOCK_TYPE_USES_LVB = common dso_local global i32 0, align 4
@DLM_LKF_VALBLK = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@OCFS2_LOCK_FREEING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Cluster lock called on freeing lockres %s! flags 0x%lx\0A\00", align 1
@OCFS2_LOCK_BUSY = common dso_local global i32 0, align 4
@OCFS2_LOCK_UPCONVERT_FINISHING = common dso_local global i32 0, align 4
@OCFS2_LOCK_BLOCKED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@DLM_LKF_NOQUEUE = common dso_local global i32 0, align 4
@OCFS2_AST_INVALID = common dso_local global i64 0, align 8
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"lockres %s has action %u pending\0A\00", align 1
@OCFS2_LOCK_ATTACHED = common dso_local global i32 0, align 4
@OCFS2_AST_ATTACH = common dso_local global i64 0, align 8
@DLM_LKF_CONVERT = common dso_local global i32 0, align 4
@OCFS2_AST_CONVERT = common dso_local global i64 0, align 8
@DLM_LOCK_IV = common dso_local global i32 0, align 4
@DLM_LOCK_NL = common dso_local global i32 0, align 4
@ML_BASTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"lockres %s, convert from %d to %d\0A\00", align 1
@OCFS2_LOCK_ID_MAX_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"ocfs2_dlm_lock\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"lock %s, successful return from ocfs2_dlm_lock\0A\00", align 1
@OCFS2_LOCK_NONBLOCK = common dso_local global i32 0, align 4
@OCFS2_LOCK_NONBLOCK_FINISHED = common dso_local global i32 0, align 4
@DLM_LOCK_PR = common dso_local global i32 0, align 4
@OCFS2_META_LOCK_NOQUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32, i32, i32, i32, i64)* @__ocfs2_cluster_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_cluster_lock(%struct.ocfs2_super* %0, %struct.ocfs2_lock_res* %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_super*, align 8
  %10 = alloca %struct.ocfs2_lock_res*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.ocfs2_mask_waiter, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %9, align 8
  store %struct.ocfs2_lock_res* %1, %struct.ocfs2_lock_res** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  %25 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %26 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @OCFS2_MOUNT_NOINTR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %33 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %34 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @OCFS2_LOCK_INITIALIZED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %7
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  %42 = call i32 @mlog_errno(i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %347

45:                                               ; preds = %7
  %46 = call i32 @ocfs2_init_mask_waiter(%struct.ocfs2_mask_waiter* %16)
  %47 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %48 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %47, i32 0, i32 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @LOCK_TYPE_USES_LVB, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load i32, i32* @DLM_LKF_VALBLK, align 4
  %57 = load i32, i32* %12, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %55, %45
  br label %60

60:                                               ; preds = %337, %324, %257, %59
  store i32 0, i32* %17, align 4
  %61 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %62 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %61, i32 0, i32 5
  %63 = load i64, i64* %20, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load i32, i32* %18, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load i32, i32* @current, align 4
  %69 = call i64 @signal_pending(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* @ERESTARTSYS, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %19, align 4
  br label %267

74:                                               ; preds = %67, %60
  %75 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %76 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @OCFS2_LOCK_FREEING, align 4
  %79 = and i32 %77, %78
  %80 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %81 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %84 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @mlog_bug_on_msg(i32 %79, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %85)
  %87 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %88 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %74
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %96 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp sgt i32 %94, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %101 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %102 = call i32 @lockres_add_mask_waiter(%struct.ocfs2_lock_res* %100, %struct.ocfs2_mask_waiter* %16, i32 %101, i32 0)
  store i32 1, i32* %17, align 4
  br label %267

103:                                              ; preds = %93, %74
  %104 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %105 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @OCFS2_LOCK_UPCONVERT_FINISHING, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %103
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %113 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp sle i32 %111, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %263

117:                                              ; preds = %110
  br label %118

118:                                              ; preds = %117, %103
  %119 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %120 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @OCFS2_LOCK_BLOCKED, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %118
  %126 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @ocfs2_may_continue_on_blocked_lock(%struct.ocfs2_lock_res* %126, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %125
  %131 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %132 = load i32, i32* @OCFS2_LOCK_BLOCKED, align 4
  %133 = call i32 @lockres_add_mask_waiter(%struct.ocfs2_lock_res* %131, %struct.ocfs2_mask_waiter* %16, i32 %132, i32 0)
  store i32 1, i32* %17, align 4
  br label %267

134:                                              ; preds = %125, %118
  %135 = load i32, i32* %11, align 4
  %136 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %137 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp sgt i32 %135, %138
  br i1 %139, label %140, label %262

140:                                              ; preds = %134
  %141 = load i32, i32* %22, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i32, i32* @EAGAIN, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %19, align 4
  br label %267

146:                                              ; preds = %140
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* @DLM_LKF_NOQUEUE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  store i32 1, i32* %22, align 4
  br label %152

152:                                              ; preds = %151, %146
  %153 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %154 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @OCFS2_AST_INVALID, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %167

158:                                              ; preds = %152
  %159 = load i32, i32* @ML_ERROR, align 4
  %160 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %161 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %164 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = call i32 (i32, i8*, i32, ...) @mlog(i32 %159, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %162, i64 %165)
  br label %167

167:                                              ; preds = %158, %152
  %168 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %169 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @OCFS2_LOCK_ATTACHED, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %182, label %174

174:                                              ; preds = %167
  %175 = load i64, i64* @OCFS2_AST_ATTACH, align 8
  %176 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %177 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %176, i32 0, i32 2
  store i64 %175, i64* %177, align 8
  %178 = load i32, i32* @DLM_LKF_CONVERT, align 4
  %179 = xor i32 %178, -1
  %180 = load i32, i32* %12, align 4
  %181 = and i32 %180, %179
  store i32 %181, i32* %12, align 4
  br label %189

182:                                              ; preds = %167
  %183 = load i64, i64* @OCFS2_AST_CONVERT, align 8
  %184 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %185 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %184, i32 0, i32 2
  store i64 %183, i64* %185, align 8
  %186 = load i32, i32* @DLM_LKF_CONVERT, align 4
  %187 = load i32, i32* %12, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %12, align 4
  br label %189

189:                                              ; preds = %182, %174
  %190 = load i32, i32* %11, align 4
  %191 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %192 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %191, i32 0, i32 3
  store i32 %190, i32* %192, align 8
  %193 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %194 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %195 = call i32 @lockres_or_flags(%struct.ocfs2_lock_res* %193, i32 %194)
  %196 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %197 = call i32 @lockres_set_pending(%struct.ocfs2_lock_res* %196)
  store i32 %197, i32* %21, align 4
  %198 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %199 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %198, i32 0, i32 5
  %200 = load i64, i64* %20, align 8
  %201 = call i32 @spin_unlock_irqrestore(i32* %199, i64 %200)
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* @DLM_LOCK_IV, align 4
  %204 = icmp eq i32 %202, %203
  %205 = zext i1 %204 to i32
  %206 = call i32 @BUG_ON(i32 %205)
  %207 = load i32, i32* %11, align 4
  %208 = load i32, i32* @DLM_LOCK_NL, align 4
  %209 = icmp eq i32 %207, %208
  %210 = zext i1 %209 to i32
  %211 = call i32 @BUG_ON(i32 %210)
  %212 = load i32, i32* @ML_BASTS, align 4
  %213 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %214 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %213, i32 0, i32 6
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %217 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %11, align 4
  %220 = call i32 (i32, i8*, i32, ...) @mlog(i32 %212, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %215, i32 %218, i32 %219)
  %221 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %222 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %11, align 4
  %225 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %226 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %225, i32 0, i32 7
  %227 = load i32, i32* %12, align 4
  %228 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %229 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %228, i32 0, i32 6
  %230 = load i32, i32* %229, align 4
  %231 = load i64, i64* @OCFS2_LOCK_ID_MAX_LEN, align 8
  %232 = sub nsw i64 %231, 1
  %233 = call i32 @ocfs2_dlm_lock(i32 %223, i32 %224, i32* %226, i32 %227, i32 %230, i64 %232)
  store i32 %233, i32* %19, align 4
  %234 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %235 = load i32, i32* %21, align 4
  %236 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %237 = call i32 @lockres_clear_pending(%struct.ocfs2_lock_res* %234, i32 %235, %struct.ocfs2_super* %236)
  %238 = load i32, i32* %19, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %257

240:                                              ; preds = %189
  %241 = load i32, i32* %12, align 4
  %242 = load i32, i32* @DLM_LKF_NOQUEUE, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %240
  %246 = load i32, i32* %19, align 4
  %247 = load i32, i32* @EAGAIN, align 4
  %248 = sub nsw i32 0, %247
  %249 = icmp ne i32 %246, %248
  br i1 %249, label %250, label %254

250:                                              ; preds = %245, %240
  %251 = load i32, i32* %19, align 4
  %252 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %253 = call i32 @ocfs2_log_dlm_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %251, %struct.ocfs2_lock_res* %252)
  br label %254

254:                                              ; preds = %250, %245
  %255 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %256 = call i32 @ocfs2_recover_from_dlm_error(%struct.ocfs2_lock_res* %255, i32 1)
  br label %286

257:                                              ; preds = %189
  store i32 1, i32* %23, align 4
  %258 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %259 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %258, i32 0, i32 6
  %260 = load i32, i32* %259, align 4
  %261 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %260)
  store i32 0, i32* %18, align 4
  br label %60

262:                                              ; preds = %134
  br label %263

263:                                              ; preds = %262, %116
  %264 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %265 = load i32, i32* %11, align 4
  %266 = call i32 @ocfs2_inc_holders(%struct.ocfs2_lock_res* %264, i32 %265)
  store i32 0, i32* %19, align 4
  br label %267

267:                                              ; preds = %263, %143, %130, %99, %71
  %268 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %269 = load i32, i32* @OCFS2_LOCK_UPCONVERT_FINISHING, align 4
  %270 = call i32 @lockres_clear_flags(%struct.ocfs2_lock_res* %268, i32 %269)
  %271 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %272 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @OCFS2_LOCK_BLOCKED, align 4
  %275 = and i32 %273, %274
  store i32 %275, i32* %24, align 4
  %276 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %277 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %276, i32 0, i32 5
  %278 = load i64, i64* %20, align 8
  %279 = call i32 @spin_unlock_irqrestore(i32* %277, i64 %278)
  %280 = load i32, i32* %24, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %267
  %283 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %284 = call i32 @ocfs2_wake_downconvert_thread(%struct.ocfs2_super* %283)
  br label %285

285:                                              ; preds = %282, %267
  br label %286

286:                                              ; preds = %285, %254
  %287 = load i32, i32* %17, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %330

289:                                              ; preds = %286
  %290 = load i32, i32* %13, align 4
  %291 = load i32, i32* @OCFS2_LOCK_NONBLOCK, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %330

294:                                              ; preds = %289
  %295 = getelementptr inbounds %struct.ocfs2_mask_waiter, %struct.ocfs2_mask_waiter* %16, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %298 = load i32, i32* @OCFS2_LOCK_BLOCKED, align 4
  %299 = or i32 %297, %298
  %300 = and i32 %296, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %330

302:                                              ; preds = %294
  store i32 0, i32* %17, align 4
  %303 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %304 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %303, i32 0, i32 5
  %305 = load i64, i64* %20, align 8
  %306 = call i32 @spin_lock_irqsave(i32* %304, i64 %305)
  %307 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %308 = call i64 @__lockres_remove_mask_waiter(%struct.ocfs2_lock_res* %307, %struct.ocfs2_mask_waiter* %16)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %324

310:                                              ; preds = %302
  %311 = load i32, i32* %23, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %310
  %314 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %315 = load i32, i32* @OCFS2_LOCK_NONBLOCK_FINISHED, align 4
  %316 = call i32 @lockres_or_flags(%struct.ocfs2_lock_res* %314, i32 %315)
  br label %317

317:                                              ; preds = %313, %310
  %318 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %319 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %318, i32 0, i32 5
  %320 = load i64, i64* %20, align 8
  %321 = call i32 @spin_unlock_irqrestore(i32* %319, i64 %320)
  %322 = load i32, i32* @EAGAIN, align 4
  %323 = sub nsw i32 0, %322
  store i32 %323, i32* %19, align 4
  br label %329

324:                                              ; preds = %302
  %325 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %326 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %325, i32 0, i32 5
  %327 = load i64, i64* %20, align 8
  %328 = call i32 @spin_unlock_irqrestore(i32* %326, i64 %327)
  br label %60

329:                                              ; preds = %317
  br label %330

330:                                              ; preds = %329, %294, %289, %286
  %331 = load i32, i32* %17, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %341

333:                                              ; preds = %330
  %334 = call i32 @ocfs2_wait_for_mask(%struct.ocfs2_mask_waiter* %16)
  store i32 %334, i32* %19, align 4
  %335 = load i32, i32* %19, align 4
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %333
  br label %60

338:                                              ; preds = %333
  %339 = load i32, i32* %19, align 4
  %340 = call i32 @mlog_errno(i32 %339)
  br label %341

341:                                              ; preds = %338, %330
  %342 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %343 = load i32, i32* %11, align 4
  %344 = load i32, i32* %19, align 4
  %345 = call i32 @ocfs2_update_lock_stats(%struct.ocfs2_lock_res* %342, i32 %343, %struct.ocfs2_mask_waiter* %16, i32 %344)
  %346 = load i32, i32* %19, align 4
  store i32 %346, i32* %8, align 4
  br label %347

347:                                              ; preds = %341, %39
  %348 = load i32, i32* %8, align 4
  ret i32 %348
}

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_init_mask_waiter(%struct.ocfs2_mask_waiter*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i32, i32) #1

declare dso_local i32 @lockres_add_mask_waiter(%struct.ocfs2_lock_res*, %struct.ocfs2_mask_waiter*, i32, i32) #1

declare dso_local i32 @ocfs2_may_continue_on_blocked_lock(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @lockres_or_flags(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @lockres_set_pending(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_dlm_lock(i32, i32, i32*, i32, i32, i64) #1

declare dso_local i32 @lockres_clear_pending(%struct.ocfs2_lock_res*, i32, %struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_log_dlm_error(i8*, i32, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_recover_from_dlm_error(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @ocfs2_inc_holders(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @lockres_clear_flags(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @ocfs2_wake_downconvert_thread(%struct.ocfs2_super*) #1

declare dso_local i64 @__lockres_remove_mask_waiter(%struct.ocfs2_lock_res*, %struct.ocfs2_mask_waiter*) #1

declare dso_local i32 @ocfs2_wait_for_mask(%struct.ocfs2_mask_waiter*) #1

declare dso_local i32 @ocfs2_update_lock_stats(%struct.ocfs2_lock_res*, i32, %struct.ocfs2_mask_waiter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
