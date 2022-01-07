; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_wait_for_lock_mastery.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_wait_for_lock_mastery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i64, i32 }
%struct.dlm_lock_resource = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.dlm_master_list_entry = type { i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@DLM_LOCK_RES_OWNER_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"%s:%.*s: owner is suddenly %u\0A\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"link to %u went down?: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"%s: %.*s: node map changed, restarting\0A\00", align 1
@DLM_MLE_BLOCK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"%s:%.*s: status change: old=%d new=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"%s:%.*s: restart lock mastery succeeded, rechecking now\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"map not changed and voting not done for %s:%.*s\0A\00", align 1
@O2NM_MAX_NODES = common dso_local global i64 0, align 8
@DLM_MASTERY_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"%s:%.*s: waiting again\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"done waiting, master is %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"about to master %.*s here, this=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_master_list_entry*, i32*)* @dlm_wait_for_lock_mastery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_wait_for_lock_mastery(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, %struct.dlm_master_list_entry* %2, i32* %3) #0 {
  %5 = alloca %struct.dlm_ctxt*, align 8
  %6 = alloca %struct.dlm_lock_resource*, align 8
  %7 = alloca %struct.dlm_master_list_entry*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %5, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %6, align 8
  store %struct.dlm_master_list_entry* %2, %struct.dlm_master_list_entry** %7, align 8
  store i32* %3, i32** %8, align 8
  br label %18

18:                                               ; preds = %258, %169, %64, %4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %20 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %19, i32 0, i32 1
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %23 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DLM_LOCK_RES_OWNER_UNKNOWN, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %74

27:                                               ; preds = %18
  %28 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %29 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %32 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %36 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %40 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (i32, i8*, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %34, i64 %38, i64 %41)
  %43 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %44 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %43, i32 0, i32 1
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %47 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %50 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = icmp ne i64 %48, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %27
  %55 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %56 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %57 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %58 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @dlm_do_master_request(%struct.dlm_lock_resource* %55, %struct.dlm_master_list_entry* %56, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %54
  %65 = load i32, i32* @ML_ERROR, align 4
  %66 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %67 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 (i32, i8*, i64, ...) @mlog(i32 %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %68, i32 %69)
  %71 = call i32 @msleep(i32 500)
  br label %18

72:                                               ; preds = %54
  br label %73

73:                                               ; preds = %72, %27
  store i32 0, i32* %10, align 4
  br label %317

74:                                               ; preds = %18
  %75 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %76 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %75, i32 0, i32 1
  %77 = call i32 @spin_unlock(i32* %76)
  %78 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %79 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %78, i32 0, i32 5
  %80 = call i32 @spin_lock(i32* %79)
  %81 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %82 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %9, align 8
  %84 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %85 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %88 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @memcmp(i32 %86, i32 %89, i32 4)
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %12, align 4
  %93 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %94 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %97 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @memcmp(i32 %95, i32 %98, i32 4)
  %100 = icmp eq i64 %99, 0
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %182

104:                                              ; preds = %74
  %105 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %106 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %109 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %113 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 (i32, i8*, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %107, i64 %111, i64 %115)
  %117 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %118 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %119 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %120 = load i32*, i32** %8, align 8
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @dlm_restart_lock_mastery(%struct.dlm_ctxt* %117, %struct.dlm_lock_resource* %118, %struct.dlm_master_list_entry* %119, i32 %121)
  store i32 %122, i32* %10, align 4
  %123 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %124 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @DLM_MLE_BLOCK, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %16, align 4
  %129 = load i32*, i32** %8, align 8
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %104
  %133 = load i32, i32* %16, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %132, %104
  %136 = load i32*, i32** %8, align 8
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %160, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %16, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %160

142:                                              ; preds = %139, %132
  %143 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %144 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %147 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %151 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i32*, i32** %8, align 8
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %16, align 4
  %157 = call i32 (i32, i8*, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %145, i64 %149, i64 %153, i32 %155, i32 %156)
  %158 = load i32, i32* %16, align 4
  %159 = load i32*, i32** %8, align 8
  store i32 %158, i32* %159, align 4
  br label %160

160:                                              ; preds = %142, %139, %135
  %161 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %162 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %161, i32 0, i32 5
  %163 = call i32 @spin_unlock(i32* %162)
  %164 = load i32, i32* %10, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = load i32, i32* %10, align 4
  %168 = call i32 @mlog_errno(i32 %167)
  br label %317

169:                                              ; preds = %160
  %170 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %171 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %174 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %178 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = call i32 (i32, i8*, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i64 %172, i64 %176, i64 %180)
  br label %18

182:                                              ; preds = %74
  %183 = load i32, i32* %13, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %198, label %185

185:                                              ; preds = %182
  %186 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %187 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %190 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %194 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = call i32 (i32, i8*, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i64 %188, i64 %192, i64 %196)
  br label %198

198:                                              ; preds = %185, %182
  br label %199

199:                                              ; preds = %198
  %200 = load i64, i64* %9, align 8
  %201 = load i64, i64* @O2NM_MAX_NODES, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  store i32 0, i32* %15, align 4
  br label %231

204:                                              ; preds = %199
  store i32 1, i32* %15, align 4
  %205 = load i32, i32* %13, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %230

207:                                              ; preds = %204
  %208 = load i32*, i32** %8, align 8
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %230, label %211

211:                                              ; preds = %207
  %212 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %213 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 8
  %215 = load i64, i64* @O2NM_MAX_NODES, align 8
  %216 = call i32 @find_next_bit(i32 %214, i64 %215, i32 0)
  store i32 %216, i32* %11, align 4
  %217 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %218 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* %11, align 4
  %221 = icmp sle i32 %219, %220
  br i1 %221, label %222, label %229

222:                                              ; preds = %211
  %223 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %224 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = sext i32 %225 to i64
  %227 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %228 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %227, i32 0, i32 0
  store i64 %226, i64* %228, align 8
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %229

229:                                              ; preds = %222, %211
  br label %230

230:                                              ; preds = %229, %207, %204
  br label %231

231:                                              ; preds = %230, %203
  %232 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %233 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %232, i32 0, i32 5
  %234 = call i32 @spin_unlock(i32* %233)
  %235 = load i32, i32* %15, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %276

237:                                              ; preds = %231
  %238 = load i32, i32* @DLM_MASTERY_TIMEOUT_MS, align 4
  %239 = call i64 @msecs_to_jiffies(i32 %238)
  store i64 %239, i64* %17, align 8
  %240 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %241 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %240, i32 0, i32 3
  %242 = call i32 @atomic_set(i32* %241, i32 0)
  %243 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %244 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %247 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %246, i32 0, i32 3
  %248 = call i32 @atomic_read(i32* %247)
  %249 = icmp eq i32 %248, 1
  %250 = zext i1 %249 to i32
  %251 = load i64, i64* %17, align 8
  %252 = call i32 @wait_event_timeout(i32 %245, i32 %250, i64 %251)
  %253 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %254 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @O2NM_MAX_NODES, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %271

258:                                              ; preds = %237
  %259 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %260 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %263 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %267 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = call i32 (i32, i8*, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i64 %261, i64 %265, i64 %269)
  br label %18

271:                                              ; preds = %237
  %272 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %273 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = call i32 (i32, i8*, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i64 %274)
  store i32 0, i32* %10, align 4
  br label %317

276:                                              ; preds = %231
  store i32 0, i32* %10, align 4
  %277 = load i32, i32* %14, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %306

279:                                              ; preds = %276
  %280 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %281 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = sext i32 %282 to i64
  store i64 %283, i64* %9, align 8
  %284 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %285 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %289 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %288, i32 0, i32 2
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* %9, align 8
  %293 = call i32 (i32, i8*, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i64 %287, i64 %291, i64 %292)
  %294 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %295 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %296 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %297 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @dlm_do_assert_master(%struct.dlm_ctxt* %294, %struct.dlm_lock_resource* %295, i32 %298, i32 0)
  store i32 %299, i32* %10, align 4
  %300 = load i32, i32* %10, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %279
  %303 = load i32, i32* %10, align 4
  %304 = call i32 @mlog_errno(i32 %303)
  br label %305

305:                                              ; preds = %302, %279
  store i32 0, i32* %10, align 4
  br label %306

306:                                              ; preds = %305, %276
  %307 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %308 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %307, i32 0, i32 1
  %309 = call i32 @spin_lock(i32* %308)
  %310 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %311 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %312 = load i64, i64* %9, align 8
  %313 = call i32 @dlm_change_lockres_owner(%struct.dlm_ctxt* %310, %struct.dlm_lock_resource* %311, i64 %312)
  %314 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %315 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %314, i32 0, i32 1
  %316 = call i32 @spin_unlock(i32* %315)
  br label %317

317:                                              ; preds = %306, %271, %166, %73
  %318 = load i32, i32* %10, align 4
  ret i32 %318
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i64, ...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_do_master_request(%struct.dlm_lock_resource*, %struct.dlm_master_list_entry*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @dlm_restart_lock_mastery(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_master_list_entry*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @find_next_bit(i32, i64, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @dlm_do_assert_master(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i32, i32) #1

declare dso_local i32 @dlm_change_lockres_owner(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
