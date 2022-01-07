; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpcb_clnt.c_rpcb_put_local.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpcb_clnt.c_rpcb_put_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sunrpc_net = type { i64, i32, %struct.rpc_clnt*, %struct.rpc_clnt* }
%struct.rpc_clnt = type { i32 }

@sunrpc_net_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpcb_put_local(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca %struct.sunrpc_net*, align 8
  %4 = alloca %struct.rpc_clnt*, align 8
  %5 = alloca %struct.rpc_clnt*, align 8
  %6 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %2, align 8
  %7 = load %struct.net*, %struct.net** %2, align 8
  %8 = load i32, i32* @sunrpc_net_id, align 4
  %9 = call %struct.sunrpc_net* @net_generic(%struct.net* %7, i32 %8)
  store %struct.sunrpc_net* %9, %struct.sunrpc_net** %3, align 8
  %10 = load %struct.sunrpc_net*, %struct.sunrpc_net** %3, align 8
  %11 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %10, i32 0, i32 3
  %12 = load %struct.rpc_clnt*, %struct.rpc_clnt** %11, align 8
  store %struct.rpc_clnt* %12, %struct.rpc_clnt** %4, align 8
  %13 = load %struct.sunrpc_net*, %struct.sunrpc_net** %3, align 8
  %14 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %13, i32 0, i32 2
  %15 = load %struct.rpc_clnt*, %struct.rpc_clnt** %14, align 8
  store %struct.rpc_clnt* %15, %struct.rpc_clnt** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.sunrpc_net*, %struct.sunrpc_net** %3, align 8
  %17 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %16, i32 0, i32 1
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.sunrpc_net*, %struct.sunrpc_net** %3, align 8
  %20 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %1
  %24 = load %struct.sunrpc_net*, %struct.sunrpc_net** %3, align 8
  %25 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %25, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.sunrpc_net*, %struct.sunrpc_net** %3, align 8
  %31 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %30, i32 0, i32 3
  store %struct.rpc_clnt* null, %struct.rpc_clnt** %31, align 8
  %32 = load %struct.sunrpc_net*, %struct.sunrpc_net** %3, align 8
  %33 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %32, i32 0, i32 2
  store %struct.rpc_clnt* null, %struct.rpc_clnt** %33, align 8
  br label %34

34:                                               ; preds = %29, %23
  %35 = load %struct.sunrpc_net*, %struct.sunrpc_net** %3, align 8
  %36 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %34, %1
  %42 = load %struct.sunrpc_net*, %struct.sunrpc_net** %3, align 8
  %43 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %42, i32 0, i32 1
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %49 = icmp ne %struct.rpc_clnt* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %52 = call i32 @rpc_shutdown_client(%struct.rpc_clnt* %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %55 = icmp ne %struct.rpc_clnt* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %58 = call i32 @rpc_shutdown_client(%struct.rpc_clnt* %57)
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59, %41
  ret void
}

declare dso_local %struct.sunrpc_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rpc_shutdown_client(%struct.rpc_clnt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
