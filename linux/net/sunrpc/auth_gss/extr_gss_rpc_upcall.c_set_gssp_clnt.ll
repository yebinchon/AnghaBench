; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_rpc_upcall.c_set_gssp_clnt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_rpc_upcall.c_set_gssp_clnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sunrpc_net = type { i32, %struct.rpc_clnt* }
%struct.rpc_clnt = type { i32 }

@sunrpc_net_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_gssp_clnt(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca %struct.sunrpc_net*, align 8
  %4 = alloca %struct.rpc_clnt*, align 8
  %5 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %2, align 8
  %6 = load %struct.net*, %struct.net** %2, align 8
  %7 = load i32, i32* @sunrpc_net_id, align 4
  %8 = call %struct.sunrpc_net* @net_generic(%struct.net* %6, i32 %7)
  store %struct.sunrpc_net* %8, %struct.sunrpc_net** %3, align 8
  %9 = load %struct.sunrpc_net*, %struct.sunrpc_net** %3, align 8
  %10 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.net*, %struct.net** %2, align 8
  %13 = call i32 @gssp_rpc_create(%struct.net* %12, %struct.rpc_clnt** %4)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %1
  %17 = load %struct.sunrpc_net*, %struct.sunrpc_net** %3, align 8
  %18 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %17, i32 0, i32 1
  %19 = load %struct.rpc_clnt*, %struct.rpc_clnt** %18, align 8
  %20 = icmp ne %struct.rpc_clnt* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.sunrpc_net*, %struct.sunrpc_net** %3, align 8
  %23 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %22, i32 0, i32 1
  %24 = load %struct.rpc_clnt*, %struct.rpc_clnt** %23, align 8
  %25 = call i32 @rpc_shutdown_client(%struct.rpc_clnt* %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %28 = load %struct.sunrpc_net*, %struct.sunrpc_net** %3, align 8
  %29 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %28, i32 0, i32 1
  store %struct.rpc_clnt* %27, %struct.rpc_clnt** %29, align 8
  br label %30

30:                                               ; preds = %26, %1
  %31 = load %struct.sunrpc_net*, %struct.sunrpc_net** %3, align 8
  %32 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.sunrpc_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gssp_rpc_create(%struct.net*, %struct.rpc_clnt**) #1

declare dso_local i32 @rpc_shutdown_client(%struct.rpc_clnt*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
