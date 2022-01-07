; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_memcg_write_event_control.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_memcg_write_event_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_open_file = type { i32 }
%struct.cgroup_subsys_state = type { i32 }
%struct.mem_cgroup = type { i32, i32 }
%struct.mem_cgroup_event = type { i32 (%struct.mem_cgroup.0*, %struct.cgroup_subsys_state.1*, i8*)*, %struct.cgroup_subsys_state*, i32, i32, i32, i32, i32, %struct.mem_cgroup* }
%struct.mem_cgroup.0 = type opaque
%struct.cgroup_subsys_state.1 = type opaque
%struct.fd = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }

@EINVAL = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@memcg_event_ptable_queue_proc = common dso_local global i32 0, align 4
@memcg_event_wake = common dso_local global i32 0, align 4
@memcg_event_remove = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"memory.usage_in_bytes\00", align 1
@mem_cgroup_usage_unregister_event = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"memory.oom_control\00", align 1
@mem_cgroup_oom_unregister_event = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"memory.pressure_level\00", align 1
@vmpressure_unregister_event = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"memory.memsw.usage_in_bytes\00", align 1
@memsw_cgroup_usage_unregister_event = common dso_local global i32 0, align 4
@memory_cgrp_subsys = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kernfs_open_file*, i8*, i64, i32)* @memcg_write_event_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @memcg_write_event_control(%struct.kernfs_open_file* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kernfs_open_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cgroup_subsys_state*, align 8
  %11 = alloca %struct.mem_cgroup*, align 8
  %12 = alloca %struct.mem_cgroup_event*, align 8
  %13 = alloca %struct.cgroup_subsys_state*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.fd, align 8
  %17 = alloca %struct.fd, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.fd, align 8
  %22 = alloca %struct.fd, align 8
  store %struct.kernfs_open_file* %0, %struct.kernfs_open_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %23 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %24 = call %struct.cgroup_subsys_state* @of_css(%struct.kernfs_open_file* %23)
  store %struct.cgroup_subsys_state* %24, %struct.cgroup_subsys_state** %10, align 8
  %25 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %10, align 8
  %26 = call %struct.mem_cgroup* @mem_cgroup_from_css(%struct.cgroup_subsys_state* %25)
  store %struct.mem_cgroup* %26, %struct.mem_cgroup** %11, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i8* @strstrip(i8* %27)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @simple_strtoul(i8* %29, i8** %19, i32 10)
  store i32 %30, i32* %14, align 4
  %31 = load i8*, i8** %19, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 32
  br i1 %34, label %35, label %38

35:                                               ; preds = %4
  %36 = load i64, i64* @EINVAL, align 8
  %37 = sub i64 0, %36
  store i64 %37, i64* %5, align 8
  br label %270

38:                                               ; preds = %4
  %39 = load i8*, i8** %19, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @simple_strtoul(i8* %41, i8** %19, i32 10)
  store i32 %42, i32* %15, align 4
  %43 = load i8*, i8** %19, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 32
  br i1 %46, label %47, label %55

47:                                               ; preds = %38
  %48 = load i8*, i8** %19, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i64, i64* @EINVAL, align 8
  %54 = sub i64 0, %53
  store i64 %54, i64* %5, align 8
  br label %270

55:                                               ; preds = %47, %38
  %56 = load i8*, i8** %19, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  store i8* %57, i8** %7, align 8
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.mem_cgroup_event* @kzalloc(i32 48, i32 %58)
  store %struct.mem_cgroup_event* %59, %struct.mem_cgroup_event** %12, align 8
  %60 = load %struct.mem_cgroup_event*, %struct.mem_cgroup_event** %12, align 8
  %61 = icmp ne %struct.mem_cgroup_event* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = load i64, i64* @ENOMEM, align 8
  %64 = sub i64 0, %63
  store i64 %64, i64* %5, align 8
  br label %270

65:                                               ; preds = %55
  %66 = load %struct.mem_cgroup*, %struct.mem_cgroup** %11, align 8
  %67 = load %struct.mem_cgroup_event*, %struct.mem_cgroup_event** %12, align 8
  %68 = getelementptr inbounds %struct.mem_cgroup_event, %struct.mem_cgroup_event* %67, i32 0, i32 7
  store %struct.mem_cgroup* %66, %struct.mem_cgroup** %68, align 8
  %69 = load %struct.mem_cgroup_event*, %struct.mem_cgroup_event** %12, align 8
  %70 = getelementptr inbounds %struct.mem_cgroup_event, %struct.mem_cgroup_event* %69, i32 0, i32 2
  %71 = call i32 @INIT_LIST_HEAD(i32* %70)
  %72 = load %struct.mem_cgroup_event*, %struct.mem_cgroup_event** %12, align 8
  %73 = getelementptr inbounds %struct.mem_cgroup_event, %struct.mem_cgroup_event* %72, i32 0, i32 3
  %74 = load i32, i32* @memcg_event_ptable_queue_proc, align 4
  %75 = call i32 @init_poll_funcptr(i32* %73, i32 %74)
  %76 = load %struct.mem_cgroup_event*, %struct.mem_cgroup_event** %12, align 8
  %77 = getelementptr inbounds %struct.mem_cgroup_event, %struct.mem_cgroup_event* %76, i32 0, i32 6
  %78 = load i32, i32* @memcg_event_wake, align 4
  %79 = call i32 @init_waitqueue_func_entry(i32* %77, i32 %78)
  %80 = load %struct.mem_cgroup_event*, %struct.mem_cgroup_event** %12, align 8
  %81 = getelementptr inbounds %struct.mem_cgroup_event, %struct.mem_cgroup_event* %80, i32 0, i32 5
  %82 = load i32, i32* @memcg_event_remove, align 4
  %83 = call i32 @INIT_WORK(i32* %81, i32 %82)
  %84 = load i32, i32* %14, align 4
  %85 = call %struct.TYPE_10__* @fdget(i32 %84)
  %86 = getelementptr inbounds %struct.fd, %struct.fd* %21, i32 0, i32 0
  store %struct.TYPE_10__* %85, %struct.TYPE_10__** %86, align 8
  %87 = bitcast %struct.fd* %16 to i8*
  %88 = bitcast %struct.fd* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 8 %88, i64 8, i1 false)
  %89 = getelementptr inbounds %struct.fd, %struct.fd* %16, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = icmp ne %struct.TYPE_10__* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %65
  %93 = load i32, i32* @EBADF, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %20, align 4
  br label %265

