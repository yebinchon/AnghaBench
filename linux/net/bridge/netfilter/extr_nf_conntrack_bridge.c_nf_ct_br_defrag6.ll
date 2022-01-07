; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nf_conntrack_bridge.c_nf_ct_br_defrag6.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nf_conntrack_bridge.c_nf_ct_br_defrag6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_hook_state = type { i32 }
%struct.br_input_skb_cb = type { i32 }
%struct.nf_conn = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NF_CT_DEFAULT_ZONE_ID = common dso_local global i64 0, align 8
@IP_DEFRAG_CONNTRACK_BRIDGE_IN = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@NF_STOLEN = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_hook_state*)* @nf_ct_br_defrag6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_ct_br_defrag6(%struct.sk_buff* %0, %struct.nf_hook_state* %1) #0 {
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
  %13 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %12, i32* %7)
  store %struct.nf_conn* %13, %struct.nf_conn** %9, align 8
  %14 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %15 = icmp ne %struct.nf_conn* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %18 = call i32 @nf_ct_zone(%struct.nf_conn* %17)
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @CTINFO2DIR(i32 %19)
  %21 = call i64 @nf_ct_zone_id(i32 %18, i32 %20)
  store i64 %21, i64* %6, align 8
  br label %22

22:                                               ; preds = %16, %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call i32 @br_skb_cb_save(%struct.sk_buff* %23, %struct.br_input_skb_cb* %8, i32 4)
  %25 = load %struct.nf_hook_state*, %struct.nf_hook_state** %5, align 8
  %26 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = load i64, i64* @IP_DEFRAG_CONNTRACK_BRIDGE_IN, align 8
  %30 = load i64, i64* %6, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @nf_ipv6_br_defrag(i32 %27, %struct.sk_buff* %28, i64 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @EINPROGRESS, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %22
  %38 = load i32, i32* @NF_STOLEN, align 4
  store i32 %38, i32* %3, align 4
  br label %54

39:                                               ; preds = %22
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = call %struct.TYPE_2__* @IP6CB(%struct.sk_buff* %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @br_skb_cb_restore(%struct.sk_buff* %40, %struct.br_input_skb_cb* %8, i32 %44)
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @NF_ACCEPT, align 4
  br label %52

50:                                               ; preds = %39
  %51 = load i32, i32* @NF_DROP, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %37
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i64 @nf_ct_zone_id(i32, i32) #1

declare dso_local i32 @nf_ct_zone(%struct.nf_conn*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i32 @br_skb_cb_save(%struct.sk_buff*, %struct.br_input_skb_cb*, i32) #1

declare dso_local i32 @nf_ipv6_br_defrag(i32, %struct.sk_buff*, i64) #1

declare dso_local i32 @br_skb_cb_restore(%struct.sk_buff*, %struct.br_input_skb_cb*, i32) #1

declare dso_local %struct.TYPE_2__* @IP6CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
