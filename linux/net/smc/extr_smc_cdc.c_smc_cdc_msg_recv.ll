; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_cdc.c_smc_cdc_msg_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_cdc.c_smc_cdc_msg_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { i32 }
%struct.smc_cdc_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smc_sock*, %struct.smc_cdc_msg*)* @smc_cdc_msg_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_cdc_msg_recv(%struct.smc_sock* %0, %struct.smc_cdc_msg* %1) #0 {
  %3 = alloca %struct.smc_sock*, align 8
  %4 = alloca %struct.smc_cdc_msg*, align 8
  store %struct.smc_sock* %0, %struct.smc_sock** %3, align 8
  store %struct.smc_cdc_msg* %1, %struct.smc_cdc_msg** %4, align 8
  %5 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %6 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %5, i32 0, i32 0
  %7 = call i32 @sock_hold(i32* %6)
  %8 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %9 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %8, i32 0, i32 0
  %10 = call i32 @bh_lock_sock(i32* %9)
  %11 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %12 = load %struct.smc_cdc_msg*, %struct.smc_cdc_msg** %4, align 8
  %13 = call i32 @smc_cdc_msg_recv_action(%struct.smc_sock* %11, %struct.smc_cdc_msg* %12)
  %14 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %15 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %14, i32 0, i32 0
  %16 = call i32 @bh_unlock_sock(i32* %15)
  %17 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %18 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %17, i32 0, i32 0
  %19 = call i32 @sock_put(i32* %18)
  ret void
}

declare dso_local i32 @sock_hold(i32*) #1

declare dso_local i32 @bh_lock_sock(i32*) #1

declare dso_local i32 @smc_cdc_msg_recv_action(%struct.smc_sock*, %struct.smc_cdc_msg*) #1

declare dso_local i32 @bh_unlock_sock(i32*) #1

declare dso_local i32 @sock_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
