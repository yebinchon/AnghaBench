; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_send.c_batadv_send_skb_unicast.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_send.c_batadv_send_skb_unicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.sk_buff = type { i64 }
%struct.batadv_orig_node = type { i32 }
%struct.batadv_unicast_packet = type { i64 }
%struct.ethhdr = type { i32 }

@NET_XMIT_DROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_send_skb_unicast(%struct.batadv_priv* %0, %struct.sk_buff* %1, i32 %2, i32 %3, %struct.batadv_orig_node* %4, i16 zeroext %5) #0 {
  %7 = alloca %struct.batadv_priv*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.batadv_orig_node*, align 8
  %12 = alloca i16, align 2
  %13 = alloca %struct.batadv_unicast_packet*, align 8
  %14 = alloca %struct.ethhdr*, align 8
  %15 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.batadv_orig_node* %4, %struct.batadv_orig_node** %11, align 8
  store i16 %5, i16* %12, align 2
  %16 = load i32, i32* @NET_XMIT_DROP, align 4
  store i32 %16, i32* %15, align 4
  %17 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %18 = icmp ne %struct.batadv_orig_node* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %6
  br label %64

20:                                               ; preds = %6
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %38 [
    i32 129, label %22
    i32 128, label %29
  ]

22:                                               ; preds = %20
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %25 = call i32 @batadv_send_skb_prepare_unicast(%struct.sk_buff* %23, %struct.batadv_orig_node* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %64

28:                                               ; preds = %22
  br label %39

29:                                               ; preds = %20
  %30 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @batadv_send_skb_prepare_unicast_4addr(%struct.batadv_priv* %30, %struct.sk_buff* %31, %struct.batadv_orig_node* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %64

37:                                               ; preds = %29
  br label %39

38:                                               ; preds = %20
  br label %64

39:                                               ; preds = %37, %28
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %40)
  store %struct.ethhdr* %41, %struct.ethhdr** %14, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.batadv_unicast_packet*
  store %struct.batadv_unicast_packet* %45, %struct.batadv_unicast_packet** %13, align 8
  %46 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %47 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %48 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i16, i16* %12, align 2
  %51 = call i64 @batadv_tt_global_client_is_roaming(%struct.batadv_priv* %46, i32 %49, i16 zeroext %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %39
  %54 = load %struct.batadv_unicast_packet*, %struct.batadv_unicast_packet** %13, align 8
  %55 = getelementptr inbounds %struct.batadv_unicast_packet, %struct.batadv_unicast_packet* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %56, 1
  %58 = load %struct.batadv_unicast_packet*, %struct.batadv_unicast_packet** %13, align 8
  %59 = getelementptr inbounds %struct.batadv_unicast_packet, %struct.batadv_unicast_packet* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %53, %39
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %63 = call i32 @batadv_send_skb_to_orig(%struct.sk_buff* %61, %struct.batadv_orig_node* %62, i32* null)
  store i32 %63, i32* %15, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  br label %64

64:                                               ; preds = %60, %38, %36, %27, %19
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = call i32 @kfree_skb(%struct.sk_buff* %65)
  %67 = load i32, i32* %15, align 4
  ret i32 %67
}

declare dso_local i32 @batadv_send_skb_prepare_unicast(%struct.sk_buff*, %struct.batadv_orig_node*) #1

declare dso_local i32 @batadv_send_skb_prepare_unicast_4addr(%struct.batadv_priv*, %struct.sk_buff*, %struct.batadv_orig_node*, i32) #1

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i64 @batadv_tt_global_client_is_roaming(%struct.batadv_priv*, i32, i16 zeroext) #1

declare dso_local i32 @batadv_send_skb_to_orig(%struct.sk_buff*, %struct.batadv_orig_node*, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
