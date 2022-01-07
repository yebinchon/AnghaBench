; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_forward.c_br_forward.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_forward.c_br_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i32, i32 }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_forward(%struct.net_bridge_port* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_bridge_port*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_bridge_port*, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %11 = icmp ne %struct.net_bridge_port* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %63

17:                                               ; preds = %4
  %18 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %19 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @rcu_access_pointer(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %17
  %24 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %25 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @netif_carrier_ok(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %23
  %30 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %31 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.net_bridge_port* @rcu_dereference(i32 %32)
  store %struct.net_bridge_port* %33, %struct.net_bridge_port** %9, align 8
  %34 = load %struct.net_bridge_port*, %struct.net_bridge_port** %9, align 8
  %35 = icmp ne %struct.net_bridge_port* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %63

41:                                               ; preds = %29
  %42 = load %struct.net_bridge_port*, %struct.net_bridge_port** %9, align 8
  store %struct.net_bridge_port* %42, %struct.net_bridge_port** %5, align 8
  br label %43

43:                                               ; preds = %41, %23, %17
  %44 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = call i64 @should_deliver(%struct.net_bridge_port* %44, %struct.sk_buff* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @deliver_clone(%struct.net_bridge_port* %52, %struct.sk_buff* %53, i32 %54)
  br label %61

56:                                               ; preds = %48
  %57 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @__br_forward(%struct.net_bridge_port* %57, %struct.sk_buff* %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %51
  br label %69

62:                                               ; preds = %43
  br label %63

63:                                               ; preds = %62, %40, %16
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = call i32 @kfree_skb(%struct.sk_buff* %67)
  br label %69

69:                                               ; preds = %61, %66, %63
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @rcu_access_pointer(i32) #1

declare dso_local i32 @netif_carrier_ok(i32) #1

declare dso_local %struct.net_bridge_port* @rcu_dereference(i32) #1

declare dso_local i64 @should_deliver(%struct.net_bridge_port*, %struct.sk_buff*) #1

declare dso_local i32 @deliver_clone(%struct.net_bridge_port*, %struct.sk_buff*, i32) #1

declare dso_local i32 @__br_forward(%struct.net_bridge_port*, %struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
