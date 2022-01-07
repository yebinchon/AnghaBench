; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_clnt_test_and_add_xprt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_clnt_test_and_add_xprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.rpc_xprt_switch = type { i32 }
%struct.rpc_xprt = type { i32 }
%struct.rpc_cb_add_xprt_calldata = type { i32, i32 }
%struct.rpc_task = type { i32 }
%struct.sockaddr = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RPC_TASK_SOFT = common dso_local global i32 0, align 4
@RPC_TASK_SOFTCONN = common dso_local global i32 0, align 4
@RPC_TASK_ASYNC = common dso_local global i32 0, align 4
@RPC_TASK_NULLCREDS = common dso_local global i32 0, align 4
@rpc_cb_add_xprt_call_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_clnt_test_and_add_xprt(%struct.rpc_clnt* %0, %struct.rpc_xprt_switch* %1, %struct.rpc_xprt* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_clnt*, align 8
  %7 = alloca %struct.rpc_xprt_switch*, align 8
  %8 = alloca %struct.rpc_xprt*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.rpc_cb_add_xprt_calldata*, align 8
  %11 = alloca %struct.rpc_task*, align 8
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %6, align 8
  store %struct.rpc_xprt_switch* %1, %struct.rpc_xprt_switch** %7, align 8
  store %struct.rpc_xprt* %2, %struct.rpc_xprt** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* @GFP_NOFS, align 4
  %13 = call %struct.rpc_cb_add_xprt_calldata* @kmalloc(i32 8, i32 %12)
  store %struct.rpc_cb_add_xprt_calldata* %13, %struct.rpc_cb_add_xprt_calldata** %10, align 8
  %14 = load %struct.rpc_cb_add_xprt_calldata*, %struct.rpc_cb_add_xprt_calldata** %10, align 8
  %15 = icmp ne %struct.rpc_cb_add_xprt_calldata* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %61

19:                                               ; preds = %4
  %20 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %7, align 8
  %21 = call i32 @xprt_switch_get(%struct.rpc_xprt_switch* %20)
  %22 = load %struct.rpc_cb_add_xprt_calldata*, %struct.rpc_cb_add_xprt_calldata** %10, align 8
  %23 = getelementptr inbounds %struct.rpc_cb_add_xprt_calldata, %struct.rpc_cb_add_xprt_calldata* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.rpc_xprt*, %struct.rpc_xprt** %8, align 8
  %25 = call i32 @xprt_get(%struct.rpc_xprt* %24)
  %26 = load %struct.rpc_cb_add_xprt_calldata*, %struct.rpc_cb_add_xprt_calldata** %10, align 8
  %27 = getelementptr inbounds %struct.rpc_cb_add_xprt_calldata, %struct.rpc_cb_add_xprt_calldata* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.rpc_cb_add_xprt_calldata*, %struct.rpc_cb_add_xprt_calldata** %10, align 8
  %29 = getelementptr inbounds %struct.rpc_cb_add_xprt_calldata, %struct.rpc_cb_add_xprt_calldata* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rpc_xprt*, %struct.rpc_xprt** %8, align 8
  %32 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %31, i32 0, i32 0
  %33 = bitcast i32* %32 to %struct.sockaddr*
  %34 = call i64 @rpc_xprt_switch_has_addr(i32 %30, %struct.sockaddr* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %19
  %37 = load %struct.rpc_cb_add_xprt_calldata*, %struct.rpc_cb_add_xprt_calldata** %10, align 8
  %38 = call i32 @rpc_cb_add_xprt_release(%struct.rpc_cb_add_xprt_calldata* %37)
  br label %60

39:                                               ; preds = %19
  %40 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %41 = load %struct.rpc_xprt*, %struct.rpc_xprt** %8, align 8
  %42 = load i32, i32* @RPC_TASK_SOFT, align 4
  %43 = load i32, i32* @RPC_TASK_SOFTCONN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @RPC_TASK_ASYNC, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @RPC_TASK_NULLCREDS, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.rpc_cb_add_xprt_calldata*, %struct.rpc_cb_add_xprt_calldata** %10, align 8
  %50 = call %struct.rpc_task* @rpc_call_null_helper(%struct.rpc_clnt* %40, %struct.rpc_xprt* %41, i32* null, i32 %48, i32* @rpc_cb_add_xprt_call_ops, %struct.rpc_cb_add_xprt_calldata* %49)
  store %struct.rpc_task* %50, %struct.rpc_task** %11, align 8
  %51 = load %struct.rpc_task*, %struct.rpc_task** %11, align 8
  %52 = call i64 @IS_ERR(%struct.rpc_task* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %39
  %55 = load %struct.rpc_task*, %struct.rpc_task** %11, align 8
  %56 = call i32 @PTR_ERR(%struct.rpc_task* %55)
  store i32 %56, i32* %5, align 4
  br label %61

57:                                               ; preds = %39
  %58 = load %struct.rpc_task*, %struct.rpc_task** %11, align 8
  %59 = call i32 @rpc_put_task(%struct.rpc_task* %58)
  br label %60

60:                                               ; preds = %57, %36
  store i32 1, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %54, %16
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.rpc_cb_add_xprt_calldata* @kmalloc(i32, i32) #1

declare dso_local i32 @xprt_switch_get(%struct.rpc_xprt_switch*) #1

declare dso_local i32 @xprt_get(%struct.rpc_xprt*) #1

declare dso_local i64 @rpc_xprt_switch_has_addr(i32, %struct.sockaddr*) #1

declare dso_local i32 @rpc_cb_add_xprt_release(%struct.rpc_cb_add_xprt_calldata*) #1

declare dso_local %struct.rpc_task* @rpc_call_null_helper(%struct.rpc_clnt*, %struct.rpc_xprt*, i32*, i32, i32*, %struct.rpc_cb_add_xprt_calldata*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_task*) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_task*) #1

declare dso_local i32 @rpc_put_task(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
