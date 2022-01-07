; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_auth.c_rpcauth_stringify_acceptor.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_auth.c_rpcauth_stringify_acceptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_cred = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpcauth_stringify_acceptor(%struct.rpc_cred* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rpc_cred*, align 8
  store %struct.rpc_cred* %0, %struct.rpc_cred** %3, align 8
  %4 = load %struct.rpc_cred*, %struct.rpc_cred** %3, align 8
  %5 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = bitcast {}** %7 to i8* (%struct.rpc_cred*)**
  %9 = load i8* (%struct.rpc_cred*)*, i8* (%struct.rpc_cred*)** %8, align 8
  %10 = icmp ne i8* (%struct.rpc_cred*)* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %21

12:                                               ; preds = %1
  %13 = load %struct.rpc_cred*, %struct.rpc_cred** %3, align 8
  %14 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i8* (%struct.rpc_cred*)**
  %18 = load i8* (%struct.rpc_cred*)*, i8* (%struct.rpc_cred*)** %17, align 8
  %19 = load %struct.rpc_cred*, %struct.rpc_cred** %3, align 8
  %20 = call i8* %18(%struct.rpc_cred* %19)
  store i8* %20, i8** %2, align 8
  br label %21

21:                                               ; preds = %12, %11
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
