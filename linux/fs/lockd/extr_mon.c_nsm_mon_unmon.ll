; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_mon.c_nsm_mon_unmon.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_mon.c_nsm_mon_unmon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsm_handle = type { i32, i32 }
%struct.nsm_res = type { i32 }
%struct.nlm_host = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rpc_clnt = type { i32* }
%struct.nsm_args = type { i32, i32, i32, i32, i32, i32* }
%struct.rpc_message = type { i32*, %struct.nsm_res*, %struct.nsm_args* }

@NLMPROC_NSM_NOTIFY = common dso_local global i32 0, align 4
@NLM_PROGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"lockd: failed to create NSM upcall transport, status=%ld, net=%x\0A\00", align 1
@RPC_TASK_SOFTCONN = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"lockd:\09NSM upcall RPC failed, status=%d, forcing rebind\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"lockd: NSM upcall RPC failed, status=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nsm_handle*, i64, %struct.nsm_res*, %struct.nlm_host*)* @nsm_mon_unmon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsm_mon_unmon(%struct.nsm_handle* %0, i64 %1, %struct.nsm_res* %2, %struct.nlm_host* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nsm_handle*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nsm_res*, align 8
  %9 = alloca %struct.nlm_host*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rpc_clnt*, align 8
  %12 = alloca %struct.nsm_args, align 8
  %13 = alloca %struct.rpc_message, align 8
  store %struct.nsm_handle* %0, %struct.nsm_handle** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.nsm_res* %2, %struct.nsm_res** %8, align 8
  store %struct.nlm_host* %3, %struct.nlm_host** %9, align 8
  %14 = getelementptr inbounds %struct.nsm_args, %struct.nsm_args* %12, i32 0, i32 0
  store i32 3, i32* %14, align 8
  %15 = getelementptr inbounds %struct.nsm_args, %struct.nsm_args* %12, i32 0, i32 1
  %16 = load %struct.nlm_host*, %struct.nlm_host** %9, align 8
  %17 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds %struct.nsm_args, %struct.nsm_args* %12, i32 0, i32 2
  %20 = load %struct.nsm_handle*, %struct.nsm_handle** %6, align 8
  %21 = getelementptr inbounds %struct.nsm_handle, %struct.nsm_handle* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %19, align 8
  %23 = getelementptr inbounds %struct.nsm_args, %struct.nsm_args* %12, i32 0, i32 3
  %24 = load i32, i32* @NLMPROC_NSM_NOTIFY, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.nsm_args, %struct.nsm_args* %12, i32 0, i32 4
  %26 = load i32, i32* @NLM_PROGRAM, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.nsm_args, %struct.nsm_args* %12, i32 0, i32 5
  %28 = load %struct.nsm_handle*, %struct.nsm_handle** %6, align 8
  %29 = getelementptr inbounds %struct.nsm_handle, %struct.nsm_handle* %28, i32 0, i32 1
  store i32* %29, i32** %27, align 8
  %30 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 0
  store i32* null, i32** %30, align 8
  %31 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 1
  %32 = load %struct.nsm_res*, %struct.nsm_res** %8, align 8
  store %struct.nsm_res* %32, %struct.nsm_res** %31, align 8
  %33 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 2
  store %struct.nsm_args* %12, %struct.nsm_args** %33, align 8
  %34 = load %struct.nsm_res*, %struct.nsm_res** %8, align 8
  %35 = call i32 @memset(%struct.nsm_res* %34, i32 0, i32 4)
  %36 = load %struct.nlm_host*, %struct.nlm_host** %9, align 8
  %37 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load %struct.nlm_host*, %struct.nlm_host** %9, align 8
  %40 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.rpc_clnt* @nsm_create(%struct.TYPE_4__* %38, i32 %41)
  store %struct.rpc_clnt* %42, %struct.rpc_clnt** %11, align 8
  %43 = load %struct.rpc_clnt*, %struct.rpc_clnt** %11, align 8
  %44 = call i64 @IS_ERR(%struct.rpc_clnt* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %4
  %47 = load %struct.rpc_clnt*, %struct.rpc_clnt** %11, align 8
  %48 = call i32 @PTR_ERR(%struct.rpc_clnt* %47)
  %49 = load %struct.nlm_host*, %struct.nlm_host** %9, align 8
  %50 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %54)
  %56 = load %struct.rpc_clnt*, %struct.rpc_clnt** %11, align 8
  %57 = call i32 @PTR_ERR(%struct.rpc_clnt* %56)
  store i32 %57, i32* %5, align 4
  br label %91

58:                                               ; preds = %4
  %59 = load %struct.rpc_clnt*, %struct.rpc_clnt** %11, align 8
  %60 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 0
  store i32* %63, i32** %64, align 8
  %65 = load %struct.rpc_clnt*, %struct.rpc_clnt** %11, align 8
  %66 = load i32, i32* @RPC_TASK_SOFTCONN, align 4
  %67 = call i32 @rpc_call_sync(%struct.rpc_clnt* %65, %struct.rpc_message* %13, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @ECONNREFUSED, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %58
  %73 = load i32, i32* %10, align 4
  %74 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load %struct.rpc_clnt*, %struct.rpc_clnt** %11, align 8
  %76 = call i32 @rpc_force_rebind(%struct.rpc_clnt* %75)
  %77 = load %struct.rpc_clnt*, %struct.rpc_clnt** %11, align 8
  %78 = load i32, i32* @RPC_TASK_SOFTCONN, align 4
  %79 = call i32 @rpc_call_sync(%struct.rpc_clnt* %77, %struct.rpc_message* %13, i32 %78)
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %72, %58
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %10, align 4
  %85 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %87

86:                                               ; preds = %80
  store i32 0, i32* %10, align 4
  br label %87

87:                                               ; preds = %86, %83
  %88 = load %struct.rpc_clnt*, %struct.rpc_clnt** %11, align 8
  %89 = call i32 @rpc_shutdown_client(%struct.rpc_clnt* %88)
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %87, %46
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @memset(%struct.nsm_res*, i32, i32) #1

declare dso_local %struct.rpc_clnt* @nsm_create(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rpc_clnt*) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_clnt*) #1

declare dso_local i32 @rpc_call_sync(%struct.rpc_clnt*, %struct.rpc_message*, i32) #1

declare dso_local i32 @rpc_force_rebind(%struct.rpc_clnt*) #1

declare dso_local i32 @rpc_shutdown_client(%struct.rpc_clnt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
