; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_rx_confirm_rkey_cont.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_rx_confirm_rkey_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link = type { i32 }
%struct.smc_llc_msg_confirm_rkey_cont = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SMC_LLC_FLAG_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smc_link*, %struct.smc_llc_msg_confirm_rkey_cont*)* @smc_llc_rx_confirm_rkey_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_llc_rx_confirm_rkey_cont(%struct.smc_link* %0, %struct.smc_llc_msg_confirm_rkey_cont* %1) #0 {
  %3 = alloca %struct.smc_link*, align 8
  %4 = alloca %struct.smc_llc_msg_confirm_rkey_cont*, align 8
  store %struct.smc_link* %0, %struct.smc_link** %3, align 8
  store %struct.smc_llc_msg_confirm_rkey_cont* %1, %struct.smc_llc_msg_confirm_rkey_cont** %4, align 8
  %5 = load %struct.smc_llc_msg_confirm_rkey_cont*, %struct.smc_llc_msg_confirm_rkey_cont** %4, align 8
  %6 = getelementptr inbounds %struct.smc_llc_msg_confirm_rkey_cont, %struct.smc_llc_msg_confirm_rkey_cont* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SMC_LLC_FLAG_RESP, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %23

13:                                               ; preds = %2
  %14 = load i32, i32* @SMC_LLC_FLAG_RESP, align 4
  %15 = load %struct.smc_llc_msg_confirm_rkey_cont*, %struct.smc_llc_msg_confirm_rkey_cont** %4, align 8
  %16 = getelementptr inbounds %struct.smc_llc_msg_confirm_rkey_cont, %struct.smc_llc_msg_confirm_rkey_cont* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %14
  store i32 %19, i32* %17, align 4
  %20 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %21 = load %struct.smc_llc_msg_confirm_rkey_cont*, %struct.smc_llc_msg_confirm_rkey_cont** %4, align 8
  %22 = call i32 @smc_llc_send_message(%struct.smc_link* %20, %struct.smc_llc_msg_confirm_rkey_cont* %21, i32 4)
  br label %23

23:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @smc_llc_send_message(%struct.smc_link*, %struct.smc_llc_msg_confirm_rkey_cont*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