95:                                               ; preds = %65
  %96 = getelementptr inbounds %struct.fd, %struct.fd* %16, i32 0, i32 0
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = call %struct.cgroup_subsys_state* @eventfd_ctx_fileget(%struct.TYPE_10__* %97)
  %99 = load %struct.mem_cgroup_event*, %struct.mem_cgroup_event** %12, align 8
  %100 = getelementptr inbounds %struct.mem_cgroup_event, %struct.mem_cgroup_event* %99, i32 0, i32 1
  store %struct.cgroup_subsys_state* %98, %struct.cgroup_subsys_state** %100, align 8
  %101 = load %struct.mem_cgroup_event*, %struct.mem_cgroup_event** %12, align 8
  %102 = getelementptr inbounds %struct.mem_cgroup_event, %struct.mem_cgroup_event* %101, i32 0, i32 1
  %103 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %102, align 8
  %104 = call i64 @IS_ERR(%struct.cgroup_subsys_state* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %95
  %107 = load %struct.mem_cgroup_event*, %struct.mem_cgroup_event** %12, align 8
  %108 = getelementptr inbounds %struct.mem_cgroup_event, %struct.mem_cgroup_event* %107, i32 0, i32 1
  %109 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %108, align 8
  %110 = call i32 @PTR_ERR(%struct.cgroup_subsys_state* %109)
  store i32 %110, i32* %20, align 4
  br label %261

111:                                              ; preds = %95
  %112 = load i32, i32* %15, align 4
  %113 = call %struct.TYPE_10__* @fdget(i32 %112)
  %114 = getelementptr inbounds %struct.fd, %struct.fd* %22, i32 0, i32 0
  store %struct.TYPE_10__* %113, %struct.TYPE_10__** %114, align 8
  %115 = bitcast %struct.fd* %17 to i8*
  %116 = bitcast %struct.fd* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %115, i8* align 8 %116, i64 8, i1 false)
  %117 = getelementptr inbounds %struct.fd, %struct.fd* %17, i32 0, i32 0
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = icmp ne %struct.TYPE_10__* %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %111
  %121 = load i32, i32* @EBADF, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %20, align 4
  br label %256

123:                                              ; preds = %111
  %124 = getelementptr inbounds %struct.fd, %struct.fd* %17, i32 0, i32 0
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = call i32 @file_inode(%struct.TYPE_10__* %125)
  %127 = load i32, i32* @MAY_READ, align 4
  %128 = call i32 @inode_permission(i32 %126, i32 %127)
  store i32 %128, i32* %20, align 4
  %129 = load i32, i32* %20, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  br label %252

