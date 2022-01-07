; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_conn_save_peer_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_conn_save_peer_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.smc_clc_msg_accept_confirm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smc_sock*, %struct.smc_clc_msg_accept_confirm*)* @smc_conn_save_peer_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_conn_save_peer_info(%struct.smc_sock* %0, %struct.smc_clc_msg_accept_confirm* %1) #0 {
  %3 = alloca %struct.smc_sock*, align 8
  %4 = alloca %struct.smc_clc_msg_accept_confirm*, align 8
  store %struct.smc_sock* %0, %struct.smc_sock** %3, align 8
  store %struct.smc_clc_msg_accept_confirm* %1, %struct.smc_clc_msg_accept_confirm** %4, align 8
  %5 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %6 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %14 = load %struct.smc_clc_msg_accept_confirm*, %struct.smc_clc_msg_accept_confirm** %4, align 8
  %15 = call i32 @smcd_conn_save_peer_info(%struct.smc_sock* %13, %struct.smc_clc_msg_accept_confirm* %14)
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %18 = load %struct.smc_clc_msg_accept_confirm*, %struct.smc_clc_msg_accept_confirm** %4, align 8
  %19 = call i32 @smcr_conn_save_peer_info(%struct.smc_sock* %17, %struct.smc_clc_msg_accept_confirm* %18)
  br label %20

20:                                               ; preds = %16, %12
  ret void
}

declare dso_local i32 @smcd_conn_save_peer_info(%struct.smc_sock*, %struct.smc_clc_msg_accept_confirm*) #1

declare dso_local i32 @smcr_conn_save_peer_info(%struct.smc_sock*, %struct.smc_clc_msg_accept_confirm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
