; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_send_delete_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_send_delete_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link = type { i32 }
%struct.smc_llc_msg_del_link = type { i32 }
%struct.smc_wr_tx_pend_priv = type { i32 }
%struct.smc_wr_buf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smc_llc_send_delete_link(%struct.smc_link* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smc_link*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.smc_llc_msg_del_link*, align 8
  %9 = alloca %struct.smc_wr_tx_pend_priv*, align 8
  %10 = alloca %struct.smc_wr_buf*, align 8
  %11 = alloca i32, align 4
  store %struct.smc_link* %0, %struct.smc_link** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.smc_link*, %struct.smc_link** %5, align 8
  %13 = call i32 @smc_llc_add_pending_send(%struct.smc_link* %12, %struct.smc_wr_buf** %10, %struct.smc_wr_tx_pend_priv** %9)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %4, align 4
  br label %30

18:                                               ; preds = %3
  %19 = load %struct.smc_wr_buf*, %struct.smc_wr_buf** %10, align 8
  %20 = bitcast %struct.smc_wr_buf* %19 to %struct.smc_llc_msg_del_link*
  store %struct.smc_llc_msg_del_link* %20, %struct.smc_llc_msg_del_link** %8, align 8
  %21 = load %struct.smc_llc_msg_del_link*, %struct.smc_llc_msg_del_link** %8, align 8
  %22 = load %struct.smc_link*, %struct.smc_link** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @smc_llc_prep_delete_link(%struct.smc_llc_msg_del_link* %21, %struct.smc_link* %22, i32 %23, i32 %24)
  %26 = load %struct.smc_link*, %struct.smc_link** %5, align 8
  %27 = load %struct.smc_wr_tx_pend_priv*, %struct.smc_wr_tx_pend_priv** %9, align 8
  %28 = call i32 @smc_wr_tx_send(%struct.smc_link* %26, %struct.smc_wr_tx_pend_priv* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %18, %16
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @smc_llc_add_pending_send(%struct.smc_link*, %struct.smc_wr_buf**, %struct.smc_wr_tx_pend_priv**) #1

declare dso_local i32 @smc_llc_prep_delete_link(%struct.smc_llc_msg_del_link*, %struct.smc_link*, i32, i32) #1

declare dso_local i32 @smc_wr_tx_send(%struct.smc_link*, %struct.smc_wr_tx_pend_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
