; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_localaddr.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_localaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.rpc_xprt = type { i64, i32, i32 }
%struct.net = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_localaddr(%struct.rpc_clnt* %0, %struct.sockaddr* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_clnt*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sockaddr_storage, align 4
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.rpc_xprt*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  store %struct.sockaddr* %14, %struct.sockaddr** %9, align 8
  %15 = call i32 (...) @rcu_read_lock()
  %16 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %17 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.rpc_xprt* @rcu_dereference(i32 %18)
  store %struct.rpc_xprt* %19, %struct.rpc_xprt** %10, align 8
  %20 = load %struct.rpc_xprt*, %struct.rpc_xprt** %10, align 8
  %21 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %12, align 8
  %23 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %24 = load %struct.rpc_xprt*, %struct.rpc_xprt** %10, align 8
  %25 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %24, i32 0, i32 2
  %26 = load i64, i64* %12, align 8
  %27 = call i32 @memcpy(%struct.sockaddr* %23, i32* %25, i64 %26)
  %28 = load %struct.rpc_xprt*, %struct.rpc_xprt** %10, align 8
  %29 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.net* @get_net(i32 %30)
  store %struct.net* %31, %struct.net** %11, align 8
  %32 = call i32 (...) @rcu_read_unlock()
  %33 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %34 = call i32 @rpc_set_port(%struct.sockaddr* %33, i32 0)
  %35 = load %struct.net*, %struct.net** %11, align 8
  %36 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %39 = call i32 @rpc_sockname(%struct.net* %35, %struct.sockaddr* %36, i64 %37, %struct.sockaddr* %38)
  store i32 %39, i32* %13, align 4
  %40 = load %struct.net*, %struct.net** %11, align 8
  %41 = call i32 @put_net(%struct.net* %40)
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %3
  %45 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %46 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @rpc_anyaddr(i32 %47, %struct.sockaddr* %48, i64 %49)
  store i32 %50, i32* %4, align 4
  br label %52

51:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %44
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.rpc_xprt* @rcu_dereference(i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, i32*, i64) #1

declare dso_local %struct.net* @get_net(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @rpc_set_port(%struct.sockaddr*, i32) #1

declare dso_local i32 @rpc_sockname(%struct.net*, %struct.sockaddr*, i64, %struct.sockaddr*) #1

declare dso_local i32 @put_net(%struct.net*) #1

declare dso_local i32 @rpc_anyaddr(i32, %struct.sockaddr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
