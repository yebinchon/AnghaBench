; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_auth.c_rpcauth_bind_machine_cred.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_auth.c_rpcauth_bind_machine_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.rpc_cred = type { i32 }
%struct.rpc_task = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.rpc_auth* }
%struct.rpc_auth = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.rpc_cred* (%struct.rpc_auth*, %struct.auth_cred*, i32)* }
%struct.auth_cred = type { i32, i32 }

@init_task = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_cred* (%struct.rpc_task*, i32)* @rpcauth_bind_machine_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_cred* @rpcauth_bind_machine_cred(%struct.rpc_task* %0, i32 %1) #0 {
  %3 = alloca %struct.rpc_cred*, align 8
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_auth*, align 8
  %7 = alloca %struct.auth_cred, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %9 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.rpc_auth*, %struct.rpc_auth** %11, align 8
  store %struct.rpc_auth* %12, %struct.rpc_auth** %6, align 8
  %13 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %7, i32 0, i32 0
  %14 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %15 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %13, align 4
  %19 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %7, i32 0, i32 1
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @init_task, i32 0, i32 0), align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store %struct.rpc_cred* null, %struct.rpc_cred** %3, align 8
  br label %34

25:                                               ; preds = %2
  %26 = load %struct.rpc_auth*, %struct.rpc_auth** %6, align 8
  %27 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.rpc_cred* (%struct.rpc_auth*, %struct.auth_cred*, i32)*, %struct.rpc_cred* (%struct.rpc_auth*, %struct.auth_cred*, i32)** %29, align 8
  %31 = load %struct.rpc_auth*, %struct.rpc_auth** %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call %struct.rpc_cred* %30(%struct.rpc_auth* %31, %struct.auth_cred* %7, i32 %32)
  store %struct.rpc_cred* %33, %struct.rpc_cred** %3, align 8
  br label %34

34:                                               ; preds = %25, %24
  %35 = load %struct.rpc_cred*, %struct.rpc_cred** %3, align 8
  ret %struct.rpc_cred* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
