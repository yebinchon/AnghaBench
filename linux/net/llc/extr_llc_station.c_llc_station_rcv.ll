; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_station.c_llc_station_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_station.c_llc_station_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @llc_station_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llc_station_rcv(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %3 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %4 = call i64 @llc_stat_ev_rx_null_dsap_xid_c(%struct.sk_buff* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = call i32 @llc_station_ac_send_xid_r(%struct.sk_buff* %7)
  br label %17

9:                                                ; preds = %1
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = call i64 @llc_stat_ev_rx_null_dsap_test_c(%struct.sk_buff* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %15 = call i32 @llc_station_ac_send_test_r(%struct.sk_buff* %14)
  br label %16

16:                                               ; preds = %13, %9
  br label %17

17:                                               ; preds = %16, %6
  %18 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %19 = call i32 @kfree_skb(%struct.sk_buff* %18)
  ret void
}

declare dso_local i64 @llc_stat_ev_rx_null_dsap_xid_c(%struct.sk_buff*) #1

declare dso_local i32 @llc_station_ac_send_xid_r(%struct.sk_buff*) #1

declare dso_local i64 @llc_stat_ev_rx_null_dsap_test_c(%struct.sk_buff*) #1

declare dso_local i32 @llc_station_ac_send_test_r(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
