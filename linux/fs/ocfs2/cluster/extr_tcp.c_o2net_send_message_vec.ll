; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_send_message_vec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_send_message_vec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvec = type { i32, i32, %struct.kvec* }
%struct.o2net_msg = type { i32, i32, %struct.o2net_msg* }
%struct.o2net_sock_container = type { i32, i32 }
%struct.o2net_node = type { i32 }
%struct.o2net_status_wait = type { i32, i32, i32, i32, i32 }
%struct.o2net_send_tracking = type { i32 }
%struct.iovec = type { i32 }

@current = common dso_local global i32 0, align 4
@o2net_wq = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"attempt to tx without o2netd running\0A\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"bad kvec array length\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@O2NET_MAX_PAYLOAD_BYTES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"total payload len %zu too large\0A\00", align 1
@ELOOP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to %zu element kvec!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to allocate a o2net_msg!\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"sending returned %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"error returned from o2net_send_tcp_msg=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"woken, returning system status %d, user status %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @o2net_send_message_vec(i32 %0, i32 %1, %struct.kvec* %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvec*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.o2net_msg*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.kvec*, align 8
  %18 = alloca %struct.o2net_sock_container*, align 8
  %19 = alloca %struct.o2net_node*, align 8
  %20 = alloca %struct.o2net_status_wait, align 4
  %21 = alloca %struct.o2net_send_tracking, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.kvec* %2, %struct.kvec** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  store %struct.o2net_msg* null, %struct.o2net_msg** %14, align 8
  store i64 0, i64* %16, align 8
  store %struct.kvec* null, %struct.kvec** %17, align 8
  store %struct.o2net_sock_container* null, %struct.o2net_sock_container** %18, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call %struct.o2net_node* @o2net_nn_from_num(i64 %22)
  store %struct.o2net_node* %23, %struct.o2net_node** %19, align 8
  %24 = bitcast %struct.o2net_status_wait* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 20, i1 false)
  %25 = getelementptr inbounds %struct.o2net_status_wait, %struct.o2net_status_wait* %20, i32 0, i32 4
  %26 = getelementptr inbounds %struct.o2net_status_wait, %struct.o2net_status_wait* %20, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @LIST_HEAD_INIT(i32 %27)
  store i32 %28, i32* %25, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @current, align 4
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @o2net_init_nst(%struct.o2net_send_tracking* %21, i32 %29, i32 %30, i32 %31, i64 %32)
  %34 = load i32*, i32** @o2net_wq, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %6
  %37 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ESRCH, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %13, align 4
  br label %191

40:                                               ; preds = %6
  %41 = load i64, i64* %10, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %13, align 4
  br label %191

47:                                               ; preds = %40
  %48 = load %struct.kvec*, %struct.kvec** %9, align 8
  %49 = bitcast %struct.kvec* %48 to %struct.iovec*
  %50 = load i64, i64* %10, align 8
  %51 = call i64 @iov_length(%struct.iovec* %49, i64 %50)
  store i64 %51, i64* %16, align 8
  %52 = load i64, i64* %16, align 8
  %53 = load i64, i64* @O2NET_MAX_PAYLOAD_BYTES, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load i64, i64* %16, align 8
  %57 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %13, align 4
  br label %191

60:                                               ; preds = %47
  %61 = load i64, i64* %11, align 8
  %62 = call i64 (...) @o2nm_this_node()
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* @ELOOP, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %13, align 4
  br label %191

67:                                               ; preds = %60
  %68 = call i32 @o2net_debug_add_nst(%struct.o2net_send_tracking* %21)
  %69 = call i32 @o2net_set_nst_sock_time(%struct.o2net_send_tracking* %21)
  %70 = load %struct.o2net_node*, %struct.o2net_node** %19, align 8
  %71 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.o2net_node*, %struct.o2net_node** %19, align 8
  %74 = call i32 @o2net_tx_can_proceed(%struct.o2net_node* %73, %struct.o2net_sock_container** %18, i32* %13)
  %75 = call i32 @wait_event(i32 %72, i32 %74)
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %191

79:                                               ; preds = %67
  %80 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %18, align 8
  %81 = call i32 @o2net_set_nst_sock_container(%struct.o2net_send_tracking* %21, %struct.o2net_sock_container* %80)
  %82 = load i64, i64* %10, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %15, align 8
  %84 = load i64, i64* %15, align 8
  %85 = load i32, i32* @GFP_ATOMIC, align 4
  %86 = call %struct.o2net_msg* @kmalloc_array(i64 %84, i32 16, i32 %85)
  %87 = bitcast %struct.o2net_msg* %86 to %struct.kvec*
  store %struct.kvec* %87, %struct.kvec** %17, align 8
  %88 = load %struct.kvec*, %struct.kvec** %17, align 8
  %89 = icmp eq %struct.kvec* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %79
  %91 = load i64, i64* %15, align 8
  %92 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %91)
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %13, align 4
  br label %191

