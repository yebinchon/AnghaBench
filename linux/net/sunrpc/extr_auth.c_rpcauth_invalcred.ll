; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_auth.c_rpcauth_invalcred.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_auth.c_rpcauth_invalcred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rpc_cred* }
%struct.rpc_cred = type { i32 }

@RPCAUTH_CRED_UPTODATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpcauth_invalcred(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca %struct.rpc_cred*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %4 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %5 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.rpc_cred*, %struct.rpc_cred** %7, align 8
  store %struct.rpc_cred* %8, %struct.rpc_cred** %3, align 8
  %9 = load %struct.rpc_cred*, %struct.rpc_cred** %3, align 8
  %10 = icmp ne %struct.rpc_cred* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @RPCAUTH_CRED_UPTODATE, align 4
  %13 = load %struct.rpc_cred*, %struct.rpc_cred** %3, align 8
  %14 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %13, i32 0, i32 0
  %15 = call i32 @clear_bit(i32 %12, i32* %14)
  br label %16

16:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
