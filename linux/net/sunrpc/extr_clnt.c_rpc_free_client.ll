; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_free_client.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_free_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32, i32, i32, i32*, %struct.rpc_clnt*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"RPC:       destroying %s client for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_clnt* (%struct.rpc_clnt*)* @rpc_free_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_clnt* @rpc_free_client(%struct.rpc_clnt* %0) #0 {
  %2 = alloca %struct.rpc_clnt*, align 8
  %3 = alloca %struct.rpc_clnt*, align 8
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %2, align 8
  store %struct.rpc_clnt* null, %struct.rpc_clnt** %3, align 8
  %4 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %5 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %4, i32 0, i32 5
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %10 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.TYPE_4__* @rcu_dereference(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dprintk_rcu(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %14)
  %16 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %17 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %16, i32 0, i32 4
  %18 = load %struct.rpc_clnt*, %struct.rpc_clnt** %17, align 8
  %19 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %20 = icmp ne %struct.rpc_clnt* %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %23 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %22, i32 0, i32 4
  %24 = load %struct.rpc_clnt*, %struct.rpc_clnt** %23, align 8
  store %struct.rpc_clnt* %24, %struct.rpc_clnt** %3, align 8
  br label %25

25:                                               ; preds = %21, %1
  %26 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %27 = call i32 @rpc_clnt_debugfs_unregister(%struct.rpc_clnt* %26)
  %28 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %29 = call i32 @rpc_clnt_remove_pipedir(%struct.rpc_clnt* %28)
  %30 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %31 = call i32 @rpc_unregister_client(%struct.rpc_clnt* %30)
  %32 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %33 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @rpc_free_iostats(i32* %34)
  %36 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %37 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %36, i32 0, i32 3
  store i32* null, i32** %37, align 8
  %38 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %39 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @rcu_dereference_raw(i32 %40)
  %42 = call i32 @xprt_put(i32 %41)
  %43 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %44 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %43, i32 0, i32 1
  %45 = call i32 @xprt_iter_destroy(i32* %44)
  %46 = call i32 (...) @rpciod_down()
  %47 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %48 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @put_cred(i32 %49)
  %51 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %52 = call i32 @rpc_free_clid(%struct.rpc_clnt* %51)
  %53 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %54 = call i32 @kfree(%struct.rpc_clnt* %53)
  %55 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  ret %struct.rpc_clnt* %55
}

declare dso_local i32 @dprintk_rcu(i8*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @rcu_dereference(i32) #1

declare dso_local i32 @rpc_clnt_debugfs_unregister(%struct.rpc_clnt*) #1

declare dso_local i32 @rpc_clnt_remove_pipedir(%struct.rpc_clnt*) #1

declare dso_local i32 @rpc_unregister_client(%struct.rpc_clnt*) #1

declare dso_local i32 @rpc_free_iostats(i32*) #1

declare dso_local i32 @xprt_put(i32) #1

declare dso_local i32 @rcu_dereference_raw(i32) #1

declare dso_local i32 @xprt_iter_destroy(i32*) #1

declare dso_local i32 @rpciod_down(...) #1

declare dso_local i32 @put_cred(i32) #1

declare dso_local i32 @rpc_free_clid(%struct.rpc_clnt*) #1

declare dso_local i32 @kfree(%struct.rpc_clnt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
