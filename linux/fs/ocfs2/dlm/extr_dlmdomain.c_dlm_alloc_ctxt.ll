; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_alloc_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_alloc_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { %struct.dlm_ctxt*, %struct.hlist_head**, %struct.hlist_head**, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, %struct.TYPE_2__, i64, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hlist_head = type { i32 }
%struct.TYPE_2__ = type { i8*, i8*, i32, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DLM_HASH_PAGES = common dso_local global i32 0, align 4
@DLM_HASH_BUCKETS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"dlm->recovery_map=%p, &(dlm->recovery_map[0])=%p\0A\00", align 1
@DLM_LOCK_RES_OWNER_UNKNOWN = common dso_local global i32 0, align 4
@O2NM_INVALID_NODE_NUM = common dso_local global i8* null, align 8
@DLM_MLE_NUM_TYPES = common dso_local global i32 0, align 4
@dlm_dispatch_work = common dso_local global i32 0, align 4
@DLM_CTXT_NEW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"context init: refcount %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dlm_ctxt* (i8*, i32)* @dlm_alloc_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dlm_ctxt* @dlm_alloc_ctxt(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dlm_ctxt*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.dlm_ctxt* null, %struct.dlm_ctxt** %7, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.dlm_ctxt* @kzalloc(i32 256, i32 %8)
  store %struct.dlm_ctxt* %9, %struct.dlm_ctxt** %7, align 8
  %10 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %11 = icmp ne %struct.dlm_ctxt* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @mlog_errno(i32 %15)
  br label %255

17:                                               ; preds = %2
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.dlm_ctxt* @kstrdup(i8* %18, i32 %19)
  %21 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %22 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %21, i32 0, i32 0
  store %struct.dlm_ctxt* %20, %struct.dlm_ctxt** %22, align 8
  %23 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %24 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %23, i32 0, i32 0
  %25 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %24, align 8
  %26 = icmp eq %struct.dlm_ctxt* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @mlog_errno(i32 %30)
  br label %255

32:                                               ; preds = %17
  %33 = load i32, i32* @DLM_HASH_PAGES, align 4
  %34 = call i64 @dlm_alloc_pagevec(i32 %33)
  %35 = inttoptr i64 %34 to %struct.hlist_head**
  %36 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %37 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %36, i32 0, i32 1
  store %struct.hlist_head** %35, %struct.hlist_head*** %37, align 8
  %38 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %39 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %38, i32 0, i32 1
  %40 = load %struct.hlist_head**, %struct.hlist_head*** %39, align 8
  %41 = icmp ne %struct.hlist_head** %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @mlog_errno(i32 %45)
  br label %255

47:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %57, %47
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @DLM_HASH_BUCKETS, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @dlm_lockres_hash(%struct.dlm_ctxt* %53, i32 %54)
  %56 = call i32 @INIT_HLIST_HEAD(i32 %55)
  br label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %48

60:                                               ; preds = %48
  %61 = load i32, i32* @DLM_HASH_PAGES, align 4
  %62 = call i64 @dlm_alloc_pagevec(i32 %61)
  %63 = inttoptr i64 %62 to %struct.hlist_head**
  %64 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %65 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %64, i32 0, i32 2
  store %struct.hlist_head** %63, %struct.hlist_head*** %65, align 8
  %66 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %67 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %66, i32 0, i32 2
  %68 = load %struct.hlist_head**, %struct.hlist_head*** %67, align 8
  %69 = icmp ne %struct.hlist_head** %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %60
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @mlog_errno(i32 %73)
  br label %255

75:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %85, %75
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @DLM_HASH_BUCKETS, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @dlm_master_hash(%struct.dlm_ctxt* %81, i32 %82)
  %84 = call i32 @INIT_HLIST_HEAD(i32 %83)
  br label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %76

88:                                               ; preds = %76
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %91 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %90, i32 0, i32 40
  store i32 %89, i32* %91, align 8
  %92 = call i32 (...) @o2nm_this_node()
  %93 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %94 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %93, i32 0, i32 39
  store i32 %92, i32* %94, align 4
  %95 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %96 = call i32 @dlm_create_debugfs_subroot(%struct.dlm_ctxt* %95)
  %97 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %98 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %97, i32 0, i32 38
  %99 = call i32 @spin_lock_init(i32* %98)
  %100 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %101 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %100, i32 0, i32 37
  %102 = call i32 @spin_lock_init(i32* %101)
  %103 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %104 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %103, i32 0, i32 36
  %105 = call i32 @spin_lock_init(i32* %104)
  %106 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %107 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %106, i32 0, i32 35
  %108 = call i32 @spin_lock_init(i32* %107)
  %109 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %110 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %109, i32 0, i32 34
  %111 = call i32 @INIT_LIST_HEAD(i32* %110)
  %112 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %113 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %112, i32 0, i32 33
  %114 = call i32 @INIT_LIST_HEAD(i32* %113)
  %115 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %116 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %115, i32 0, i32 13
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 5
  %118 = call i32 @INIT_LIST_HEAD(i32* %117)
  %119 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %120 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %119, i32 0, i32 13
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 4
  %122 = call i32 @INIT_LIST_HEAD(i32* %121)
  %123 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %124 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %123, i32 0, i32 32
  %125 = call i32 @INIT_LIST_HEAD(i32* %124)
  %126 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %127 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %126, i32 0, i32 31
  %128 = call i32 @INIT_LIST_HEAD(i32* %127)
  %129 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %130 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %129, i32 0, i32 30
  %131 = call i32 @INIT_LIST_HEAD(i32* %130)
  %132 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %133 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %132, i32 0, i32 13
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 3
  store i64 0, i64* %134, align 8
  %135 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %136 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %135, i32 0, i32 29
  %137 = call i32 @INIT_LIST_HEAD(i32* %136)
  %138 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %139 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %138, i32 0, i32 28
  %140 = call i32 @INIT_LIST_HEAD(i32* %139)
  %141 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %142 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %141, i32 0, i32 27
  %143 = load i32*, i32** %142, align 8
  %144 = ptrtoint i32* %143 to i32
  %145 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %146 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %145, i32 0, i32 27
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %144, i32* %148)
  %150 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %151 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %150, i32 0, i32 27
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @memset(i32* %152, i32 0, i32 8)
  %154 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %155 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %154, i32 0, i32 26
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @memset(i32* %156, i32 0, i32 8)
  %158 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %159 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %158, i32 0, i32 25
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @memset(i32* %160, i32 0, i32 8)
  %162 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %163 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %162, i32 0, i32 24
  store i32* null, i32** %163, align 8
  %164 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %165 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %164, i32 0, i32 23
  store i32* null, i32** %165, align 8
  %166 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %167 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %166, i32 0, i32 22
  store i32* null, i32** %167, align 8
  %168 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %169 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %168, i32 0, i32 21
  %170 = call i32 @init_waitqueue_head(i32* %169)
  %171 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %172 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %171, i32 0, i32 20
  %173 = call i32 @init_waitqueue_head(i32* %172)
  %174 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %175 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %174, i32 0, i32 13
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 2
  %177 = call i32 @init_waitqueue_head(i32* %176)
  %178 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %179 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %178, i32 0, i32 19
  %180 = call i32 @init_waitqueue_head(i32* %179)
  %181 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %182 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %181, i32 0, i32 18
  %183 = call i32 @init_waitqueue_head(i32* %182)
  %184 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %185 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %184, i32 0, i32 17
  %186 = call i32 @INIT_LIST_HEAD(i32* %185)
  %187 = load i32, i32* @DLM_LOCK_RES_OWNER_UNKNOWN, align 4
  %188 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %189 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %188, i32 0, i32 16
  store i32 %187, i32* %189, align 4
  %190 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %191 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %190, i32 0, i32 15
  %192 = call i32 @init_waitqueue_head(i32* %191)
  %193 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %194 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %193, i32 0, i32 14
  store i64 0, i64* %194, align 8
  %195 = load i8*, i8** @O2NM_INVALID_NODE_NUM, align 8
  %196 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %197 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %196, i32 0, i32 13
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 1
  store i8* %195, i8** %198, align 8
  %199 = load i8*, i8** @O2NM_INVALID_NODE_NUM, align 8
  %200 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %201 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %200, i32 0, i32 13
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 0
  store i8* %199, i8** %202, align 8
  %203 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %204 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %203, i32 0, i32 12
  %205 = call i32 @atomic_set(i32* %204, i32 0)
  %206 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %207 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %206, i32 0, i32 11
  %208 = call i32 @atomic_set(i32* %207, i32 0)
  store i32 0, i32* %5, align 4
  br label %209

209:                                              ; preds = %228, %88
  %210 = load i32, i32* %5, align 4
  %211 = load i32, i32* @DLM_MLE_NUM_TYPES, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %231

213:                                              ; preds = %209
  %214 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %215 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %214, i32 0, i32 10
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %5, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = call i32 @atomic_set(i32* %219, i32 0)
  %221 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %222 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %221, i32 0, i32 9
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %5, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = call i32 @atomic_set(i32* %226, i32 0)
  br label %228

228:                                              ; preds = %213
  %229 = load i32, i32* %5, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %5, align 4
  br label %209

231:                                              ; preds = %209
  %232 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %233 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %232, i32 0, i32 8
  %234 = call i32 @spin_lock_init(i32* %233)
  %235 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %236 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %235, i32 0, i32 7
  %237 = call i32 @INIT_LIST_HEAD(i32* %236)
  %238 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %239 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %238, i32 0, i32 6
  %240 = load i32, i32* @dlm_dispatch_work, align 4
  %241 = call i32 @INIT_WORK(i32* %239, i32 %240)
  %242 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %243 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %242, i32 0, i32 3
  %244 = call i32 @kref_init(i32* %243)
  %245 = load i32, i32* @DLM_CTXT_NEW, align 4
  %246 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %247 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %246, i32 0, i32 5
  store i32 %245, i32* %247, align 8
  %248 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %249 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %248, i32 0, i32 4
  %250 = call i32 @INIT_LIST_HEAD(i32* %249)
  %251 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %252 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %251, i32 0, i32 3
  %253 = call i32 @kref_read(i32* %252)
  %254 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %253)
  store i32 0, i32* %6, align 4
  br label %255

