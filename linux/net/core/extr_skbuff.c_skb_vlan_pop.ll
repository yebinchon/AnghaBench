; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_vlan_pop.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_vlan_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skb_vlan_pop(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call i32 @skb_vlan_tag_present(%struct.sk_buff* %7)
  %9 = call i64 @likely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = call i32 @__vlan_hwaccel_clear_tag(%struct.sk_buff* %12)
  br label %33

14:                                               ; preds = %1
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @eth_type_vlan(i32 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %60

25:                                               ; preds = %14
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = call i32 @__skb_vlan_pop(%struct.sk_buff* %26, i32* %4)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %60

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %11
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @eth_type_vlan(i32 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @likely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %60

44:                                               ; preds = %33
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %5, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = call i32 @__skb_vlan_pop(%struct.sk_buff* %48, i32* %4)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %60

55:                                               ; preds = %44
  %56 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %56, i32 %57, i32 %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %55, %53, %43, %30, %24
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @__vlan_hwaccel_clear_tag(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @eth_type_vlan(i32) #1

declare dso_local i32 @__skb_vlan_pop(%struct.sk_buff*, i32*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
