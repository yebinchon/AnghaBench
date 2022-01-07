; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_clnt_setup_test_and_add_xprt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_clnt_setup_test_and_add_xprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.rpc_xprt_switch = type { i32 }
%struct.rpc_xprt = type { i32*, i32 }
%struct.rpc_task = type { i32 }
%struct.rpc_add_xprt_test = type { i32, i32 (%struct.rpc_clnt*, %struct.rpc_xprt*, i32)* }
%struct.sockaddr = type { i32 }

@EADDRINUSE = common dso_local global i32 0, align 4
@RPC_TASK_SOFT = common dso_local global i32 0, align 4
@RPC_TASK_SOFTCONN = common dso_local global i32 0, align 4
@RPC_TASK_NULLCREDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"RPC:   rpc_clnt_test_xprt failed: %d addr %s not added\0A\00", align 1
@RPC_DISPLAY_ADDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_clnt_setup_test_and_add_xprt(%struct.rpc_clnt* %0, %struct.rpc_xprt_switch* %1, %struct.rpc_xprt* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_clnt*, align 8
  %7 = alloca %struct.rpc_xprt_switch*, align 8
  %8 = alloca %struct.rpc_xprt*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.rpc_task*, align 8
  %11 = alloca %struct.rpc_add_xprt_test*, align 8
  %12 = alloca i32, align 4
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %6, align 8
  store %struct.rpc_xprt_switch* %1, %struct.rpc_xprt_switch** %7, align 8
  store %struct.rpc_xprt* %2, %struct.rpc_xprt** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.rpc_add_xprt_test*
  store %struct.rpc_add_xprt_test* %14, %struct.rpc_add_xprt_test** %11, align 8
  %15 = load i32, i32* @EADDRINUSE, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %12, align 4
  %17 = load %struct.rpc_xprt*, %struct.rpc_xprt** %8, align 8
  %18 = call %struct.rpc_xprt* @xprt_get(%struct.rpc_xprt* %17)
  store %struct.rpc_xprt* %18, %struct.rpc_xprt** %8, align 8
  %19 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %7, align 8
  %20 = call i32 @xprt_switch_get(%struct.rpc_xprt_switch* %19)
  %21 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %7, align 8
  %22 = load %struct.rpc_xprt*, %struct.rpc_xprt** %8, align 8
  %23 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %22, i32 0, i32 1
  %24 = bitcast i32* %23 to %struct.sockaddr*
  %25 = call i64 @rpc_xprt_switch_has_addr(%struct.rpc_xprt_switch* %21, %struct.sockaddr* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %66

28:                                               ; preds = %4
  %29 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %30 = load %struct.rpc_xprt*, %struct.rpc_xprt** %8, align 8
  %31 = load i32, i32* @RPC_TASK_SOFT, align 4
  %32 = load i32, i32* @RPC_TASK_SOFTCONN, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @RPC_TASK_NULLCREDS, align 4
  %35 = or i32 %33, %34
  %36 = call %struct.rpc_task* @rpc_call_null_helper(%struct.rpc_clnt* %29, %struct.rpc_xprt* %30, i32* null, i32 %35, i32* null, i32* null)
  store %struct.rpc_task* %36, %struct.rpc_task** %10, align 8
  %37 = load %struct.rpc_task*, %struct.rpc_task** %10, align 8
  %38 = call i64 @IS_ERR(%struct.rpc_task* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load %struct.rpc_task*, %struct.rpc_task** %10, align 8
  %42 = call i32 @PTR_ERR(%struct.rpc_task* %41)
  store i32 %42, i32* %12, align 4
  br label %66

43:                                               ; preds = %28
  %44 = load %struct.rpc_task*, %struct.rpc_task** %10, align 8
  %45 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %12, align 4
  %47 = load %struct.rpc_task*, %struct.rpc_task** %10, align 8
  %48 = call i32 @rpc_put_task(%struct.rpc_task* %47)
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %66

52:                                               ; preds = %43
  %53 = load %struct.rpc_add_xprt_test*, %struct.rpc_add_xprt_test** %11, align 8
  %54 = getelementptr inbounds %struct.rpc_add_xprt_test, %struct.rpc_add_xprt_test* %53, i32 0, i32 1
  %55 = load i32 (%struct.rpc_clnt*, %struct.rpc_xprt*, i32)*, i32 (%struct.rpc_clnt*, %struct.rpc_xprt*, i32)** %54, align 8
  %56 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %57 = load %struct.rpc_xprt*, %struct.rpc_xprt** %8, align 8
  %58 = load %struct.rpc_add_xprt_test*, %struct.rpc_add_xprt_test** %11, align 8
  %59 = getelementptr inbounds %struct.rpc_add_xprt_test, %struct.rpc_add_xprt_test* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 %55(%struct.rpc_clnt* %56, %struct.rpc_xprt* %57, i32 %60)
  %62 = load %struct.rpc_xprt*, %struct.rpc_xprt** %8, align 8
  %63 = call i32 @xprt_put(%struct.rpc_xprt* %62)
  %64 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %7, align 8
  %65 = call i32 @xprt_switch_put(%struct.rpc_xprt_switch* %64)
  store i32 1, i32* %5, align 4
  br label %80

66:                                               ; preds = %51, %40, %27
  %67 = load %struct.rpc_xprt*, %struct.rpc_xprt** %8, align 8
  %68 = call i32 @xprt_put(%struct.rpc_xprt* %67)
  %69 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %7, align 8
  %70 = call i32 @xprt_switch_put(%struct.rpc_xprt_switch* %69)
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.rpc_xprt*, %struct.rpc_xprt** %8, align 8
  %73 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @RPC_DISPLAY_ADDR, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @pr_info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %77)
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %66, %52
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.rpc_xprt* @xprt_get(%struct.rpc_xprt*) #1

declare dso_local i32 @xprt_switch_get(%struct.rpc_xprt_switch*) #1

declare dso_local i64 @rpc_xprt_switch_has_addr(%struct.rpc_xprt_switch*, %struct.sockaddr*) #1

declare dso_local %struct.rpc_task* @rpc_call_null_helper(%struct.rpc_clnt*, %struct.rpc_xprt*, i32*, i32, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_task*) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_task*) #1

declare dso_local i32 @rpc_put_task(%struct.rpc_task*) #1

declare dso_local i32 @xprt_put(%struct.rpc_xprt*) #1

declare dso_local i32 @xprt_switch_put(%struct.rpc_xprt_switch*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
