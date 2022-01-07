; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_create_upcall.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_create_upcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_auth = type { %struct.net* }
%struct.net = type { i32 }
%struct.gss_cred = type { %struct.rpc_cred }
%struct.rpc_cred = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sunrpc_net = type { i64 }
%struct.rpc_pipe = type { i32 }
%struct.gss_upcall_msg = type { i32, %struct.TYPE_3__, i32*, %struct.rpc_pipe* }
%struct.TYPE_3__ = type { i32 }

@sunrpc_net_id = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@pipe_version_waitqueue = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@TASK_KILLABLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gss_auth*, %struct.gss_cred*)* @gss_create_upcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_create_upcall(%struct.gss_auth* %0, %struct.gss_cred* %1) #0 {
  %3 = alloca %struct.gss_auth*, align 8
  %4 = alloca %struct.gss_cred*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sunrpc_net*, align 8
  %7 = alloca %struct.rpc_pipe*, align 8
  %8 = alloca %struct.rpc_cred*, align 8
  %9 = alloca %struct.gss_upcall_msg*, align 8
  %10 = alloca i32, align 4
  store %struct.gss_auth* %0, %struct.gss_auth** %3, align 8
  store %struct.gss_cred* %1, %struct.gss_cred** %4, align 8
  %11 = load %struct.gss_auth*, %struct.gss_auth** %3, align 8
  %12 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %11, i32 0, i32 0
  %13 = load %struct.net*, %struct.net** %12, align 8
  store %struct.net* %13, %struct.net** %5, align 8
  %14 = load %struct.net*, %struct.net** %5, align 8
  %15 = load i32, i32* @sunrpc_net_id, align 4
  %16 = call %struct.sunrpc_net* @net_generic(%struct.net* %14, i32 %15)
  store %struct.sunrpc_net* %16, %struct.sunrpc_net** %6, align 8
  %17 = load %struct.gss_cred*, %struct.gss_cred** %4, align 8
  %18 = getelementptr inbounds %struct.gss_cred, %struct.gss_cred* %17, i32 0, i32 0
  store %struct.rpc_cred* %18, %struct.rpc_cred** %8, align 8
  %19 = load i32, i32* @wait, align 4
  %20 = call i32 @DEFINE_WAIT(i32 %19)
  br label %21

21:                                               ; preds = %60, %2
  store i32 0, i32* %10, align 4
  %22 = load %struct.net*, %struct.net** %5, align 8
  %23 = call i32 @gssd_running(%struct.net* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = call i32 (...) @warn_gssd()
  %27 = load i32, i32* @EACCES, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  br label %129

29:                                               ; preds = %21
  %30 = load %struct.gss_auth*, %struct.gss_auth** %3, align 8
  %31 = load %struct.rpc_cred*, %struct.rpc_cred** %8, align 8
  %32 = call %struct.gss_upcall_msg* @gss_setup_upcall(%struct.gss_auth* %30, %struct.rpc_cred* %31)
  store %struct.gss_upcall_msg* %32, %struct.gss_upcall_msg** %9, align 8
  %33 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %9, align 8
  %34 = call i32 @PTR_ERR(%struct.gss_upcall_msg* %33)
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %29
  %39 = load i32, i32* @pipe_version_waitqueue, align 4
  %40 = load %struct.sunrpc_net*, %struct.sunrpc_net** %6, align 8
  %41 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* @HZ, align 4
  %46 = mul nsw i32 15, %45
  %47 = call i32 @wait_event_interruptible_timeout(i32 %39, i32 %44, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.sunrpc_net*, %struct.sunrpc_net** %6, align 8
  %49 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %38
  %53 = call i32 (...) @warn_gssd()
  %54 = load i32, i32* @EACCES, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %52, %38
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %129

60:                                               ; preds = %56
  br label %21

61:                                               ; preds = %29
  %62 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %9, align 8
  %63 = call i64 @IS_ERR(%struct.gss_upcall_msg* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %9, align 8
  %67 = call i32 @PTR_ERR(%struct.gss_upcall_msg* %66)
  store i32 %67, i32* %10, align 4
  br label %129

68:                                               ; preds = %61
  %69 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %9, align 8
  %70 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %69, i32 0, i32 3
  %71 = load %struct.rpc_pipe*, %struct.rpc_pipe** %70, align 8
  store %struct.rpc_pipe* %71, %struct.rpc_pipe** %7, align 8
  br label %72

72:                                               ; preds = %101, %68
  %73 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %9, align 8
  %74 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %73, i32 0, i32 0
  %75 = load i32, i32* @TASK_KILLABLE, align 4
  %76 = call i32 @prepare_to_wait(i32* %74, i32* @wait, i32 %75)
  %77 = load %struct.rpc_pipe*, %struct.rpc_pipe** %7, align 8
  %78 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %77, i32 0, i32 0
  %79 = call i32 @spin_lock(i32* %78)
  %80 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %9, align 8
  %81 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %90, label %84

84:                                               ; preds = %72
  %85 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %9, align 8
  %86 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84, %72
  br label %103

91:                                               ; preds = %84
  %92 = load %struct.rpc_pipe*, %struct.rpc_pipe** %7, align 8
  %93 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %92, i32 0, i32 0
  %94 = call i32 @spin_unlock(i32* %93)
  %95 = load i32, i32* @current, align 4
  %96 = call i64 @fatal_signal_pending(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32, i32* @ERESTARTSYS, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %10, align 4
  br label %123

101:                                              ; preds = %91
  %102 = call i32 (...) @schedule()
  br label %72

103:                                              ; preds = %90
  %104 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %9, align 8
  %105 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load %struct.rpc_cred*, %struct.rpc_cred** %8, align 8
  %110 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %9, align 8
  %111 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @gss_cred_set_ctx(%struct.rpc_cred* %109, i32* %112)
  br label %119

114:                                              ; preds = %103
  %115 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %9, align 8
  %116 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %114, %108
  %120 = load %struct.rpc_pipe*, %struct.rpc_pipe** %7, align 8
  %121 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %120, i32 0, i32 0
  %122 = call i32 @spin_unlock(i32* %121)
  br label %123

123:                                              ; preds = %119, %98
  %124 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %9, align 8
  %125 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %124, i32 0, i32 0
  %126 = call i32 @finish_wait(i32* %125, i32* @wait)
  %127 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %9, align 8
  %128 = call i32 @gss_release_msg(%struct.gss_upcall_msg* %127)
  br label %129

129:                                              ; preds = %123, %65, %59, %25
  %130 = load %struct.rpc_cred*, %struct.rpc_cred** %8, align 8
  %131 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %130, i32 0, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @from_kuid(i32* @init_user_ns, i32 %134)
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @trace_rpcgss_upcall_result(i32 %135, i32 %136)
  %138 = load i32, i32* %10, align 4
  ret i32 %138
}

declare dso_local %struct.sunrpc_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @gssd_running(%struct.net*) #1

declare dso_local i32 @warn_gssd(...) #1

declare dso_local %struct.gss_upcall_msg* @gss_setup_upcall(%struct.gss_auth*, %struct.rpc_cred*) #1

declare dso_local i32 @PTR_ERR(%struct.gss_upcall_msg*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.gss_upcall_msg*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @fatal_signal_pending(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @gss_cred_set_ctx(%struct.rpc_cred*, i32*) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @gss_release_msg(%struct.gss_upcall_msg*) #1

declare dso_local i32 @trace_rpcgss_upcall_result(i32, i32) #1

declare dso_local i32 @from_kuid(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