95:                                               ; preds = %79
  %96 = load i32, i32* @GFP_ATOMIC, align 4
  %97 = call %struct.o2net_msg* @kmalloc(i32 16, i32 %96)
  store %struct.o2net_msg* %97, %struct.o2net_msg** %14, align 8
  %98 = load %struct.o2net_msg*, %struct.o2net_msg** %14, align 8
  %99 = icmp ne %struct.o2net_msg* %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %95
  %101 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %13, align 4
  br label %191

104:                                              ; preds = %95
  %105 = load %struct.o2net_msg*, %struct.o2net_msg** %14, align 8
  %106 = load i64, i64* %16, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @o2net_init_msg(%struct.o2net_msg* %105, i64 %106, i32 %107, i32 %108)
  %110 = load %struct.kvec*, %struct.kvec** %17, align 8
  %111 = getelementptr inbounds %struct.kvec, %struct.kvec* %110, i64 0
  %112 = getelementptr inbounds %struct.kvec, %struct.kvec* %111, i32 0, i32 0
  store i32 16, i32* %112, align 8
  %113 = load %struct.o2net_msg*, %struct.o2net_msg** %14, align 8
  %114 = bitcast %struct.o2net_msg* %113 to %struct.kvec*
  %115 = load %struct.kvec*, %struct.kvec** %17, align 8
  %116 = getelementptr inbounds %struct.kvec, %struct.kvec* %115, i64 0
  %117 = getelementptr inbounds %struct.kvec, %struct.kvec* %116, i32 0, i32 2
  store %struct.kvec* %114, %struct.kvec** %117, align 8
  %118 = load %struct.kvec*, %struct.kvec** %17, align 8
  %119 = getelementptr inbounds %struct.kvec, %struct.kvec* %118, i64 1
  %120 = bitcast %struct.kvec* %119 to %struct.o2net_msg*
  %121 = load %struct.kvec*, %struct.kvec** %9, align 8
  %122 = bitcast %struct.kvec* %121 to %struct.o2net_msg*
  %123 = load i64, i64* %10, align 8
  %124 = mul i64 %123, 16
  %125 = call i32 @memcpy(%struct.o2net_msg* %120, %struct.o2net_msg* %122, i64 %124)
  %126 = load %struct.o2net_node*, %struct.o2net_node** %19, align 8
  %127 = call i32 @o2net_prep_nsw(%struct.o2net_node* %126, %struct.o2net_status_wait* %20)
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %104
  br label %191

131:                                              ; preds = %104
  %132 = getelementptr inbounds %struct.o2net_status_wait, %struct.o2net_status_wait* %20, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @cpu_to_be32(i32 %133)
  %135 = load %struct.o2net_msg*, %struct.o2net_msg** %14, align 8
  %136 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = getelementptr inbounds %struct.o2net_status_wait, %struct.o2net_status_wait* %20, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @o2net_set_nst_msg_id(%struct.o2net_send_tracking* %21, i32 %138)
  %140 = call i32 @o2net_set_nst_send_time(%struct.o2net_send_tracking* %21)
  %141 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %18, align 8
  %142 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %141, i32 0, i32 0
  %143 = call i32 @mutex_lock(i32* %142)
  %144 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %18, align 8
  %145 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.kvec*, %struct.kvec** %17, align 8
  %148 = bitcast %struct.kvec* %147 to %struct.o2net_msg*
  %149 = load i64, i64* %15, align 8
  %150 = load i64, i64* %16, align 8
  %151 = add i64 16, %150
  %152 = trunc i64 %151 to i32
  %153 = call i32 @o2net_send_tcp_msg(i32 %146, %struct.o2net_msg* %148, i64 %149, i32 %152)
  store i32 %153, i32* %13, align 4
  %154 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %18, align 8
  %155 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %154, i32 0, i32 0
  %156 = call i32 @mutex_unlock(i32* %155)
  %157 = load %struct.o2net_msg*, %struct.o2net_msg** %14, align 8
  %158 = load i32, i32* %13, align 4
  %159 = call i32 @msglog(%struct.o2net_msg* %157, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* %13, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %131
  %163 = load i32, i32* %13, align 4
  %164 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %163)
  br label %191

