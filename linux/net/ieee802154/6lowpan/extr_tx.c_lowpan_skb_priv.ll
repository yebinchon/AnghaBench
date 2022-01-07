; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/6lowpan/extr_tx.c_lowpan_skb_priv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/6lowpan/extr_tx.c_lowpan_skb_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lowpan_addr_info = type { i32 }
%struct.sk_buff = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lowpan_addr_info* (%struct.sk_buff*)* @lowpan_skb_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lowpan_addr_info* @lowpan_skb_priv(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %3 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %4 = call i32 @skb_headroom(%struct.sk_buff* %3)
  %5 = sext i32 %4 to i64
  %6 = icmp ult i64 %5, 4
  %7 = zext i1 %6 to i32
  %8 = call i32 @WARN_ON_ONCE(i32 %7)
  %9 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sub i64 %11, 4
  %13 = inttoptr i64 %12 to %struct.lowpan_addr_info*
  ret %struct.lowpan_addr_info* %13
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
