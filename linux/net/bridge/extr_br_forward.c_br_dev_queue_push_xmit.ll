; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_forward.c_br_dev_queue_push_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_forward.c_br_dev_queue_push_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i64, i64, i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@ETH_P_8021Q = common dso_local global i32 0, align 4
@ETH_P_8021AD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_dev_queue_push_xmit(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %10 = load i32, i32* @ETH_HLEN, align 4
  %11 = call i32 @skb_push(%struct.sk_buff* %9, i32 %10)
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = call i32 @is_skb_forwardable(i32 %14, %struct.sk_buff* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %56

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = call i32 @br_drop_fake_rtable(%struct.sk_buff* %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %19
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @ETH_P_8021Q, align 4
  %32 = call i64 @htons(i32 %31)
  %33 = icmp eq i64 %30, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @ETH_P_8021AD, align 4
  %39 = call i64 @htons(i32 %38)
  %40 = icmp eq i64 %37, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %34, %27
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @__vlan_get_protocol(%struct.sk_buff* %42, i64 %45, i32* %8)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %56

49:                                               ; preds = %41
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @skb_set_network_header(%struct.sk_buff* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %34, %19
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = call i32 @dev_queue_xmit(%struct.sk_buff* %54)
  store i32 0, i32* %4, align 4
  br label %59

56:                                               ; preds = %48, %18
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = call i32 @kfree_skb(%struct.sk_buff* %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @is_skb_forwardable(i32, %struct.sk_buff*) #1

declare dso_local i32 @br_drop_fake_rtable(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @__vlan_get_protocol(%struct.sk_buff*, i64, i32*) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