132:                                              ; preds = %123
  %133 = getelementptr inbounds %struct.fd, %struct.fd* %17, i32 0, i32 0
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  store i8* %140, i8** %18, align 8
  %141 = load i8*, i8** %18, align 8
  %142 = call i32 @strcmp(i8* %141, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %132
  %145 = load %struct.mem_cgroup_event*, %struct.mem_cgroup_event** %12, align 8
  %146 = getelementptr inbounds %struct.mem_cgroup_event, %struct.mem_cgroup_event* %145, i32 0, i32 0
  store i32 (%struct.mem_cgroup.0*, %struct.cgroup_subsys_state.1*, i8*)* bitcast (i32 (%struct.mem_cgroup*, %struct.cgroup_subsys_state*, i8*)* @mem_cgroup_usage_register_event to i32 (%struct.mem_cgroup.0*, %struct.cgroup_subsys_state.1*, i8*)*), i32 (%struct.mem_cgroup.0*, %struct.cgroup_subsys_state.1*, i8*)** %146, align 8
  %147 = load i32, i32* @mem_cgroup_usage_unregister_event, align 4
  %148 = load %struct.mem_cgroup_event*, %struct.mem_cgroup_event** %12, align 8
  %149 = getelementptr inbounds %struct.mem_cgroup_event, %struct.mem_cgroup_event* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 8
  br label %187

150:                                              ; preds = %132
  %151 = load i8*, i8** %18, align 8
  %152 = call i32 @strcmp(i8* %151, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %150
  %155 = load %struct.mem_cgroup_event*, %struct.mem_cgroup_event** %12, align 8
  %156 = getelementptr inbounds %struct.mem_cgroup_event, %struct.mem_cgroup_event* %155, i32 0, i32 0
  store i32 (%struct.mem_cgroup.0*, %struct.cgroup_subsys_state.1*, i8*)* bitcast (i32 (%struct.mem_cgroup*, %struct.cgroup_subsys_state*, i8*)* @mem_cgroup_oom_register_event to i32 (%struct.mem_cgroup.0*, %struct.cgroup_subsys_state.1*, i8*)*), i32 (%struct.mem_cgroup.0*, %struct.cgroup_subsys_state.1*, i8*)** %156, align 8
  %157 = load i32, i32* @mem_cgroup_oom_unregister_event, align 4
  %158 = load %struct.mem_cgroup_event*, %struct.mem_cgroup_event** %12, align 8
  %159 = getelementptr inbounds %struct.mem_cgroup_event, %struct.mem_cgroup_event* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 8
  br label %186

160:                                              ; preds = %150
  %161 = load i8*, i8** %18, align 8
  %162 = call i32 @strcmp(i8* %161, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %160
  %165 = load %struct.mem_cgroup_event*, %struct.mem_cgroup_event** %12, align 8
  %166 = getelementptr inbounds %struct.mem_cgroup_event, %struct.mem_cgroup_event* %165, i32 0, i32 0
  store i32 (%struct.mem_cgroup.0*, %struct.cgroup_subsys_state.1*, i8*)* bitcast (i32 (%struct.mem_cgroup*, %struct.cgroup_subsys_state*, i8*)* @vmpressure_register_event to i32 (%struct.mem_cgroup.0*, %struct.cgroup_subsys_state.1*, i8*)*), i32 (%struct.mem_cgroup.0*, %struct.cgroup_subsys_state.1*, i8*)** %166, align 8
  %167 = load i32, i32* @vmpressure_unregister_event, align 4
  %168 = load %struct.mem_cgroup_event*, %struct.mem_cgroup_event** %12, align 8
  %169 = getelementptr inbounds %struct.mem_cgroup_event, %struct.mem_cgroup_event* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 8
  br label %185

170:                                              ; preds = %160
  %171 = load i8*, i8** %18, align 8
  %172 = call i32 @strcmp(i8* %171, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %180, label %174

174:                                              ; preds = %170
  %175 = load %struct.mem_cgroup_event*, %struct.mem_cgroup_event** %12, align 8
  %176 = getelementptr inbounds %struct.mem_cgroup_event, %struct.mem_cgroup_event* %175, i32 0, i32 0
  store i32 (%struct.mem_cgroup.0*, %struct.cgroup_subsys_state.1*, i8*)* bitcast (i32 (%struct.mem_cgroup*, %struct.cgroup_subsys_state*, i8*)* @memsw_cgroup_usage_register_event to i32 (%struct.mem_cgroup.0*, %struct.cgroup_subsys_state.1*, i8*)*), i32 (%struct.mem_cgroup.0*, %struct.cgroup_subsys_state.1*, i8*)** %176, align 8
  %177 = load i32, i32* @memsw_cgroup_usage_unregister_event, align 4
  %178 = load %struct.mem_cgroup_event*, %struct.mem_cgroup_event** %12, align 8
  %179 = getelementptr inbounds %struct.mem_cgroup_event, %struct.mem_cgroup_event* %178, i32 0, i32 4
  store i32 %177, i32* %179, align 8
  br label %184

180:                                              ; preds = %170
  %181 = load i64, i64* @EINVAL, align 8
  %182 = sub i64 0, %181
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %20, align 4
  br label %252

184:                                              ; preds = %174
  br label %185

185:                                              ; preds = %184, %164
  br label %186

186:                                              ; preds = %185, %154
  br label %187

187:                                              ; preds = %186, %144
  %188 = getelementptr inbounds %struct.fd, %struct.fd* %17, i32 0, i32 0
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call %struct.cgroup_subsys_state* @css_tryget_online_from_dir(i32 %194, i32* @memory_cgrp_subsys)
  store %struct.cgroup_subsys_state* %195, %struct.cgroup_subsys_state** %13, align 8
  %196 = load i64, i64* @EINVAL, align 8
  %197 = sub i64 0, %196
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %20, align 4
  %199 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %13, align 8
  %200 = call i64 @IS_ERR(%struct.cgroup_subsys_state* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %187
  br label %252

203:                                              ; preds = %187
  %204 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %13, align 8
  %205 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %10, align 8
  %206 = icmp ne %struct.cgroup_subsys_state* %204, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %203
  %208 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %13, align 8
  %209 = call i32 @css_put(%struct.cgroup_subsys_state* %208)
  br label %252

210:                                              ; preds = %203
  %211 = load %struct.mem_cgroup_event*, %struct.mem_cgroup_event** %12, align 8
  %212 = getelementptr inbounds %struct.mem_cgroup_event, %struct.mem_cgroup_event* %211, i32 0, i32 0
  %213 = load i32 (%struct.mem_cgroup.0*, %struct.cgroup_subsys_state.1*, i8*)*, i32 (%struct.mem_cgroup.0*, %struct.cgroup_subsys_state.1*, i8*)** %212, align 8
  %214 = load %struct.mem_cgroup*, %struct.mem_cgroup** %11, align 8
  %215 = bitcast %struct.mem_cgroup* %214 to %struct.mem_cgroup.0*
  %216 = load %struct.mem_cgroup_event*, %struct.mem_cgroup_event** %12, align 8
  %217 = getelementptr inbounds %struct.mem_cgroup_event, %struct.mem_cgroup_event* %216, i32 0, i32 1
  %218 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %217, align 8
  %219 = bitcast %struct.cgroup_subsys_state* %218 to %struct.cgroup_subsys_state.1*
  %220 = load i8*, i8** %7, align 8
  %221 = call i32 %213(%struct.mem_cgroup.0* %215, %struct.cgroup_subsys_state.1* %219, i8* %220)
  store i32 %221, i32* %20, align 4
  %222 = load i32, i32* %20, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %210
  br label %249

225:                                              ; preds = %210
  %226 = getelementptr inbounds %struct.fd, %struct.fd* %16, i32 0, i32 0
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %226, align 8
  %228 = load %struct.mem_cgroup_event*, %struct.mem_cgroup_event** %12, align 8
  %229 = getelementptr inbounds %struct.mem_cgroup_event, %struct.mem_cgroup_event* %228, i32 0, i32 3
  %230 = call i32 @vfs_poll(%struct.TYPE_10__* %227, i32* %229)
  %231 = load %struct.mem_cgroup*, %struct.mem_cgroup** %11, align 8
  %232 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %231, i32 0, i32 0
  %233 = call i32 @spin_lock(i32* %232)
  %234 = load %struct.mem_cgroup_event*, %struct.mem_cgroup_event** %12, align 8
  %235 = getelementptr inbounds %struct.mem_cgroup_event, %struct.mem_cgroup_event* %234, i32 0, i32 2
  %236 = load %struct.mem_cgroup*, %struct.mem_cgroup** %11, align 8
  %237 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %236, i32 0, i32 1
  %238 = call i32 @list_add(i32* %235, i32* %237)
  %239 = load %struct.mem_cgroup*, %struct.mem_cgroup** %11, align 8
  %240 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %239, i32 0, i32 0
  %241 = call i32 @spin_unlock(i32* %240)
  %242 = getelementptr inbounds %struct.fd, %struct.fd* %17, i32 0, i32 0
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %242, align 8
  %244 = call i32 @fdput(%struct.TYPE_10__* %243)
  %245 = getelementptr inbounds %struct.fd, %struct.fd* %16, i32 0, i32 0
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %245, align 8
  %247 = call i32 @fdput(%struct.TYPE_10__* %246)
  %248 = load i64, i64* %8, align 8
  store i64 %248, i64* %5, align 8
  br label %270

249:                                              ; preds = %224
  %250 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %10, align 8
  %251 = call i32 @css_put(%struct.cgroup_subsys_state* %250)
  br label %252

252:                                              ; preds = %249, %207, %202, %180, %131
  %253 = getelementptr inbounds %struct.fd, %struct.fd* %17, i32 0, i32 0
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %253, align 8
  %255 = call i32 @fdput(%struct.TYPE_10__* %254)
  br label %256

256:                                              ; preds = %252, %120
  %257 = load %struct.mem_cgroup_event*, %struct.mem_cgroup_event** %12, align 8
  %258 = getelementptr inbounds %struct.mem_cgroup_event, %struct.mem_cgroup_event* %257, i32 0, i32 1
  %259 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %258, align 8
  %260 = call i32 @eventfd_ctx_put(%struct.cgroup_subsys_state* %259)
  br label %261

261:                                              ; preds = %256, %106
  %262 = getelementptr inbounds %struct.fd, %struct.fd* %16, i32 0, i32 0
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %262, align 8
  %264 = call i32 @fdput(%struct.TYPE_10__* %263)
  br label %265

265:                                              ; preds = %261, %92
  %266 = load %struct.mem_cgroup_event*, %struct.mem_cgroup_event** %12, align 8
  %267 = call i32 @kfree(%struct.mem_cgroup_event* %266)
  %268 = load i32, i32* %20, align 4
  %269 = sext i32 %268 to i64
  store i64 %269, i64* %5, align 8
  br label %270

270:                                              ; preds = %265, %225, %62, %52, %35
  %271 = load i64, i64* %5, align 8
  ret i64 %271
}

declare dso_local %struct.cgroup_subsys_state* @of_css(%struct.kernfs_open_file*) #1

declare dso_local %struct.mem_cgroup* @mem_cgroup_from_css(%struct.cgroup_subsys_state*) #1

declare dso_local i8* @strstrip(i8*) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local %struct.mem_cgroup_event* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_poll_funcptr(i32*, i32) #1

declare dso_local i32 @init_waitqueue_func_entry(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @fdget(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.cgroup_subsys_state* @eventfd_ctx_fileget(%struct.TYPE_10__*) #1

declare dso_local i64 @IS_ERR(%struct.cgroup_subsys_state*) #1

declare dso_local i32 @PTR_ERR(%struct.cgroup_subsys_state*) #1

declare dso_local i32 @inode_permission(i32, i32) #1

declare dso_local i32 @file_inode(%struct.TYPE_10__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @mem_cgroup_usage_register_event(%struct.mem_cgroup*, %struct.cgroup_subsys_state*, i8*) #1

declare dso_local i32 @mem_cgroup_oom_register_event(%struct.mem_cgroup*, %struct.cgroup_subsys_state*, i8*) #1

declare dso_local i32 @vmpressure_register_event(%struct.mem_cgroup*, %struct.cgroup_subsys_state*, i8*) #1

declare dso_local i32 @memsw_cgroup_usage_register_event(%struct.mem_cgroup*, %struct.cgroup_subsys_state*, i8*) #1

declare dso_local %struct.cgroup_subsys_state* @css_tryget_online_from_dir(i32, i32*) #1

declare dso_local i32 @css_put(%struct.cgroup_subsys_state*) #1

declare dso_local i32 @vfs_poll(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fdput(%struct.TYPE_10__*) #1

declare dso_local i32 @eventfd_ctx_put(%struct.cgroup_subsys_state*) #1

declare dso_local i32 @kfree(%struct.mem_cgroup_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
