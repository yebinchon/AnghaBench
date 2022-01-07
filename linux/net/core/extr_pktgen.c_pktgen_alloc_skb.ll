; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_pktgen.c_pktgen_alloc_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_pktgen.c_pktgen_alloc_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.pktgen_dev = type { i32, i32, i32, i32 }

@F_NODE = common dso_local global i32 0, align 4
@NET_SKB_PAD = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_device*, %struct.pktgen_dev*)* @pktgen_alloc_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @pktgen_alloc_skb(%struct.net_device* %0, %struct.pktgen_dev* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.pktgen_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.pktgen_dev* %1, %struct.pktgen_dev** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @LL_RESERVED_SPACE(%struct.net_device* %9)
  store i32 %10, i32* %5, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %11 = load %struct.pktgen_dev*, %struct.pktgen_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 64
  %15 = load i32, i32* %5, align 4
  %16 = add i32 %14, %15
  %17 = load %struct.pktgen_dev*, %struct.pktgen_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add i32 %16, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.pktgen_dev*, %struct.pktgen_dev** %4, align 8
  %22 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @F_NODE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %2
  %28 = load %struct.pktgen_dev*, %struct.pktgen_dev** %4, align 8
  %29 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.pktgen_dev*, %struct.pktgen_dev** %4, align 8
  %34 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  br label %38

36:                                               ; preds = %27
  %37 = call i32 (...) @numa_node_id()
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i32 [ %35, %32 ], [ %37, %36 ]
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* @NET_SKB_PAD, align 4
  %41 = load i32, i32* %7, align 4
  %42 = add i32 %40, %41
  %43 = load i32, i32* @GFP_NOWAIT, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call %struct.sk_buff* @__alloc_skb(i32 %42, i32 %43, i32 0, i32 %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %6, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = call i64 @likely(%struct.sk_buff* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %38
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = load i32, i32* @NET_SKB_PAD, align 4
  %52 = call i32 @skb_reserve(%struct.sk_buff* %50, i32 %51)
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  store %struct.net_device* %53, %struct.net_device** %55, align 8
  br label %56

56:                                               ; preds = %49, %38
  br label %62

57:                                               ; preds = %2
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @GFP_NOWAIT, align 4
  %61 = call %struct.sk_buff* @__netdev_alloc_skb(%struct.net_device* %58, i32 %59, i32 %60)
  store %struct.sk_buff* %61, %struct.sk_buff** %6, align 8
  br label %62

62:                                               ; preds = %57, %56
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = call i64 @likely(%struct.sk_buff* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sub i32 %68, 16
  %70 = call i32 @skb_reserve(%struct.sk_buff* %67, i32 %69)
  br label %71

71:                                               ; preds = %66, %62
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %72
}

declare dso_local i32 @LL_RESERVED_SPACE(%struct.net_device*) #1

declare dso_local i32 @numa_node_id(...) #1

declare dso_local %struct.sk_buff* @__alloc_skb(i32, i32, i32, i32) #1

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @__netdev_alloc_skb(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
