; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c___gss_pipe_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c___gss_pipe_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_pipe = type { i32, i32, %struct.rpc_clnt* }
%struct.rpc_clnt = type { i32 }
%struct.net = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gss_pipe*)* @__gss_pipe_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__gss_pipe_free(%struct.gss_pipe* %0) #0 {
  %2 = alloca %struct.gss_pipe*, align 8
  %3 = alloca %struct.rpc_clnt*, align 8
  %4 = alloca %struct.net*, align 8
  store %struct.gss_pipe* %0, %struct.gss_pipe** %2, align 8
  %5 = load %struct.gss_pipe*, %struct.gss_pipe** %2, align 8
  %6 = getelementptr inbounds %struct.gss_pipe, %struct.gss_pipe* %5, i32 0, i32 2
  %7 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  store %struct.rpc_clnt* %7, %struct.rpc_clnt** %3, align 8
  %8 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %9 = call %struct.net* @rpc_net_ns(%struct.rpc_clnt* %8)
  store %struct.net* %9, %struct.net** %4, align 8
  %10 = load %struct.net*, %struct.net** %4, align 8
  %11 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %12 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %11, i32 0, i32 0
  %13 = load %struct.gss_pipe*, %struct.gss_pipe** %2, align 8
  %14 = getelementptr inbounds %struct.gss_pipe, %struct.gss_pipe* %13, i32 0, i32 1
  %15 = call i32 @rpc_remove_pipe_dir_object(%struct.net* %10, i32* %12, i32* %14)
  %16 = load %struct.gss_pipe*, %struct.gss_pipe** %2, align 8
  %17 = getelementptr inbounds %struct.gss_pipe, %struct.gss_pipe* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @rpc_destroy_pipe_data(i32 %18)
  %20 = load %struct.gss_pipe*, %struct.gss_pipe** %2, align 8
  %21 = call i32 @kfree(%struct.gss_pipe* %20)
  ret void
}

declare dso_local %struct.net* @rpc_net_ns(%struct.rpc_clnt*) #1

declare dso_local i32 @rpc_remove_pipe_dir_object(%struct.net*, i32*, i32*) #1

declare dso_local i32 @rpc_destroy_pipe_data(i32) #1

declare dso_local i32 @kfree(%struct.gss_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
