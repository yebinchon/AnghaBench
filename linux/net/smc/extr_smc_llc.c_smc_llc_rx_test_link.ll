; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_rx_test_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_rx_test_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link = type { i64, i32 }
%struct.smc_llc_msg_test_link = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SMC_LLC_FLAG_RESP = common dso_local global i32 0, align 4
@SMC_LNK_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smc_link*, %struct.smc_llc_msg_test_link*)* @smc_llc_rx_test_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_llc_rx_test_link(%struct.smc_link* %0, %struct.smc_llc_msg_test_link* %1) #0 {
  %3 = alloca %struct.smc_link*, align 8
  %4 = alloca %struct.smc_llc_msg_test_link*, align 8
  store %struct.smc_link* %0, %struct.smc_link** %3, align 8
  store %struct.smc_llc_msg_test_link* %1, %struct.smc_llc_msg_test_link** %4, align 8
  %5 = load %struct.smc_llc_msg_test_link*, %struct.smc_llc_msg_test_link** %4, align 8
  %6 = getelementptr inbounds %struct.smc_llc_msg_test_link, %struct.smc_llc_msg_test_link* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SMC_LLC_FLAG_RESP, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %14 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SMC_LNK_ACTIVE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %20 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %19, i32 0, i32 1
  %21 = call i32 @complete(i32* %20)
  br label %22

22:                                               ; preds = %18, %12
  br label %33

23:                                               ; preds = %2
  %24 = load i32, i32* @SMC_LLC_FLAG_RESP, align 4
  %25 = load %struct.smc_llc_msg_test_link*, %struct.smc_llc_msg_test_link** %4, align 8
  %26 = getelementptr inbounds %struct.smc_llc_msg_test_link, %struct.smc_llc_msg_test_link* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %24
  store i32 %29, i32* %27, align 4
  %30 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %31 = load %struct.smc_llc_msg_test_link*, %struct.smc_llc_msg_test_link** %4, align 8
  %32 = call i32 @smc_llc_send_message(%struct.smc_link* %30, %struct.smc_llc_msg_test_link* %31, i32 4)
  br label %33

33:                                               ; preds = %23, %22
  ret void
}

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @smc_llc_send_message(%struct.smc_link*, %struct.smc_llc_msg_test_link*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
