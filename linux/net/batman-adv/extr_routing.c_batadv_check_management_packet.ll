; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_routing.c_batadv_check_management_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_routing.c_batadv_check_management_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.batadv_hard_iface = type { i32 }
%struct.ethhdr = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_check_management_packet(%struct.sk_buff* %0, %struct.batadv_hard_iface* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.batadv_hard_iface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ethhdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @pskb_may_pull(%struct.sk_buff* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %45

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %19)
  store %struct.ethhdr* %20, %struct.ethhdr** %8, align 8
  %21 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %22 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @is_broadcast_ether_addr(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %45

27:                                               ; preds = %18
  %28 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %29 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @is_valid_ether_addr(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %45

34:                                               ; preds = %27
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call i64 @skb_cow(%struct.sk_buff* %35, i32 0)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %45

39:                                               ; preds = %34
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call i64 @skb_linearize(%struct.sk_buff* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %45

44:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %43, %38, %33, %26, %17
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @is_broadcast_ether_addr(i32) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i64 @skb_cow(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
