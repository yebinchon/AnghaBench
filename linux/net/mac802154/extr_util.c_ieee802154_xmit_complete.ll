; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_util.c_ieee802154_xmit_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_util.c_ieee802154_xmit_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.ieee802154_local = type { i32 }

@IEEE802154_HW_TX_OMIT_CKSUM = common dso_local global i32 0, align 4
@IEEE802154_MAX_SIFS_FRAME_SIZE = common dso_local global i64 0, align 8
@IEEE802154_FCS_LEN = common dso_local global i64 0, align 8
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee802154_xmit_complete(%struct.ieee802154_hw* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee802154_hw*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee802154_local*, align 8
  %8 = alloca i64, align 8
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %57

11:                                               ; preds = %3
  %12 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %13 = call %struct.ieee802154_local* @hw_to_local(%struct.ieee802154_hw* %12)
  store %struct.ieee802154_local* %13, %struct.ieee802154_local** %7, align 8
  %14 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IEEE802154_HW_TX_OMIT_CKSUM, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %11
  %21 = load i64, i64* @IEEE802154_MAX_SIFS_FRAME_SIZE, align 8
  %22 = load i64, i64* @IEEE802154_FCS_LEN, align 8
  %23 = sub nsw i64 %21, %22
  store i64 %23, i64* %8, align 8
  br label %26

24:                                               ; preds = %11
  %25 = load i64, i64* @IEEE802154_MAX_SIFS_FRAME_SIZE, align 8
  store i64 %25, i64* %8, align 8
  br label %26

26:                                               ; preds = %24, %20
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %34 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %33, i32 0, i32 0
  %35 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %36 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @NSEC_PER_USEC, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %43 = call i32 @hrtimer_start(i32* %34, i32 %41, i32 %42)
  br label %56

44:                                               ; preds = %26
  %45 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %46 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %45, i32 0, i32 0
  %47 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %48 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NSEC_PER_USEC, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %55 = call i32 @hrtimer_start(i32* %46, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %44, %32
  br label %60

57:                                               ; preds = %3
  %58 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %59 = call i32 @ieee802154_wake_queue(%struct.ieee802154_hw* %58)
  br label %60

60:                                               ; preds = %57, %56
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = call i32 @dev_consume_skb_any(%struct.sk_buff* %61)
  ret void
}

declare dso_local %struct.ieee802154_local* @hw_to_local(%struct.ieee802154_hw*) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @ieee802154_wake_queue(%struct.ieee802154_hw*) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
