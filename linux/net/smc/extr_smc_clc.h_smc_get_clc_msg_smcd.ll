; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_clc.h_smc_get_clc_msg_smcd.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_clc.h_smc_get_clc_msg_smcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_clc_msg_smcd = type { i32 }
%struct.smc_clc_msg_proposal = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.smc_clc_msg_smcd* (%struct.smc_clc_msg_proposal*)* @smc_get_clc_msg_smcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.smc_clc_msg_smcd* @smc_get_clc_msg_smcd(%struct.smc_clc_msg_proposal* %0) #0 {
  %2 = alloca %struct.smc_clc_msg_smcd*, align 8
  %3 = alloca %struct.smc_clc_msg_proposal*, align 8
  store %struct.smc_clc_msg_proposal* %0, %struct.smc_clc_msg_proposal** %3, align 8
  %4 = load %struct.smc_clc_msg_proposal*, %struct.smc_clc_msg_proposal** %3, align 8
  %5 = getelementptr inbounds %struct.smc_clc_msg_proposal, %struct.smc_clc_msg_proposal* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @ntohs(i32 %6)
  %8 = sext i32 %7 to i64
  %9 = icmp ne i64 %8, 4
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.smc_clc_msg_smcd* null, %struct.smc_clc_msg_smcd** %2, align 8
  br label %15

11:                                               ; preds = %1
  %12 = load %struct.smc_clc_msg_proposal*, %struct.smc_clc_msg_proposal** %3, align 8
  %13 = getelementptr inbounds %struct.smc_clc_msg_proposal, %struct.smc_clc_msg_proposal* %12, i64 1
  %14 = bitcast %struct.smc_clc_msg_proposal* %13 to %struct.smc_clc_msg_smcd*
  store %struct.smc_clc_msg_smcd* %14, %struct.smc_clc_msg_smcd** %2, align 8
  br label %15

15:                                               ; preds = %11, %10
  %16 = load %struct.smc_clc_msg_smcd*, %struct.smc_clc_msg_smcd** %2, align 8
  ret %struct.smc_clc_msg_smcd* %16
}

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
