; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_auth_unix.c_unx_lookup_cred.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_auth_unix.c_unx_lookup_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_cred = type { i64 }
%struct.rpc_auth = type { i32 }
%struct.auth_cred = type { i32 }

@unix_pool = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@unix_credops = common dso_local global i32 0, align 4
@RPCAUTH_CRED_UPTODATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_cred* (%struct.rpc_auth*, %struct.auth_cred*, i32)* @unx_lookup_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_cred* @unx_lookup_cred(%struct.rpc_auth* %0, %struct.auth_cred* %1, i32 %2) #0 {
  %4 = alloca %struct.rpc_auth*, align 8
  %5 = alloca %struct.auth_cred*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpc_cred*, align 8
  store %struct.rpc_auth* %0, %struct.rpc_auth** %4, align 8
  store %struct.auth_cred* %1, %struct.auth_cred** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @unix_pool, align 4
  %9 = load i32, i32* @GFP_NOFS, align 4
  %10 = call %struct.rpc_cred* @mempool_alloc(i32 %8, i32 %9)
  store %struct.rpc_cred* %10, %struct.rpc_cred** %7, align 8
  %11 = load %struct.rpc_cred*, %struct.rpc_cred** %7, align 8
  %12 = load %struct.auth_cred*, %struct.auth_cred** %5, align 8
  %13 = load %struct.rpc_auth*, %struct.rpc_auth** %4, align 8
  %14 = call i32 @rpcauth_init_cred(%struct.rpc_cred* %11, %struct.auth_cred* %12, %struct.rpc_auth* %13, i32* @unix_credops)
  %15 = load i64, i64* @RPCAUTH_CRED_UPTODATE, align 8
  %16 = shl i64 1, %15
  %17 = load %struct.rpc_cred*, %struct.rpc_cred** %7, align 8
  %18 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.rpc_cred*, %struct.rpc_cred** %7, align 8
  ret %struct.rpc_cred* %19
}

declare dso_local %struct.rpc_cred* @mempool_alloc(i32, i32) #1

declare dso_local i32 @rpcauth_init_cred(%struct.rpc_cred*, %struct.auth_cred*, %struct.rpc_auth*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
