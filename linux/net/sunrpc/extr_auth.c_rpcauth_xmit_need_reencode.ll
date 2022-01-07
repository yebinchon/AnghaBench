; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_auth.c_rpcauth_xmit_need_reencode.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_auth.c_rpcauth_xmit_need_reencode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.rpc_cred* }
%struct.rpc_cred = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcauth_xmit_need_reencode(%struct.rpc_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca %struct.rpc_cred*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  %5 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %6 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.rpc_cred*, %struct.rpc_cred** %8, align 8
  store %struct.rpc_cred* %9, %struct.rpc_cred** %4, align 8
  %10 = load %struct.rpc_cred*, %struct.rpc_cred** %4, align 8
  %11 = icmp ne %struct.rpc_cred* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.rpc_cred*, %struct.rpc_cred** %4, align 8
  %14 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.rpc_task*)**
  %18 = load i32 (%struct.rpc_task*)*, i32 (%struct.rpc_task*)** %17, align 8
  %19 = icmp ne i32 (%struct.rpc_task*)* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %30

21:                                               ; preds = %12
  %22 = load %struct.rpc_cred*, %struct.rpc_cred** %4, align 8
  %23 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to i32 (%struct.rpc_task*)**
  %27 = load i32 (%struct.rpc_task*)*, i32 (%struct.rpc_task*)** %26, align 8
  %28 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %29 = call i32 %27(%struct.rpc_task* %28)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %21, %20
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
