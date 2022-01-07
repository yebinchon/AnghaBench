; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_ccidsccid3.h_ccid3_hc_tx_sk.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_ccidsccid3.h_ccid3_hc_tx_sk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccid3_hc_tx_sock = type { i32 }
%struct.sock = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ccid3_hc_tx_sock* (%struct.sock*)* @ccid3_hc_tx_sk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ccid3_hc_tx_sock* @ccid3_hc_tx_sk(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.ccid3_hc_tx_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.TYPE_2__* @dccp_sk(%struct.sock* %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.ccid3_hc_tx_sock* @ccid_priv(i32 %7)
  store %struct.ccid3_hc_tx_sock* %8, %struct.ccid3_hc_tx_sock** %3, align 8
  %9 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %10 = icmp eq %struct.ccid3_hc_tx_sock* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  ret %struct.ccid3_hc_tx_sock* %13
}

declare dso_local %struct.ccid3_hc_tx_sock* @ccid_priv(i32) #1

declare dso_local %struct.TYPE_2__* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
