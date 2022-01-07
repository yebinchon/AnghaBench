; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_listen_prfx_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_listen_prfx_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { %struct.socket* }
%struct.socket = type { i32 }
%struct.smc_clc_msg_proposal = type { i32 }
%struct.smc_clc_msg_proposal_prefix = type { i32 }

@SMC_CLC_DECL_DIFFPREFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_sock*, %struct.smc_clc_msg_proposal*)* @smc_listen_prfx_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_listen_prfx_check(%struct.smc_sock* %0, %struct.smc_clc_msg_proposal* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smc_sock*, align 8
  %5 = alloca %struct.smc_clc_msg_proposal*, align 8
  %6 = alloca %struct.smc_clc_msg_proposal_prefix*, align 8
  %7 = alloca %struct.socket*, align 8
  store %struct.smc_sock* %0, %struct.smc_sock** %4, align 8
  store %struct.smc_clc_msg_proposal* %1, %struct.smc_clc_msg_proposal** %5, align 8
  %8 = load %struct.smc_sock*, %struct.smc_sock** %4, align 8
  %9 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %8, i32 0, i32 0
  %10 = load %struct.socket*, %struct.socket** %9, align 8
  store %struct.socket* %10, %struct.socket** %7, align 8
  %11 = load %struct.smc_clc_msg_proposal*, %struct.smc_clc_msg_proposal** %5, align 8
  %12 = call %struct.smc_clc_msg_proposal_prefix* @smc_clc_proposal_get_prefix(%struct.smc_clc_msg_proposal* %11)
  store %struct.smc_clc_msg_proposal_prefix* %12, %struct.smc_clc_msg_proposal_prefix** %6, align 8
  %13 = load %struct.socket*, %struct.socket** %7, align 8
  %14 = load %struct.smc_clc_msg_proposal_prefix*, %struct.smc_clc_msg_proposal_prefix** %6, align 8
  %15 = call i64 @smc_clc_prfx_match(%struct.socket* %13, %struct.smc_clc_msg_proposal_prefix* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @SMC_CLC_DECL_DIFFPREFIX, align 4
  store i32 %18, i32* %3, align 4
  br label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %17
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local %struct.smc_clc_msg_proposal_prefix* @smc_clc_proposal_get_prefix(%struct.smc_clc_msg_proposal*) #1

declare dso_local i64 @smc_clc_prfx_match(%struct.socket*, %struct.smc_clc_msg_proposal_prefix*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
