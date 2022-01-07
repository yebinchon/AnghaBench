; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_unwrap_resp_auth.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_unwrap_resp_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_cred = type { %struct.rpc_auth* }
%struct.rpc_auth = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_cred*)* @gss_unwrap_resp_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_unwrap_resp_auth(%struct.rpc_cred* %0) #0 {
  %2 = alloca %struct.rpc_cred*, align 8
  %3 = alloca %struct.rpc_auth*, align 8
  store %struct.rpc_cred* %0, %struct.rpc_cred** %2, align 8
  %4 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %5 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %4, i32 0, i32 0
  %6 = load %struct.rpc_auth*, %struct.rpc_auth** %5, align 8
  store %struct.rpc_auth* %6, %struct.rpc_auth** %3, align 8
  %7 = load %struct.rpc_auth*, %struct.rpc_auth** %3, align 8
  %8 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.rpc_auth*, %struct.rpc_auth** %3, align 8
  %11 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load %struct.rpc_auth*, %struct.rpc_auth** %3, align 8
  %13 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.rpc_auth*, %struct.rpc_auth** %3, align 8
  %16 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
