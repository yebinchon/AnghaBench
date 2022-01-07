; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpcb_clnt.c_rpcb_v4_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpcb_clnt.c_rpcb_v4_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sockaddr = type { i32 }
%struct.rpcbind_args = type { i8*, i32, i32, i32 }
%struct.rpc_message = type { %struct.rpcbind_args* }
%struct.sunrpc_net = type { i32* }

@RPCB_OWNER_STRING = common dso_local global i32 0, align 4
@sunrpc_net_id = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcb_v4_register(%struct.net* %0, i32 %1, i32 %2, %struct.sockaddr* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.rpcbind_args, align 8
  %13 = alloca %struct.rpc_message, align 8
  %14 = alloca %struct.sunrpc_net*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.sockaddr* %3, %struct.sockaddr** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %12, i32 0, i32 0
  %16 = load i8*, i8** %11, align 8
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %12, i32 0, i32 1
  %18 = load i32, i32* @RPCB_OWNER_STRING, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %12, i32 0, i32 2
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %12, i32 0, i32 3
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 0
  store %struct.rpcbind_args* %12, %struct.rpcbind_args** %23, align 8
  %24 = load %struct.net*, %struct.net** %7, align 8
  %25 = load i32, i32* @sunrpc_net_id, align 4
  %26 = call %struct.sunrpc_net* @net_generic(%struct.net* %24, i32 %25)
  store %struct.sunrpc_net* %26, %struct.sunrpc_net** %14, align 8
  %27 = load %struct.sunrpc_net*, %struct.sunrpc_net** %14, align 8
  %28 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load i32, i32* @EPROTONOSUPPORT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %55

34:                                               ; preds = %5
  %35 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %36 = icmp eq %struct.sockaddr* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.sunrpc_net*, %struct.sunrpc_net** %14, align 8
  %39 = call i32 @rpcb_unregister_all_protofamilies(%struct.sunrpc_net* %38, %struct.rpc_message* %13)
  store i32 %39, i32* %6, align 4
  br label %55

40:                                               ; preds = %34
  %41 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %42 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %52 [
    i32 129, label %44
    i32 128, label %48
  ]

44:                                               ; preds = %40
  %45 = load %struct.sunrpc_net*, %struct.sunrpc_net** %14, align 8
  %46 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %47 = call i32 @rpcb_register_inet4(%struct.sunrpc_net* %45, %struct.sockaddr* %46, %struct.rpc_message* %13)
  store i32 %47, i32* %6, align 4
  br label %55

48:                                               ; preds = %40
  %49 = load %struct.sunrpc_net*, %struct.sunrpc_net** %14, align 8
  %50 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %51 = call i32 @rpcb_register_inet6(%struct.sunrpc_net* %49, %struct.sockaddr* %50, %struct.rpc_message* %13)
  store i32 %51, i32* %6, align 4
  br label %55

52:                                               ; preds = %40
  %53 = load i32, i32* @EAFNOSUPPORT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %52, %48, %44, %37, %31
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local %struct.sunrpc_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @rpcb_unregister_all_protofamilies(%struct.sunrpc_net*, %struct.rpc_message*) #1

declare dso_local i32 @rpcb_register_inet4(%struct.sunrpc_net*, %struct.sockaddr*, %struct.rpc_message*) #1

declare dso_local i32 @rpcb_register_inet6(%struct.sunrpc_net*, %struct.sockaddr*, %struct.rpc_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
