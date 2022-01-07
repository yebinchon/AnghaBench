; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_clc.h_smc_clc_proposal_get_prefix.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_clc.h_smc_clc_proposal_get_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_clc_msg_proposal_prefix = type { i32 }
%struct.smc_clc_msg_proposal = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.smc_clc_msg_proposal_prefix* (%struct.smc_clc_msg_proposal*)* @smc_clc_proposal_get_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.smc_clc_msg_proposal_prefix* @smc_clc_proposal_get_prefix(%struct.smc_clc_msg_proposal* %0) #0 {
  %2 = alloca %struct.smc_clc_msg_proposal*, align 8
  store %struct.smc_clc_msg_proposal* %0, %struct.smc_clc_msg_proposal** %2, align 8
  %3 = load %struct.smc_clc_msg_proposal*, %struct.smc_clc_msg_proposal** %2, align 8
  %4 = bitcast %struct.smc_clc_msg_proposal* %3 to i32*
  %5 = getelementptr inbounds i32, i32* %4, i64 4
  %6 = load %struct.smc_clc_msg_proposal*, %struct.smc_clc_msg_proposal** %2, align 8
  %7 = getelementptr inbounds %struct.smc_clc_msg_proposal, %struct.smc_clc_msg_proposal* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ntohs(i32 %8)
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %5, i64 %10
  %12 = bitcast i32* %11 to %struct.smc_clc_msg_proposal_prefix*
  ret %struct.smc_clc_msg_proposal_prefix* %12
}

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
