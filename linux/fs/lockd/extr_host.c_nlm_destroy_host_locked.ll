; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_host.c_nlm_destroy_host_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_host.c_nlm_destroy_host_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_host = type { i32, %struct.rpc_clnt*, i32, i32, i32, i32 }
%struct.rpc_clnt = type { i32 }
%struct.lockd_net = type { i32 }

@lockd_net_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"lockd: destroy host %s\0A\00", align 1
@nrhosts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlm_host*)* @nlm_destroy_host_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_destroy_host_locked(%struct.nlm_host* %0) #0 {
  %2 = alloca %struct.nlm_host*, align 8
  %3 = alloca %struct.rpc_clnt*, align 8
  %4 = alloca %struct.lockd_net*, align 8
  store %struct.nlm_host* %0, %struct.nlm_host** %2, align 8
  %5 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %6 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @lockd_net_id, align 4
  %9 = call %struct.lockd_net* @net_generic(i32 %7, i32 %8)
  store %struct.lockd_net* %9, %struct.lockd_net** %4, align 8
  %10 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %11 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %15 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %14, i32 0, i32 3
  %16 = call i32 @hlist_del_init(i32* %15)
  %17 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %18 = call i32 @nsm_unmonitor(%struct.nlm_host* %17)
  %19 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %20 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @nsm_release(i32 %21)
  %23 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %24 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %23, i32 0, i32 1
  %25 = load %struct.rpc_clnt*, %struct.rpc_clnt** %24, align 8
  store %struct.rpc_clnt* %25, %struct.rpc_clnt** %3, align 8
  %26 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %27 = icmp ne %struct.rpc_clnt* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %30 = call i32 @rpc_shutdown_client(%struct.rpc_clnt* %29)
  br label %31

31:                                               ; preds = %28, %1
  %32 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %33 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @put_cred(i32 %34)
  %36 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %37 = call i32 @kfree(%struct.nlm_host* %36)
  %38 = load %struct.lockd_net*, %struct.lockd_net** %4, align 8
  %39 = getelementptr inbounds %struct.lockd_net, %struct.lockd_net* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @nrhosts, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* @nrhosts, align 4
  ret void
}

declare dso_local %struct.lockd_net* @net_generic(i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @hlist_del_init(i32*) #1

declare dso_local i32 @nsm_unmonitor(%struct.nlm_host*) #1

declare dso_local i32 @nsm_release(i32) #1

declare dso_local i32 @rpc_shutdown_client(%struct.rpc_clnt*) #1

declare dso_local i32 @put_cred(i32) #1

declare dso_local i32 @kfree(%struct.nlm_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
