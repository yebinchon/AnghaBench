; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_pipefs_init_net.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_pipefs_init_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sunrpc_net = type { i32, i32, i32 }

@sunrpc_net_id = common dso_local global i32 0, align 4
@gssd_dummy_pipe_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_pipefs_init_net(%struct.net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.sunrpc_net*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  %5 = load %struct.net*, %struct.net** %3, align 8
  %6 = load i32, i32* @sunrpc_net_id, align 4
  %7 = call %struct.sunrpc_net* @net_generic(%struct.net* %5, i32 %6)
  store %struct.sunrpc_net* %7, %struct.sunrpc_net** %4, align 8
  %8 = call i32 @rpc_mkpipe_data(i32* @gssd_dummy_pipe_ops, i32 0)
  %9 = load %struct.sunrpc_net*, %struct.sunrpc_net** %4, align 8
  %10 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load %struct.sunrpc_net*, %struct.sunrpc_net** %4, align 8
  %12 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @IS_ERR(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.sunrpc_net*, %struct.sunrpc_net** %4, align 8
  %18 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @PTR_ERR(i32 %19)
  store i32 %20, i32* %2, align 4
  br label %27

21:                                               ; preds = %1
  %22 = load %struct.sunrpc_net*, %struct.sunrpc_net** %4, align 8
  %23 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %22, i32 0, i32 1
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.sunrpc_net*, %struct.sunrpc_net** %4, align 8
  %26 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 4
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %21, %16
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.sunrpc_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @rpc_mkpipe_data(i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