255:                                              ; preds = %231, %70, %42, %27, %12
  %256 = load i32, i32* %6, align 4
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %292

258:                                              ; preds = %255
  %259 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %260 = icmp ne %struct.dlm_ctxt* %259, null
  br i1 %260, label %261, label %292

261:                                              ; preds = %258
  %262 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %263 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %262, i32 0, i32 2
  %264 = load %struct.hlist_head**, %struct.hlist_head*** %263, align 8
  %265 = icmp ne %struct.hlist_head** %264, null
  br i1 %265, label %266, label %273

266:                                              ; preds = %261
  %267 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %268 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %267, i32 0, i32 2
  %269 = load %struct.hlist_head**, %struct.hlist_head*** %268, align 8
  %270 = bitcast %struct.hlist_head** %269 to i8**
  %271 = load i32, i32* @DLM_HASH_PAGES, align 4
  %272 = call i32 @dlm_free_pagevec(i8** %270, i32 %271)
  br label %273

273:                                              ; preds = %266, %261
  %274 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %275 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %274, i32 0, i32 1
  %276 = load %struct.hlist_head**, %struct.hlist_head*** %275, align 8
  %277 = icmp ne %struct.hlist_head** %276, null
  br i1 %277, label %278, label %285

278:                                              ; preds = %273
  %279 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %280 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %279, i32 0, i32 1
  %281 = load %struct.hlist_head**, %struct.hlist_head*** %280, align 8
  %282 = bitcast %struct.hlist_head** %281 to i8**
  %283 = load i32, i32* @DLM_HASH_PAGES, align 4
  %284 = call i32 @dlm_free_pagevec(i8** %282, i32 %283)
  br label %285

285:                                              ; preds = %278, %273
  %286 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %287 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %286, i32 0, i32 0
  %288 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %287, align 8
  %289 = call i32 @kfree(%struct.dlm_ctxt* %288)
  %290 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %291 = call i32 @kfree(%struct.dlm_ctxt* %290)
  store %struct.dlm_ctxt* null, %struct.dlm_ctxt** %7, align 8
  br label %292

292:                                              ; preds = %285, %258, %255
  %293 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  ret %struct.dlm_ctxt* %293
}

declare dso_local %struct.dlm_ctxt* @kzalloc(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.dlm_ctxt* @kstrdup(i8*, i32) #1

declare dso_local i64 @dlm_alloc_pagevec(i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32) #1

declare dso_local i32 @dlm_lockres_hash(%struct.dlm_ctxt*, i32) #1

declare dso_local i32 @dlm_master_hash(%struct.dlm_ctxt*, i32) #1

declare dso_local i32 @o2nm_this_node(...) #1

declare dso_local i32 @dlm_create_debugfs_subroot(%struct.dlm_ctxt*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i32 @dlm_free_pagevec(i8**, i32) #1

declare dso_local i32 @kfree(%struct.dlm_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
