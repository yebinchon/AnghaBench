; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_auth_unix.c_unx_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_auth_unix.c_unx_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_auth = type { i32 }
%struct.rpc_auth_create_args = type { i32 }
%struct.rpc_clnt = type { i32 }

@unix_auth = common dso_local global %struct.rpc_auth zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_auth* (%struct.rpc_auth_create_args*, %struct.rpc_clnt*)* @unx_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_auth* @unx_create(%struct.rpc_auth_create_args* %0, %struct.rpc_clnt* %1) #0 {
  %3 = alloca %struct.rpc_auth_create_args*, align 8
  %4 = alloca %struct.rpc_clnt*, align 8
  store %struct.rpc_auth_create_args* %0, %struct.rpc_auth_create_args** %3, align 8
  store %struct.rpc_clnt* %1, %struct.rpc_clnt** %4, align 8
  %5 = call i32 @refcount_inc(i32* getelementptr inbounds (%struct.rpc_auth, %struct.rpc_auth* @unix_auth, i32 0, i32 0))
  ret %struct.rpc_auth* @unix_auth
}

declare dso_local i32 @refcount_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
