; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_timestamping.c_skb_clone_tx_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_timestamping.c_skb_clone_tx_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.phy_device* }
%struct.phy_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.phy_device*, %struct.sk_buff*, i32)* }

@PTP_CLASS_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skb_clone_tx_timestamp(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %47

11:                                               ; preds = %1
  %12 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %13 = call i32 @classify(%struct.sk_buff* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @PTP_CLASS_NONE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %47

18:                                               ; preds = %11
  %19 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.phy_device*, %struct.phy_device** %22, align 8
  store %struct.phy_device* %23, %struct.phy_device** %3, align 8
  %24 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %25 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (%struct.phy_device*, %struct.sk_buff*, i32)*, i32 (%struct.phy_device*, %struct.sk_buff*, i32)** %27, align 8
  %29 = call i64 @likely(i32 (%struct.phy_device*, %struct.sk_buff*, i32)* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %18
  %32 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %33 = call %struct.sk_buff* @skb_clone_sk(%struct.sk_buff* %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %4, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %47

37:                                               ; preds = %31
  %38 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %39 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32 (%struct.phy_device*, %struct.sk_buff*, i32)*, i32 (%struct.phy_device*, %struct.sk_buff*, i32)** %41, align 8
  %43 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 %42(%struct.phy_device* %43, %struct.sk_buff* %44, i32 %45)
  br label %47

47:                                               ; preds = %10, %17, %36, %37, %18
  ret void
}

declare dso_local i32 @classify(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32 (%struct.phy_device*, %struct.sk_buff*, i32)*) #1

declare dso_local %struct.sk_buff* @skb_clone_sk(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
