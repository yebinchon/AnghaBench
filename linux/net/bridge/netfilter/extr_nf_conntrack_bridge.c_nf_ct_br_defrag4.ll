; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nf_conntrack_bridge.c_nf_ct_br_defrag4.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nf_conntrack_bridge.c_nf_ct_br_defrag4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_hook_state = type { i32 }
%struct.br_input_skb_cb = type { i32 }
%struct.nf_conn = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NF_CT_DEFAULT_ZONE_ID = common dso_local global i64 0, align 8
@NF_ACCEPT = common dso_local global i32 0, align 4
@IP_DEFRAG_CONNTRACK_BRIDGE_IN = common dso_local global i64 0, align 8
@NF_STOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_hook_state*)* @nf_ct_br_defrag4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_ct_br_defrag4(%struct.sk_buff* %0, %struct.nf_hook_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nf_hook_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.br_input_skb_cb, align 4
  %9 = alloca %struct.nf_conn*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nf_hook_state* %1, %struct.nf_hook_state** %5, align 8
  %11 = load i64, i64* @NF_CT_DEFAULT_ZONE_ID, align 8
  store i64 %11, i64* %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i32 @ip_hdr(%struct.sk_buff* %12)
  %14 = call i32 @ip_is_fragment(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %17, i32* %3, align 4
  br label %56

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %19, i32* %7)
  store %struct.nf_conn* %20, %struct.nf_conn** %9, align 8
  %21 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %22 = icmp ne %struct.nf_conn* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %25 = call i32 @nf_ct_zone(%struct.nf_conn* %24)
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @CTINFO2DIR(i32 %26)
  %28 = call i64 @nf_ct_zone_id(i32 %25, i32 %27)
  store i64 %28, i64* %6, align 8
  br label %29

29:                                               ; preds = %23, %18
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call i32 @br_skb_cb_save(%struct.sk_buff* %30, %struct.br_input_skb_cb* %8, i32 4)
  %32 = call i32 (...) @local_bh_disable()
  %33 = load %struct.nf_hook_state*, %struct.nf_hook_state** %5, align 8
  %34 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load i64, i64* @IP_DEFRAG_CONNTRACK_BRIDGE_IN, align 8
  %38 = load i64, i64* %6, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @ip_defrag(i32 %35, %struct.sk_buff* %36, i64 %39)
  store i32 %40, i32* %10, align 4
  %41 = call i32 (...) @local_bh_enable()
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %29
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call %struct.TYPE_2__* @IPCB(%struct.sk_buff* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @br_skb_cb_restore(%struct.sk_buff* %45, %struct.br_input_skb_cb* %8, i32 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %53, i32* %3, align 4
  br label %56

54:                                               ; preds = %29
  %55 = load i32, i32* @NF_STOLEN, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %44, %16
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @ip_is_fragment(i32) #1

declare dso_local i32 @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i64 @nf_ct_zone_id(i32, i32) #1

declare dso_local i32 @nf_ct_zone(%struct.nf_conn*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i32 @br_skb_cb_save(%struct.sk_buff*, %struct.br_input_skb_cb*, i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @ip_defrag(i32, %struct.sk_buff*, i64) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @br_skb_cb_restore(%struct.sk_buff*, %struct.br_input_skb_cb*, i32) #1

declare dso_local %struct.TYPE_2__* @IPCB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
