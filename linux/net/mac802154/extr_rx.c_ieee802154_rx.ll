; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_rx.c_ieee802154_rx.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_rx.c_ieee802154_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_local = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64, i32 }

@IEEE802154_HW_RX_OMIT_CKSUM = common dso_local global i32 0, align 4
@IEEE802154_HW_RX_DROP_BAD_CKSUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee802154_rx(%struct.ieee802154_local* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee802154_local*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  store %struct.ieee802154_local* %0, %struct.ieee802154_local** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = call i64 (...) @softirq_count()
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON_ONCE(i32 %8)
  %10 = load %struct.ieee802154_local*, %struct.ieee802154_local** %3, align 8
  %11 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %71

15:                                               ; preds = %2
  %16 = load %struct.ieee802154_local*, %struct.ieee802154_local** %3, align 8
  %17 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IEEE802154_HW_RX_OMIT_CKSUM, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %15
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @crc_ccitt(i32 0, i32 %26, i64 %29)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @skb_put(%struct.sk_buff* %32, i32 2)
  %34 = call i32 @put_unaligned_le16(i64 %31, i32 %33)
  br label %35

35:                                               ; preds = %23, %15
  %36 = call i32 (...) @rcu_read_lock()
  %37 = load %struct.ieee802154_local*, %struct.ieee802154_local** %3, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i32 @ieee802154_monitors_rx(%struct.ieee802154_local* %37, %struct.sk_buff* %38)
  %40 = load %struct.ieee802154_local*, %struct.ieee802154_local** %3, align 8
  %41 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @IEEE802154_HW_RX_DROP_BAD_CKSUM, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %35
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @crc_ccitt(i32 0, i32 %50, i64 %53)
  store i64 %54, i64* %5, align 8
  %55 = load i64, i64* %5, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = call i32 (...) @rcu_read_unlock()
  br label %71

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59, %35
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %64, 2
  %66 = call i32 @skb_trim(%struct.sk_buff* %61, i64 %65)
  %67 = load %struct.ieee802154_local*, %struct.ieee802154_local** %3, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = call i32 @__ieee802154_rx_handle_packet(%struct.ieee802154_local* %67, %struct.sk_buff* %68)
  %70 = call i32 (...) @rcu_read_unlock()
  br label %74

71:                                               ; preds = %57, %14
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = call i32 @kfree_skb(%struct.sk_buff* %72)
  br label %74

74:                                               ; preds = %71, %60
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @softirq_count(...) #1

declare dso_local i64 @crc_ccitt(i32, i32, i64) #1

declare dso_local i32 @put_unaligned_le16(i64, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @ieee802154_monitors_rx(%struct.ieee802154_local*, %struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @__ieee802154_rx_handle_packet(%struct.ieee802154_local*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
