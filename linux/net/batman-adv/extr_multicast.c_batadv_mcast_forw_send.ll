; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_forw_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_forw_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.sk_buff = type { i32 }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_mcast_forw_send(%struct.batadv_priv* %0, %struct.sk_buff* %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.batadv_priv*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i16 %2, i16* %7, align 2
  %9 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = load i16, i16* %7, align 2
  %12 = call i32 @batadv_mcast_forw_tt(%struct.batadv_priv* %9, %struct.sk_buff* %10, i16 zeroext %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call i32 @kfree_skb(%struct.sk_buff* %17)
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %48

20:                                               ; preds = %3
  %21 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = load i16, i16* %7, align 2
  %24 = call i32 @batadv_mcast_forw_want_all(%struct.batadv_priv* %21, %struct.sk_buff* %22, i16 zeroext %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = call i32 @kfree_skb(%struct.sk_buff* %29)
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %48

32:                                               ; preds = %20
  %33 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = load i16, i16* %7, align 2
  %36 = call i32 @batadv_mcast_forw_want_rtr(%struct.batadv_priv* %33, %struct.sk_buff* %34, i16 zeroext %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = call i32 @kfree_skb(%struct.sk_buff* %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %48

44:                                               ; preds = %32
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = call i32 @consume_skb(%struct.sk_buff* %45)
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %44, %40, %28, %16
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @batadv_mcast_forw_tt(%struct.batadv_priv*, %struct.sk_buff*, i16 zeroext) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @batadv_mcast_forw_want_all(%struct.batadv_priv*, %struct.sk_buff*, i16 zeroext) #1

declare dso_local i32 @batadv_mcast_forw_want_rtr(%struct.batadv_priv*, %struct.sk_buff*, i16 zeroext) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
