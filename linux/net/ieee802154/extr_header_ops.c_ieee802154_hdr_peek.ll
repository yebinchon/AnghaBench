; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_header_ops.c_ieee802154_hdr_peek.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_header_ops.c_ieee802154_hdr_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee802154_hdr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ieee802154_sechdr_lengths = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee802154_hdr_peek(%struct.sk_buff* %0, %struct.ieee802154_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee802154_hdr*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ieee802154_hdr* %1, %struct.ieee802154_hdr** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call i64* @skb_mac_header(%struct.sk_buff* %10)
  store i64* %11, i64** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %5, align 8
  %14 = call i32 @ieee802154_hdr_peek_addrs(%struct.sk_buff* %12, %struct.ieee802154_hdr* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %63

20:                                               ; preds = %2
  %21 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %5, align 8
  %22 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %20
  %27 = load i64*, i64** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @IEEE802154_SCF_KEY_ID_MODE(i64 %31)
  store i64 %32, i64* %8, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** @ieee802154_sechdr_lengths, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %33, %37
  store i32 %38, i32* %9, align 4
  %39 = load i64*, i64** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i64* @skb_tail_pointer(%struct.sk_buff* %43)
  %45 = icmp ugt i64* %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %26
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %63

49:                                               ; preds = %26
  %50 = load i64*, i64** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %5, align 8
  %55 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %54, i32 0, i32 0
  %56 = call i64 @ieee802154_hdr_get_sechdr(i64* %53, i32* %55)
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %49, %20
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %46, %17
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64* @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @ieee802154_hdr_peek_addrs(%struct.sk_buff*, %struct.ieee802154_hdr*) #1

declare dso_local i64 @IEEE802154_SCF_KEY_ID_MODE(i64) #1

declare dso_local i64* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i64 @ieee802154_hdr_get_sechdr(i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
