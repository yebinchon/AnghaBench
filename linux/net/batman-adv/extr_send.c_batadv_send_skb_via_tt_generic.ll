; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_send.c_batadv_send_skb_via_tt_generic.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_send.c_batadv_send_skb_via_tt_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ethhdr = type { i32*, i32* }
%struct.batadv_orig_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_send_skb_via_tt_generic(%struct.batadv_priv* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32* %4, i16 zeroext %5) #0 {
  %7 = alloca %struct.batadv_priv*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i16, align 2
  %13 = alloca %struct.ethhdr*, align 8
  %14 = alloca %struct.batadv_orig_node*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i16 %5, i16* %12, align 2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ethhdr*
  store %struct.ethhdr* %21, %struct.ethhdr** %13, align 8
  %22 = load %struct.ethhdr*, %struct.ethhdr** %13, align 8
  %23 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %15, align 8
  %25 = load %struct.ethhdr*, %struct.ethhdr** %13, align 8
  %26 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %16, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  store i32* null, i32** %15, align 8
  %31 = load i32*, i32** %11, align 8
  store i32* %31, i32** %16, align 8
  br label %32

32:                                               ; preds = %30, %6
  %33 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = load i32*, i32** %16, align 8
  %36 = load i16, i16* %12, align 2
  %37 = call %struct.batadv_orig_node* @batadv_transtable_search(%struct.batadv_priv* %33, i32* %34, i32* %35, i16 zeroext %36)
  store %struct.batadv_orig_node* %37, %struct.batadv_orig_node** %14, align 8
  %38 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %14, align 8
  %43 = load i16, i16* %12, align 2
  %44 = call i32 @batadv_send_skb_unicast(%struct.batadv_priv* %38, %struct.sk_buff* %39, i32 %40, i32 %41, %struct.batadv_orig_node* %42, i16 zeroext %43)
  store i32 %44, i32* %17, align 4
  %45 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %14, align 8
  %46 = icmp ne %struct.batadv_orig_node* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %32
  %48 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %14, align 8
  %49 = call i32 @batadv_orig_node_put(%struct.batadv_orig_node* %48)
  br label %50

50:                                               ; preds = %47, %32
  %51 = load i32, i32* %17, align 4
  ret i32 %51
}

declare dso_local %struct.batadv_orig_node* @batadv_transtable_search(%struct.batadv_priv*, i32*, i32*, i16 zeroext) #1

declare dso_local i32 @batadv_send_skb_unicast(%struct.batadv_priv*, %struct.sk_buff*, i32, i32, %struct.batadv_orig_node*, i16 zeroext) #1

declare dso_local i32 @batadv_orig_node_put(%struct.batadv_orig_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
