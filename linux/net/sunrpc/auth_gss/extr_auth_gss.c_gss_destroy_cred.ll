; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_destroy_cred.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_destroy_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_cred = type { i32 }

@RPCAUTH_CRED_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_cred*)* @gss_destroy_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gss_destroy_cred(%struct.rpc_cred* %0) #0 {
  %2 = alloca %struct.rpc_cred*, align 8
  store %struct.rpc_cred* %0, %struct.rpc_cred** %2, align 8
  %3 = load i32, i32* @RPCAUTH_CRED_UPTODATE, align 4
  %4 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %5 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %4, i32 0, i32 0
  %6 = call i64 @test_and_clear_bit(i32 %3, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %10 = call i32 @gss_send_destroy_context(%struct.rpc_cred* %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %13 = call i32 @gss_destroy_nullcred(%struct.rpc_cred* %12)
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @gss_send_destroy_context(%struct.rpc_cred*) #1

declare dso_local i32 @gss_destroy_nullcred(%struct.rpc_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