165:                                              ; preds = %131
  %166 = call i32 @o2net_set_nst_status_time(%struct.o2net_send_tracking* %21)
  %167 = getelementptr inbounds %struct.o2net_status_wait, %struct.o2net_status_wait* %20, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.o2net_node*, %struct.o2net_node** %19, align 8
  %170 = call i32 @o2net_nsw_completed(%struct.o2net_node* %169, %struct.o2net_status_wait* %20)
  %171 = call i32 @wait_event(i32 %168, i32 %170)
  %172 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %18, align 8
  %173 = call i32 @o2net_update_send_stats(%struct.o2net_send_tracking* %21, %struct.o2net_sock_container* %172)
  %174 = getelementptr inbounds %struct.o2net_status_wait, %struct.o2net_status_wait* %20, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @o2net_sys_err_to_errno(i32 %175)
  store i32 %176, i32* %13, align 4
  %177 = load i32*, i32** %12, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %186

179:                                              ; preds = %165
  %180 = load i32, i32* %13, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.o2net_status_wait, %struct.o2net_status_wait* %20, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32*, i32** %12, align 8
  store i32 %184, i32* %185, align 4
  br label %186

186:                                              ; preds = %182, %179, %165
  %187 = load i32, i32* %13, align 4
  %188 = getelementptr inbounds %struct.o2net_status_wait, %struct.o2net_status_wait* %20, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 %187, i32 %189)
  br label %191

191:                                              ; preds = %186, %162, %130, %100, %90, %78, %64, %55, %43, %36
  %192 = call i32 @o2net_debug_del_nst(%struct.o2net_send_tracking* %21)
  %193 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %18, align 8
  %194 = icmp ne %struct.o2net_sock_container* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %18, align 8
  %197 = call i32 @sc_put(%struct.o2net_sock_container* %196)
  br label %198

198:                                              ; preds = %195, %191
  %199 = load %struct.kvec*, %struct.kvec** %17, align 8
  %200 = bitcast %struct.kvec* %199 to %struct.o2net_msg*
  %201 = call i32 @kfree(%struct.o2net_msg* %200)
  %202 = load %struct.o2net_msg*, %struct.o2net_msg** %14, align 8
  %203 = call i32 @kfree(%struct.o2net_msg* %202)
  %204 = load %struct.o2net_node*, %struct.o2net_node** %19, align 8
  %205 = call i32 @o2net_complete_nsw(%struct.o2net_node* %204, %struct.o2net_status_wait* %20, i32 0, i32 0, i32 0)
  %206 = load i32, i32* %13, align 4
  ret i32 %206
}

declare dso_local %struct.o2net_node* @o2net_nn_from_num(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @LIST_HEAD_INIT(i32) #1

declare dso_local i32 @o2net_init_nst(%struct.o2net_send_tracking*, i32, i32, i32, i64) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i64 @iov_length(%struct.iovec*, i64) #1

declare dso_local i64 @o2nm_this_node(...) #1

declare dso_local i32 @o2net_debug_add_nst(%struct.o2net_send_tracking*) #1

declare dso_local i32 @o2net_set_nst_sock_time(%struct.o2net_send_tracking*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @o2net_tx_can_proceed(%struct.o2net_node*, %struct.o2net_sock_container**, i32*) #1

declare dso_local i32 @o2net_set_nst_sock_container(%struct.o2net_send_tracking*, %struct.o2net_sock_container*) #1

declare dso_local %struct.o2net_msg* @kmalloc_array(i64, i32, i32) #1

declare dso_local %struct.o2net_msg* @kmalloc(i32, i32) #1

declare dso_local i32 @o2net_init_msg(%struct.o2net_msg*, i64, i32, i32) #1

declare dso_local i32 @memcpy(%struct.o2net_msg*, %struct.o2net_msg*, i64) #1

declare dso_local i32 @o2net_prep_nsw(%struct.o2net_node*, %struct.o2net_status_wait*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @o2net_set_nst_msg_id(%struct.o2net_send_tracking*, i32) #1

declare dso_local i32 @o2net_set_nst_send_time(%struct.o2net_send_tracking*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @o2net_send_tcp_msg(i32, %struct.o2net_msg*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msglog(%struct.o2net_msg*, i8*, i32) #1

declare dso_local i32 @o2net_set_nst_status_time(%struct.o2net_send_tracking*) #1

declare dso_local i32 @o2net_nsw_completed(%struct.o2net_node*, %struct.o2net_status_wait*) #1

declare dso_local i32 @o2net_update_send_stats(%struct.o2net_send_tracking*, %struct.o2net_sock_container*) #1

declare dso_local i32 @o2net_sys_err_to_errno(i32) #1

declare dso_local i32 @o2net_debug_del_nst(%struct.o2net_send_tracking*) #1

declare dso_local i32 @sc_put(%struct.o2net_sock_container*) #1

declare dso_local i32 @kfree(%struct.o2net_msg*) #1

declare dso_local i32 @o2net_complete_nsw(%struct.o2net_node*, %struct.o2net_status_wait*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
