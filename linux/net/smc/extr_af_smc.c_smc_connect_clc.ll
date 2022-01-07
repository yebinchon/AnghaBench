; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_connect_clc.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_connect_clc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { i32 }
%struct.smc_clc_msg_accept_confirm = type { i32 }
%struct.smc_init_info = type { i32 }

@SMC_CLC_ACCEPT = common dso_local global i32 0, align 4
@CLC_WAIT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_sock*, i32, %struct.smc_clc_msg_accept_confirm*, %struct.smc_init_info*)* @smc_connect_clc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_connect_clc(%struct.smc_sock* %0, i32 %1, %struct.smc_clc_msg_accept_confirm* %2, %struct.smc_init_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smc_sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.smc_clc_msg_accept_confirm*, align 8
  %9 = alloca %struct.smc_init_info*, align 8
  %10 = alloca i32, align 4
  store %struct.smc_sock* %0, %struct.smc_sock** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.smc_clc_msg_accept_confirm* %2, %struct.smc_clc_msg_accept_confirm** %8, align 8
  store %struct.smc_init_info* %3, %struct.smc_init_info** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.smc_sock*, %struct.smc_sock** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.smc_init_info*, %struct.smc_init_info** %9, align 8
  %14 = call i32 @smc_clc_send_proposal(%struct.smc_sock* %11, i32 %12, %struct.smc_init_info* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %5, align 4
  br label %25

19:                                               ; preds = %4
  %20 = load %struct.smc_sock*, %struct.smc_sock** %6, align 8
  %21 = load %struct.smc_clc_msg_accept_confirm*, %struct.smc_clc_msg_accept_confirm** %8, align 8
  %22 = load i32, i32* @SMC_CLC_ACCEPT, align 4
  %23 = load i32, i32* @CLC_WAIT_TIME, align 4
  %24 = call i32 @smc_clc_wait_msg(%struct.smc_sock* %20, %struct.smc_clc_msg_accept_confirm* %21, i32 4, i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %19, %17
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @smc_clc_send_proposal(%struct.smc_sock*, i32, %struct.smc_init_info*) #1

declare dso_local i32 @smc_clc_wait_msg(%struct.smc_sock*, %struct.smc_clc_msg_accept_confirm*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
