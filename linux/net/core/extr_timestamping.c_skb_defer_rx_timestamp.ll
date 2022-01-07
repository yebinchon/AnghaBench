; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_timestamping.c_skb_defer_rx_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_timestamping.c_skb_defer_rx_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.phy_device* }
%struct.phy_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.phy_device*, %struct.sk_buff*, i32)* }

@ETH_HLEN = common dso_local global i64 0, align 8
@PTP_CLASS_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skb_defer_rx_timestamp(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.phy_device*, %struct.phy_device** %14, align 8
  %16 = icmp ne %struct.phy_device* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %10
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.phy_device*, %struct.phy_device** %21, align 8
  %23 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %17, %10, %1
  store i32 0, i32* %2, align 4
  br label %70

27:                                               ; preds = %17
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = call i64 @skb_headroom(%struct.sk_buff* %28)
  %30 = load i64, i64* @ETH_HLEN, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %70

33:                                               ; preds = %27
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = load i64, i64* @ETH_HLEN, align 8
  %36 = call i32 @__skb_push(%struct.sk_buff* %34, i64 %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = call i32 @ptp_classify_raw(%struct.sk_buff* %37)
  store i32 %38, i32* %5, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = load i64, i64* @ETH_HLEN, align 8
  %41 = call i32 @__skb_pull(%struct.sk_buff* %39, i64 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @PTP_CLASS_NONE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %70

46:                                               ; preds = %33
  %47 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.phy_device*, %struct.phy_device** %50, align 8
  store %struct.phy_device* %51, %struct.phy_device** %4, align 8
  %52 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %53 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32 (%struct.phy_device*, %struct.sk_buff*, i32)*, i32 (%struct.phy_device*, %struct.sk_buff*, i32)** %55, align 8
  %57 = call i64 @likely(i32 (%struct.phy_device*, %struct.sk_buff*, i32)* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %46
  %60 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %61 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32 (%struct.phy_device*, %struct.sk_buff*, i32)*, i32 (%struct.phy_device*, %struct.sk_buff*, i32)** %63, align 8
  %65 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 %64(%struct.phy_device* %65, %struct.sk_buff* %66, i32 %67)
  store i32 %68, i32* %2, align 4
  br label %70

69:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %59, %45, %32, %26
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @ptp_classify_raw(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @likely(i32 (%struct.phy_device*, %struct.sk_buff*, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
