; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/6lowpan/extr_reassembly.c_lowpan_get_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/6lowpan/extr_reassembly.c_lowpan_get_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.lowpan_802154_cb = type { i32, i64, i32 }

@LOWPAN_FRAG_DGRAM_SIZE_HIGH_MASK = common dso_local global i64 0, align 8
@LOWPAN_FRAG_DGRAM_SIZE_HIGH_SHIFT = common dso_local global i64 0, align 8
@LOWPAN_DISPATCH_FRAGN = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i64, %struct.lowpan_802154_cb*)* @lowpan_get_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lowpan_get_cb(%struct.sk_buff* %0, i64 %1, %struct.lowpan_802154_cb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.lowpan_802154_cb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.lowpan_802154_cb* %2, %struct.lowpan_802154_cb** %7, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call i32 @lowpan_fetch_skb(%struct.sk_buff* %12, i64* %9, i32 1)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i32 @lowpan_fetch_skb(%struct.sk_buff* %14, i64* %10, i32 1)
  %16 = load i32, i32* %8, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %8, align 4
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @LOWPAN_FRAG_DGRAM_SIZE_HIGH_MASK, align 8
  %20 = and i64 %18, %19
  %21 = load i64, i64* @LOWPAN_FRAG_DGRAM_SIZE_HIGH_SHIFT, align 8
  %22 = shl i64 %20, %21
  %23 = load i64, i64* %10, align 8
  %24 = or i64 %22, %23
  %25 = trunc i64 %24 to i32
  %26 = load %struct.lowpan_802154_cb*, %struct.lowpan_802154_cb** %7, align 8
  %27 = getelementptr inbounds %struct.lowpan_802154_cb, %struct.lowpan_802154_cb* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32 @lowpan_fetch_skb(%struct.sk_buff* %28, i64* %11, i32 2)
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @ntohs(i64 %32)
  %34 = load %struct.lowpan_802154_cb*, %struct.lowpan_802154_cb** %7, align 8
  %35 = getelementptr inbounds %struct.lowpan_802154_cb, %struct.lowpan_802154_cb* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @LOWPAN_DISPATCH_FRAGN, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %3
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load %struct.lowpan_802154_cb*, %struct.lowpan_802154_cb** %7, align 8
  %42 = getelementptr inbounds %struct.lowpan_802154_cb, %struct.lowpan_802154_cb* %41, i32 0, i32 1
  %43 = call i32 @lowpan_fetch_skb(%struct.sk_buff* %40, i64* %42, i32 1)
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %67

46:                                               ; preds = %3
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call i32 @skb_reset_network_header(%struct.sk_buff* %47)
  %49 = load %struct.lowpan_802154_cb*, %struct.lowpan_802154_cb** %7, align 8
  %50 = getelementptr inbounds %struct.lowpan_802154_cb, %struct.lowpan_802154_cb* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.lowpan_802154_cb*, %struct.lowpan_802154_cb** %7, align 8
  %52 = getelementptr inbounds %struct.lowpan_802154_cb, %struct.lowpan_802154_cb* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = icmp ult i64 %54, 4
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %46, %39
  %68 = load i32, i32* %8, align 4
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %75

74:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %71
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @lowpan_fetch_skb(%struct.sk_buff*, i64*, i32) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
