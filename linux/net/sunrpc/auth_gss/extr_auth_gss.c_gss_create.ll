; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_auth = type { i32 }
%struct.rpc_auth_create_args = type { i32 }
%struct.rpc_clnt = type { %struct.TYPE_2__, %struct.rpc_clnt* }
%struct.TYPE_2__ = type { i32 }
%struct.gss_auth = type { %struct.rpc_auth }
%struct.rpc_xprt_switch = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_auth* (%struct.rpc_auth_create_args*, %struct.rpc_clnt*)* @gss_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_auth* @gss_create(%struct.rpc_auth_create_args* %0, %struct.rpc_clnt* %1) #0 {
  %3 = alloca %struct.rpc_auth*, align 8
  %4 = alloca %struct.rpc_auth_create_args*, align 8
  %5 = alloca %struct.rpc_clnt*, align 8
  %6 = alloca %struct.gss_auth*, align 8
  %7 = alloca %struct.rpc_xprt_switch*, align 8
  %8 = alloca %struct.rpc_clnt*, align 8
  store %struct.rpc_auth_create_args* %0, %struct.rpc_auth_create_args** %4, align 8
  store %struct.rpc_clnt* %1, %struct.rpc_clnt** %5, align 8
  %9 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %10 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.rpc_xprt_switch* @rcu_access_pointer(i32 %12)
  store %struct.rpc_xprt_switch* %13, %struct.rpc_xprt_switch** %7, align 8
  br label %14

14:                                               ; preds = %32, %2
  %15 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %16 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %17 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %16, i32 0, i32 1
  %18 = load %struct.rpc_clnt*, %struct.rpc_clnt** %17, align 8
  %19 = icmp ne %struct.rpc_clnt* %15, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %22 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %21, i32 0, i32 1
  %23 = load %struct.rpc_clnt*, %struct.rpc_clnt** %22, align 8
  store %struct.rpc_clnt* %23, %struct.rpc_clnt** %8, align 8
  %24 = load %struct.rpc_clnt*, %struct.rpc_clnt** %8, align 8
  %25 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.rpc_xprt_switch* @rcu_access_pointer(i32 %27)
  %29 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %7, align 8
  %30 = icmp ne %struct.rpc_xprt_switch* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %34

32:                                               ; preds = %20
  %33 = load %struct.rpc_clnt*, %struct.rpc_clnt** %8, align 8
  store %struct.rpc_clnt* %33, %struct.rpc_clnt** %5, align 8
  br label %14

34:                                               ; preds = %31, %14
  %35 = load %struct.rpc_auth_create_args*, %struct.rpc_auth_create_args** %4, align 8
  %36 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %37 = call %struct.gss_auth* @gss_create_hashed(%struct.rpc_auth_create_args* %35, %struct.rpc_clnt* %36)
  store %struct.gss_auth* %37, %struct.gss_auth** %6, align 8
  %38 = load %struct.gss_auth*, %struct.gss_auth** %6, align 8
  %39 = call i64 @IS_ERR(%struct.gss_auth* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.gss_auth*, %struct.gss_auth** %6, align 8
  %43 = call %struct.rpc_auth* @ERR_CAST(%struct.gss_auth* %42)
  store %struct.rpc_auth* %43, %struct.rpc_auth** %3, align 8
  br label %47

44:                                               ; preds = %34
  %45 = load %struct.gss_auth*, %struct.gss_auth** %6, align 8
  %46 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %45, i32 0, i32 0
  store %struct.rpc_auth* %46, %struct.rpc_auth** %3, align 8
  br label %47

47:                                               ; preds = %44, %41
  %48 = load %struct.rpc_auth*, %struct.rpc_auth** %3, align 8
  ret %struct.rpc_auth* %48
}

declare dso_local %struct.rpc_xprt_switch* @rcu_access_pointer(i32) #1

declare dso_local %struct.gss_auth* @gss_create_hashed(%struct.rpc_auth_create_args*, %struct.rpc_clnt*) #1

declare dso_local i64 @IS_ERR(%struct.gss_auth*) #1

declare dso_local %struct.rpc_auth* @ERR_CAST(%struct.gss_auth*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
