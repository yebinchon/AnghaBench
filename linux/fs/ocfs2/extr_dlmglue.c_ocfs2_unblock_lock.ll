; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_unblock_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_unblock_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_lock_res = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 (%struct.ocfs2_lock_res*)*, i32 (%struct.ocfs2_lock_res*, i32)*, i32 (%struct.ocfs2_lock_res*, i32)* }
%struct.ocfs2_unblock_ctl = type { i32, i32 }

@OCFS2_LOCK_BLOCKED = common dso_local global i32 0, align 4
@DLM_LOCK_NL = common dso_local global i32 0, align 4
@OCFS2_LOCK_BUSY = common dso_local global i32 0, align 4
@OCFS2_LOCK_PENDING = common dso_local global i32 0, align 4
@ML_BASTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"lockres %s, ReQ: Pending\0A\00", align 1
@OCFS2_LOCK_UPCONVERT_FINISHING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"lockres %s, Aborting dc\0A\00", align 1
@DLM_LOCK_EX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"lockres %s, ReQ: EX/PR Holders %u,%u\0A\00", align 1
@DLM_LOCK_PR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"lockres %s, ReQ: EX Holders %u\0A\00", align 1
@LOCK_TYPE_REQUIRES_REFRESH = common dso_local global i32 0, align 4
@OCFS2_LOCK_REFRESHING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"lockres %s, ReQ: Lock Refreshing\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"lockres %s, ReQ: Checkpointing\0A\00", align 1
@UNBLOCK_STOP_POST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"lockres %s, UNBLOCK_STOP_POST\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"lockres %s, block=%d:%d, level=%d:%d, Recheck\0A\00", align 1
@LOCK_TYPE_USES_LVB = common dso_local global i32 0, align 4
@OCFS2_LOCK_NEEDS_REFRESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.ocfs2_lock_res*, %struct.ocfs2_unblock_ctl*)* @ocfs2_unblock_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_unblock_lock(%struct.ocfs2_super* %0, %struct.ocfs2_lock_res* %1, %struct.ocfs2_unblock_ctl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca %struct.ocfs2_lock_res*, align 8
  %7 = alloca %struct.ocfs2_unblock_ctl*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store %struct.ocfs2_lock_res* %1, %struct.ocfs2_lock_res** %6, align 8
  store %struct.ocfs2_unblock_ctl* %2, %struct.ocfs2_unblock_ctl** %7, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %16 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %15, i32 0, i32 3
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  br label %19

19:                                               ; preds = %277, %3
  %20 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %21 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @OCFS2_LOCK_BLOCKED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %19
  %27 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %28 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DLM_LOCK_NL, align 4
  %31 = icmp ne i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %35 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %34, i32 0, i32 3
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  store i32 0, i32* %12, align 4
  br label %343

38:                                               ; preds = %19
  %39 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %40 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %81

45:                                               ; preds = %38
  %46 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %47 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @OCFS2_LOCK_PENDING, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load i32, i32* @ML_BASTS, align 4
  %54 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %55 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i32, i8*, i32, ...) @mlog(i32 %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %351

58:                                               ; preds = %45
  %59 = load %struct.ocfs2_unblock_ctl*, %struct.ocfs2_unblock_ctl** %7, align 8
  %60 = getelementptr inbounds %struct.ocfs2_unblock_ctl, %struct.ocfs2_unblock_ctl* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  %61 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %62 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %63 = call i32 @ocfs2_prepare_cancel_convert(%struct.ocfs2_super* %61, %struct.ocfs2_lock_res* %62)
  store i32 %63, i32* %12, align 4
  %64 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %65 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %64, i32 0, i32 3
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %58
  %71 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %72 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %73 = call i32 @ocfs2_cancel_convert(%struct.ocfs2_super* %71, %struct.ocfs2_lock_res* %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @mlog_errno(i32 %77)
  br label %79

79:                                               ; preds = %76, %70
  br label %80

80:                                               ; preds = %79, %58
  br label %343

81:                                               ; preds = %38
  %82 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %83 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @OCFS2_LOCK_UPCONVERT_FINISHING, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %351

89:                                               ; preds = %81
  %90 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %91 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @DLM_LOCK_NL, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %124

95:                                               ; preds = %89
  %96 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %97 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %96, i32 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %102 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %101, i32 0, i32 7
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ true, %95 ], [ %104, %100 ]
  %107 = zext i1 %106 to i32
  %108 = call i32 @BUG_ON(i32 %107)
  %109 = load i32, i32* @ML_BASTS, align 4
  %110 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %111 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i32, i8*, i32, ...) @mlog(i32 %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @DLM_LOCK_NL, align 4
  %115 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %116 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %118 = load i32, i32* @OCFS2_LOCK_BLOCKED, align 4
  %119 = call i32 @lockres_clear_flags(%struct.ocfs2_lock_res* %117, i32 %118)
  %120 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %121 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %120, i32 0, i32 3
  %122 = load i64, i64* %8, align 8
  %123 = call i32 @spin_unlock_irqrestore(i32* %121, i64 %122)
  br label %343

124:                                              ; preds = %89
  %125 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %126 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @DLM_LOCK_EX, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %152

130:                                              ; preds = %124
  %131 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %132 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %131, i32 0, i32 6
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %130
  %136 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %137 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %136, i32 0, i32 7
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %135, %130
  %141 = load i32, i32* @ML_BASTS, align 4
  %142 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %143 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %146 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %145, i32 0, i32 6
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %149 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %148, i32 0, i32 7
  %150 = load i64, i64* %149, align 8
  %151 = call i32 (i32, i8*, i32, ...) @mlog(i32 %141, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %144, i64 %147, i64 %150)
  br label %351

152:                                              ; preds = %135, %124
  %153 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %154 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @DLM_LOCK_PR, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %172

158:                                              ; preds = %152
  %159 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %160 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %159, i32 0, i32 6
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %158
  %164 = load i32, i32* @ML_BASTS, align 4
  %165 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %166 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %169 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %168, i32 0, i32 6
  %170 = load i64, i64* %169, align 8
  %171 = call i32 (i32, i8*, i32, ...) @mlog(i32 %164, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %167, i64 %170)
  br label %351

172:                                              ; preds = %158, %152
  %173 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %174 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %173, i32 0, i32 4
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @LOCK_TYPE_REQUIRES_REFRESH, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %194

181:                                              ; preds = %172
  %182 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %183 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @OCFS2_LOCK_REFRESHING, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %181
  %189 = load i32, i32* @ML_BASTS, align 4
  %190 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %191 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 8
  %193 = call i32 (i32, i8*, i32, ...) @mlog(i32 %189, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %192)
  br label %351

194:                                              ; preds = %181, %172
  %195 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %196 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @ocfs2_highest_compat_lock_level(i32 %197)
  store i32 %198, i32* %10, align 4
  %199 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %200 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %199, i32 0, i32 4
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 3
  %203 = load i32 (%struct.ocfs2_lock_res*, i32)*, i32 (%struct.ocfs2_lock_res*, i32)** %202, align 8
  %204 = icmp ne i32 (%struct.ocfs2_lock_res*, i32)* %203, null
  br i1 %204, label %205, label %221

205:                                              ; preds = %194
  %206 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %207 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %206, i32 0, i32 4
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 3
  %210 = load i32 (%struct.ocfs2_lock_res*, i32)*, i32 (%struct.ocfs2_lock_res*, i32)** %209, align 8
  %211 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %212 = load i32, i32* %10, align 4
  %213 = call i32 %210(%struct.ocfs2_lock_res* %211, i32 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %221, label %215

215:                                              ; preds = %205
  %216 = load i32, i32* @ML_BASTS, align 4
  %217 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %218 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 8
  %220 = call i32 (i32, i8*, i32, ...) @mlog(i32 %216, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %219)
  br label %351

221:                                              ; preds = %205, %194
  %222 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %223 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %222, i32 0, i32 4
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 2
  %226 = load i32 (%struct.ocfs2_lock_res*, i32)*, i32 (%struct.ocfs2_lock_res*, i32)** %225, align 8
  %227 = icmp ne i32 (%struct.ocfs2_lock_res*, i32)* %226, null
  br i1 %227, label %229, label %228

228:                                              ; preds = %221
  br label %292

229:                                              ; preds = %221
  %230 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %231 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  store i32 %232, i32* %9, align 4
  %233 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %234 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  store i32 %235, i32* %11, align 4
  %236 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %237 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %236, i32 0, i32 3
  %238 = load i64, i64* %8, align 8
  %239 = call i32 @spin_unlock_irqrestore(i32* %237, i64 %238)
  %240 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %241 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %240, i32 0, i32 4
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 2
  %244 = load i32 (%struct.ocfs2_lock_res*, i32)*, i32 (%struct.ocfs2_lock_res*, i32)** %243, align 8
  %245 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %246 = load i32, i32* %9, align 4
  %247 = call i32 %244(%struct.ocfs2_lock_res* %245, i32 %246)
  %248 = load %struct.ocfs2_unblock_ctl*, %struct.ocfs2_unblock_ctl** %7, align 8
  %249 = getelementptr inbounds %struct.ocfs2_unblock_ctl, %struct.ocfs2_unblock_ctl* %248, i32 0, i32 1
  store i32 %247, i32* %249, align 4
  %250 = load %struct.ocfs2_unblock_ctl*, %struct.ocfs2_unblock_ctl** %7, align 8
  %251 = getelementptr inbounds %struct.ocfs2_unblock_ctl, %struct.ocfs2_unblock_ctl* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @UNBLOCK_STOP_POST, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %261

255:                                              ; preds = %229
  %256 = load i32, i32* @ML_BASTS, align 4
  %257 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %258 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %257, i32 0, i32 5
  %259 = load i32, i32* %258, align 8
  %260 = call i32 (i32, i8*, i32, ...) @mlog(i32 %256, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %259)
  br label %343

261:                                              ; preds = %229
  %262 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %263 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %262, i32 0, i32 3
  %264 = load i64, i64* %8, align 8
  %265 = call i32 @spin_lock_irqsave(i32* %263, i64 %264)
  %266 = load i32, i32* %9, align 4
  %267 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %268 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %266, %269
  br i1 %270, label %277, label %271

271:                                              ; preds = %261
  %272 = load i32, i32* %11, align 4
  %273 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %274 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = icmp ne i32 %272, %275
  br i1 %276, label %277, label %291

277:                                              ; preds = %271, %261
  %278 = load i32, i32* @ML_BASTS, align 4
  %279 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %280 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %279, i32 0, i32 5
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* %9, align 4
  %283 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %284 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* %11, align 4
  %287 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %288 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = call i32 (i32, i8*, i32, ...) @mlog(i32 %278, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %281, i32 %282, i32 %285, i32 %286, i32 %289)
  br label %19

291:                                              ; preds = %271
  br label %292

292:                                              ; preds = %291, %228
  %293 = load %struct.ocfs2_unblock_ctl*, %struct.ocfs2_unblock_ctl** %7, align 8
  %294 = getelementptr inbounds %struct.ocfs2_unblock_ctl, %struct.ocfs2_unblock_ctl* %293, i32 0, i32 0
  store i32 0, i32* %294, align 4
  %295 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %296 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %295, i32 0, i32 4
  %297 = load %struct.TYPE_2__*, %struct.TYPE_2__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @LOCK_TYPE_USES_LVB, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %329

303:                                              ; preds = %292
  %304 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %305 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @DLM_LOCK_EX, align 4
  %308 = icmp eq i32 %306, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %303
  store i32 1, i32* %13, align 4
  br label %310

310:                                              ; preds = %309, %303
  %311 = load i32, i32* %13, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %328

313:                                              ; preds = %310
  %314 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %315 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* @OCFS2_LOCK_NEEDS_REFRESH, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %328, label %320

320:                                              ; preds = %313
  %321 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %322 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %321, i32 0, i32 4
  %323 = load %struct.TYPE_2__*, %struct.TYPE_2__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %323, i32 0, i32 1
  %325 = load i32 (%struct.ocfs2_lock_res*)*, i32 (%struct.ocfs2_lock_res*)** %324, align 8
  %326 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %327 = call i32 %325(%struct.ocfs2_lock_res* %326)
  br label %328

328:                                              ; preds = %320, %313, %310
  br label %329

329:                                              ; preds = %328, %292
  %330 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %331 = load i32, i32* %10, align 4
  %332 = call i32 @ocfs2_prepare_downconvert(%struct.ocfs2_lock_res* %330, i32 %331)
  store i32 %332, i32* %14, align 4
  %333 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %334 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %333, i32 0, i32 3
  %335 = load i64, i64* %8, align 8
  %336 = call i32 @spin_unlock_irqrestore(i32* %334, i64 %335)
  %337 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %338 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %339 = load i32, i32* %10, align 4
  %340 = load i32, i32* %13, align 4
  %341 = load i32, i32* %14, align 4
  %342 = call i32 @ocfs2_downconvert_lock(%struct.ocfs2_super* %337, %struct.ocfs2_lock_res* %338, i32 %339, i32 %340, i32 %341)
  store i32 %342, i32* %12, align 4
  br label %343

343:                                              ; preds = %329, %255, %105, %80, %26
  %344 = load i32, i32* %12, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %343
  %347 = load i32, i32* %12, align 4
  %348 = call i32 @mlog_errno(i32 %347)
  br label %349

349:                                              ; preds = %346, %343
  %350 = load i32, i32* %12, align 4
  store i32 %350, i32* %4, align 4
  br label %358

351:                                              ; preds = %215, %188, %163, %140, %88, %52
  %352 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %353 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %352, i32 0, i32 3
  %354 = load i64, i64* %8, align 8
  %355 = call i32 @spin_unlock_irqrestore(i32* %353, i64 %354)
  %356 = load %struct.ocfs2_unblock_ctl*, %struct.ocfs2_unblock_ctl** %7, align 8
  %357 = getelementptr inbounds %struct.ocfs2_unblock_ctl, %struct.ocfs2_unblock_ctl* %356, i32 0, i32 0
  store i32 1, i32* %357, align 4
  store i32 0, i32* %4, align 4
  br label %358

358:                                              ; preds = %351, %349
  %359 = load i32, i32* %4, align 4
  ret i32 %359
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @ocfs2_prepare_cancel_convert(%struct.ocfs2_super*, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_cancel_convert(%struct.ocfs2_super*, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @lockres_clear_flags(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @ocfs2_highest_compat_lock_level(i32) #1

declare dso_local i32 @ocfs2_prepare_downconvert(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @ocfs2_downconvert_lock(%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
