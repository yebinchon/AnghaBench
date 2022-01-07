; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_c_ac.c_llc_conn_tmr_common_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_c_ac.c_llc_conn_tmr_common_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_conn_state_ev = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @llc_conn_tmr_common_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llc_conn_tmr_common_cb(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.llc_conn_state_ev*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.sk_buff* @alloc_skb(i32 0, i32 %7)
  store %struct.sk_buff* %8, %struct.sk_buff** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call i32 @bh_lock_sock(%struct.sock* %9)
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call %struct.llc_conn_state_ev* @llc_conn_ev(%struct.sk_buff* %14)
  store %struct.llc_conn_state_ev* %15, %struct.llc_conn_state_ev** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = call i32 @skb_set_owner_r(%struct.sk_buff* %16, %struct.sock* %17)
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.llc_conn_state_ev*, %struct.llc_conn_state_ev** %6, align 8
  %21 = getelementptr inbounds %struct.llc_conn_state_ev, %struct.llc_conn_state_ev* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call i32 @llc_process_tmr_ev(%struct.sock* %22, %struct.sk_buff* %23)
  br label %25

25:                                               ; preds = %13, %2
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = call i32 @bh_unlock_sock(%struct.sock* %26)
  ret void
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local %struct.llc_conn_state_ev* @llc_conn_ev(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_owner_r(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @llc_process_tmr_ev(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
