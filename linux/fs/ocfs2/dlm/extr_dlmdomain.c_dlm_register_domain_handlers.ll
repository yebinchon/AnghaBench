; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_register_domain_handlers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_register_domain_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"registering handlers.\0A\00", align 1
@O2HB_NODE_DOWN_CB = common dso_local global i32 0, align 4
@dlm_hb_node_down_cb = common dso_local global i32 0, align 4
@DLM_HB_NODE_DOWN_PRI = common dso_local global i32 0, align 4
@O2HB_NODE_UP_CB = common dso_local global i32 0, align 4
@dlm_hb_node_up_cb = common dso_local global i32 0, align 4
@DLM_HB_NODE_UP_PRI = common dso_local global i32 0, align 4
@DLM_MASTER_REQUEST_MSG = common dso_local global i32 0, align 4
@dlm_master_request_handler = common dso_local global i32 0, align 4
@DLM_ASSERT_MASTER_MSG = common dso_local global i32 0, align 4
@dlm_assert_master_handler = common dso_local global i32 0, align 4
@dlm_assert_master_post_handler = common dso_local global i32* null, align 8
@DLM_CREATE_LOCK_MSG = common dso_local global i32 0, align 4
@dlm_create_lock_handler = common dso_local global i32 0, align 4
@DLM_CONVERT_LOCK_MSG = common dso_local global i32 0, align 4
@DLM_CONVERT_LOCK_MAX_LEN = common dso_local global i32 0, align 4
@dlm_convert_lock_handler = common dso_local global i32 0, align 4
@DLM_UNLOCK_LOCK_MSG = common dso_local global i32 0, align 4
@DLM_UNLOCK_LOCK_MAX_LEN = common dso_local global i32 0, align 4
@dlm_unlock_lock_handler = common dso_local global i32 0, align 4
@DLM_PROXY_AST_MSG = common dso_local global i32 0, align 4
@DLM_PROXY_AST_MAX_LEN = common dso_local global i32 0, align 4
@dlm_proxy_ast_handler = common dso_local global i32 0, align 4
@DLM_EXIT_DOMAIN_MSG = common dso_local global i32 0, align 4
@dlm_exit_domain_handler = common dso_local global i32 0, align 4
@DLM_DEREF_LOCKRES_MSG = common dso_local global i32 0, align 4
@dlm_deref_lockres_handler = common dso_local global i32 0, align 4
@DLM_MIGRATE_REQUEST_MSG = common dso_local global i32 0, align 4
@dlm_migrate_request_handler = common dso_local global i32 0, align 4
@DLM_MIG_LOCKRES_MSG = common dso_local global i32 0, align 4
@DLM_MIG_LOCKRES_MAX_LEN = common dso_local global i32 0, align 4
@dlm_mig_lockres_handler = common dso_local global i32 0, align 4
@DLM_MASTER_REQUERY_MSG = common dso_local global i32 0, align 4
@dlm_master_requery_handler = common dso_local global i32 0, align 4
@DLM_LOCK_REQUEST_MSG = common dso_local global i32 0, align 4
@dlm_request_all_locks_handler = common dso_local global i32 0, align 4
@DLM_RECO_DATA_DONE_MSG = common dso_local global i32 0, align 4
@dlm_reco_data_done_handler = common dso_local global i32 0, align 4
@DLM_BEGIN_RECO_MSG = common dso_local global i32 0, align 4
@dlm_begin_reco_handler = common dso_local global i32 0, align 4
@DLM_FINALIZE_RECO_MSG = common dso_local global i32 0, align 4
@dlm_finalize_reco_handler = common dso_local global i32 0, align 4
@DLM_BEGIN_EXIT_DOMAIN_MSG = common dso_local global i32 0, align 4
@dlm_begin_exit_domain_handler = common dso_local global i32 0, align 4
@DLM_DEREF_LOCKRES_DONE = common dso_local global i32 0, align 4
@dlm_deref_lockres_done_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*)* @dlm_register_domain_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_register_domain_handlers(%struct.dlm_ctxt* %0) #0 {
  %2 = alloca %struct.dlm_ctxt*, align 8
  %3 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %2, align 8
  %4 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %6 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %5, i32 0, i32 4
  %7 = load i32, i32* @O2HB_NODE_DOWN_CB, align 4
  %8 = load i32, i32* @dlm_hb_node_down_cb, align 4
  %9 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %10 = load i32, i32* @DLM_HB_NODE_DOWN_PRI, align 4
  %11 = call i32 @o2hb_setup_callback(i32* %6, i32 %7, i32 %8, %struct.dlm_ctxt* %9, i32 %10)
  %12 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %13 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %12, i32 0, i32 2
  %14 = load i32, i32* @O2HB_NODE_UP_CB, align 4
  %15 = load i32, i32* @dlm_hb_node_up_cb, align 4
  %16 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %17 = load i32, i32* @DLM_HB_NODE_UP_PRI, align 4
  %18 = call i32 @o2hb_setup_callback(i32* %13, i32 %14, i32 %15, %struct.dlm_ctxt* %16, i32 %17)
  %19 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %20 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %23 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %22, i32 0, i32 4
  %24 = call i32 @o2hb_register_callback(i32 %21, i32* %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %261

28:                                               ; preds = %1
  %29 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %30 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %33 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %32, i32 0, i32 2
  %34 = call i32 @o2hb_register_callback(i32 %31, i32* %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %261

38:                                               ; preds = %28
  %39 = load i32, i32* @DLM_MASTER_REQUEST_MSG, align 4
  %40 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %41 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @dlm_master_request_handler, align 4
  %44 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %45 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %46 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %45, i32 0, i32 0
  %47 = call i32 @o2net_register_handler(i32 %39, i32 %42, i32 4, i32 %43, %struct.dlm_ctxt* %44, i32* null, i32* %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %261

51:                                               ; preds = %38
  %52 = load i32, i32* @DLM_ASSERT_MASTER_MSG, align 4
  %53 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %54 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @dlm_assert_master_handler, align 4
  %57 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %58 = load i32*, i32** @dlm_assert_master_post_handler, align 8
  %59 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %60 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %59, i32 0, i32 0
  %61 = call i32 @o2net_register_handler(i32 %52, i32 %55, i32 4, i32 %56, %struct.dlm_ctxt* %57, i32* %58, i32* %60)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  br label %261

65:                                               ; preds = %51
  %66 = load i32, i32* @DLM_CREATE_LOCK_MSG, align 4
  %67 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %68 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @dlm_create_lock_handler, align 4
  %71 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %72 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %73 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %72, i32 0, i32 0
  %74 = call i32 @o2net_register_handler(i32 %66, i32 %69, i32 4, i32 %70, %struct.dlm_ctxt* %71, i32* null, i32* %73)
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  br label %261

78:                                               ; preds = %65
  %79 = load i32, i32* @DLM_CONVERT_LOCK_MSG, align 4
  %80 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %81 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @DLM_CONVERT_LOCK_MAX_LEN, align 4
  %84 = load i32, i32* @dlm_convert_lock_handler, align 4
  %85 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %86 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %87 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %86, i32 0, i32 0
  %88 = call i32 @o2net_register_handler(i32 %79, i32 %82, i32 %83, i32 %84, %struct.dlm_ctxt* %85, i32* null, i32* %87)
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* %3, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %78
  br label %261

92:                                               ; preds = %78
  %93 = load i32, i32* @DLM_UNLOCK_LOCK_MSG, align 4
  %94 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %95 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @DLM_UNLOCK_LOCK_MAX_LEN, align 4
  %98 = load i32, i32* @dlm_unlock_lock_handler, align 4
  %99 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %100 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %101 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %100, i32 0, i32 0
  %102 = call i32 @o2net_register_handler(i32 %93, i32 %96, i32 %97, i32 %98, %struct.dlm_ctxt* %99, i32* null, i32* %101)
  store i32 %102, i32* %3, align 4
  %103 = load i32, i32* %3, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %92
  br label %261

106:                                              ; preds = %92
  %107 = load i32, i32* @DLM_PROXY_AST_MSG, align 4
  %108 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %109 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @DLM_PROXY_AST_MAX_LEN, align 4
  %112 = load i32, i32* @dlm_proxy_ast_handler, align 4
  %113 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %114 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %115 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %114, i32 0, i32 0
  %116 = call i32 @o2net_register_handler(i32 %107, i32 %110, i32 %111, i32 %112, %struct.dlm_ctxt* %113, i32* null, i32* %115)
  store i32 %116, i32* %3, align 4
  %117 = load i32, i32* %3, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %106
  br label %261

120:                                              ; preds = %106
  %121 = load i32, i32* @DLM_EXIT_DOMAIN_MSG, align 4
  %122 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %123 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @dlm_exit_domain_handler, align 4
  %126 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %127 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %128 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %127, i32 0, i32 0
  %129 = call i32 @o2net_register_handler(i32 %121, i32 %124, i32 4, i32 %125, %struct.dlm_ctxt* %126, i32* null, i32* %128)
  store i32 %129, i32* %3, align 4
  %130 = load i32, i32* %3, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %120
  br label %261

133:                                              ; preds = %120
  %134 = load i32, i32* @DLM_DEREF_LOCKRES_MSG, align 4
  %135 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %136 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @dlm_deref_lockres_handler, align 4
  %139 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %140 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %141 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %140, i32 0, i32 0
  %142 = call i32 @o2net_register_handler(i32 %134, i32 %137, i32 4, i32 %138, %struct.dlm_ctxt* %139, i32* null, i32* %141)
  store i32 %142, i32* %3, align 4
  %143 = load i32, i32* %3, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %133
  br label %261

146:                                              ; preds = %133
  %147 = load i32, i32* @DLM_MIGRATE_REQUEST_MSG, align 4
  %148 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %149 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @dlm_migrate_request_handler, align 4
  %152 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %153 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %154 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %153, i32 0, i32 0
  %155 = call i32 @o2net_register_handler(i32 %147, i32 %150, i32 4, i32 %151, %struct.dlm_ctxt* %152, i32* null, i32* %154)
  store i32 %155, i32* %3, align 4
  %156 = load i32, i32* %3, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %146
  br label %261

159:                                              ; preds = %146
  %160 = load i32, i32* @DLM_MIG_LOCKRES_MSG, align 4
  %161 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %162 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @DLM_MIG_LOCKRES_MAX_LEN, align 4
  %165 = load i32, i32* @dlm_mig_lockres_handler, align 4
  %166 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %167 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %168 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %167, i32 0, i32 0
  %169 = call i32 @o2net_register_handler(i32 %160, i32 %163, i32 %164, i32 %165, %struct.dlm_ctxt* %166, i32* null, i32* %168)
  store i32 %169, i32* %3, align 4
  %170 = load i32, i32* %3, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %159
  br label %261

173:                                              ; preds = %159
  %174 = load i32, i32* @DLM_MASTER_REQUERY_MSG, align 4
  %175 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %176 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @dlm_master_requery_handler, align 4
  %179 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %180 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %181 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %180, i32 0, i32 0
  %182 = call i32 @o2net_register_handler(i32 %174, i32 %177, i32 4, i32 %178, %struct.dlm_ctxt* %179, i32* null, i32* %181)
  store i32 %182, i32* %3, align 4
  %183 = load i32, i32* %3, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %173
  br label %261

186:                                              ; preds = %173
  %187 = load i32, i32* @DLM_LOCK_REQUEST_MSG, align 4
  %188 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %189 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @dlm_request_all_locks_handler, align 4
  %192 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %193 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %194 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %193, i32 0, i32 0
  %195 = call i32 @o2net_register_handler(i32 %187, i32 %190, i32 4, i32 %191, %struct.dlm_ctxt* %192, i32* null, i32* %194)
  store i32 %195, i32* %3, align 4
  %196 = load i32, i32* %3, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %186
  br label %261

199:                                              ; preds = %186
  %200 = load i32, i32* @DLM_RECO_DATA_DONE_MSG, align 4
  %201 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %202 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @dlm_reco_data_done_handler, align 4
  %205 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %206 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %207 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %206, i32 0, i32 0
  %208 = call i32 @o2net_register_handler(i32 %200, i32 %203, i32 4, i32 %204, %struct.dlm_ctxt* %205, i32* null, i32* %207)
  store i32 %208, i32* %3, align 4
  %209 = load i32, i32* %3, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %199
  br label %261

212:                                              ; preds = %199
  %213 = load i32, i32* @DLM_BEGIN_RECO_MSG, align 4
  %214 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %215 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @dlm_begin_reco_handler, align 4
  %218 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %219 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %220 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %219, i32 0, i32 0
  %221 = call i32 @o2net_register_handler(i32 %213, i32 %216, i32 4, i32 %217, %struct.dlm_ctxt* %218, i32* null, i32* %220)
  store i32 %221, i32* %3, align 4
  %222 = load i32, i32* %3, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %212
  br label %261

225:                                              ; preds = %212
  %226 = load i32, i32* @DLM_FINALIZE_RECO_MSG, align 4
  %227 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %228 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @dlm_finalize_reco_handler, align 4
  %231 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %232 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %233 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %232, i32 0, i32 0
  %234 = call i32 @o2net_register_handler(i32 %226, i32 %229, i32 4, i32 %230, %struct.dlm_ctxt* %231, i32* null, i32* %233)
  store i32 %234, i32* %3, align 4
  %235 = load i32, i32* %3, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %225
  br label %261

238:                                              ; preds = %225
  %239 = load i32, i32* @DLM_BEGIN_EXIT_DOMAIN_MSG, align 4
  %240 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %241 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @dlm_begin_exit_domain_handler, align 4
  %244 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %245 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %246 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %245, i32 0, i32 0
  %247 = call i32 @o2net_register_handler(i32 %239, i32 %242, i32 4, i32 %243, %struct.dlm_ctxt* %244, i32* null, i32* %246)
  store i32 %247, i32* %3, align 4
  %248 = load i32, i32* %3, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %238
  br label %261

251:                                              ; preds = %238
  %252 = load i32, i32* @DLM_DEREF_LOCKRES_DONE, align 4
  %253 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %254 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @dlm_deref_lockres_done_handler, align 4
  %257 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %258 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %259 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %258, i32 0, i32 0
  %260 = call i32 @o2net_register_handler(i32 %252, i32 %255, i32 4, i32 %256, %struct.dlm_ctxt* %257, i32* null, i32* %259)
  store i32 %260, i32* %3, align 4
  br label %261

261:                                              ; preds = %251, %250, %237, %224, %211, %198, %185, %172, %158, %145, %132, %119, %105, %91, %77, %64, %50, %37, %27
  %262 = load i32, i32* %3, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  %265 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %266 = call i32 @dlm_unregister_domain_handlers(%struct.dlm_ctxt* %265)
  br label %267

267:                                              ; preds = %264, %261
  %268 = load i32, i32* %3, align 4
  ret i32 %268
}

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i32 @o2hb_setup_callback(i32*, i32, i32, %struct.dlm_ctxt*, i32) #1

declare dso_local i32 @o2hb_register_callback(i32, i32*) #1

declare dso_local i32 @o2net_register_handler(i32, i32, i32, i32, %struct.dlm_ctxt*, i32*, i32*) #1

declare dso_local i32 @dlm_unregister_domain_handlers(%struct.dlm_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
