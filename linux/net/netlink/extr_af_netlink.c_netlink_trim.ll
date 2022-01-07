; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_trim.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i32, i32* }

@__GFP_DIRECT_RECLAIM = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, i32)* @netlink_trim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @netlink_trim(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 4
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @is_vmalloc_addr(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 %27, 2
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26, %2
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %34, %struct.sk_buff** %3, align 8
  br label %65

35:                                               ; preds = %26
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i64 @skb_shared(%struct.sk_buff* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %40, i32 %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %7, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %46, %struct.sk_buff** %3, align 8
  br label %65

47:                                               ; preds = %39
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call i32 @consume_skb(%struct.sk_buff* %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %50, %struct.sk_buff** %4, align 8
  br label %51

51:                                               ; preds = %47, %35
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 0, %53
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @__GFP_DIRECT_RECLAIM, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = load i32, i32* @__GFP_NOWARN, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @__GFP_NORETRY, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @pskb_expand_head(%struct.sk_buff* %52, i32 0, i32 %54, i32 %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %64, %struct.sk_buff** %3, align 8
  br label %65

65:                                               ; preds = %51, %45, %33
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %66
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @is_vmalloc_addr(i32) #1

declare dso_local i64 @skb_shared(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
