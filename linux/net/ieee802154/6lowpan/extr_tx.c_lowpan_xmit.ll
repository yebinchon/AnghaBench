; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/6lowpan/extr_tx.c_lowpan_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/6lowpan/extr_tx.c_lowpan_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ieee802154_hdr = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"package xmit\0A\00", align 1
@IPV6_MIN_MTU = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NET_XMIT_DROP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"frame is too big, fragmentation is needed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lowpan_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ieee802154_hdr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IPV6_MIN_MTU, align 8
  %18 = icmp sgt i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON_ONCE(i32 %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i64 @skb_headroom(%struct.sk_buff* %21)
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call i64 @skb_tailroom(%struct.sk_buff* %28)
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br label %34

34:                                               ; preds = %27, %2
  %35 = phi i1 [ true, %2 ], [ %33, %27 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %34
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @GFP_ATOMIC, align 4
  %48 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %40, i64 %43, i64 %46, i32 %47)
  store %struct.sk_buff* %48, %struct.sk_buff** %11, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %50 = call i64 @likely(%struct.sk_buff* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %39
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call i32 @consume_skb(%struct.sk_buff* %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %55, %struct.sk_buff** %4, align 8
  br label %60

56:                                               ; preds = %39
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = call i32 @kfree_skb(%struct.sk_buff* %57)
  %59 = load i64, i64* @NET_XMIT_DROP, align 8
  store i64 %59, i64* %3, align 8
  br label %134

60:                                               ; preds = %52
  br label %70

61:                                               ; preds = %34
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = load i32, i32* @GFP_ATOMIC, align 4
  %64 = call %struct.sk_buff* @skb_unshare(%struct.sk_buff* %62, i32 %63)
  store %struct.sk_buff* %64, %struct.sk_buff** %4, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = icmp ne %struct.sk_buff* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %61
  %68 = load i64, i64* @NET_XMIT_DROP, align 8
  store i64 %68, i64* %3, align 8
  br label %134

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %60
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = load %struct.net_device*, %struct.net_device** %5, align 8
  %73 = call i32 @lowpan_header(%struct.sk_buff* %71, %struct.net_device* %72, i64* %9, i64* %10)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = call i32 @kfree_skb(%struct.sk_buff* %77)
  %79 = load i64, i64* @NET_XMIT_DROP, align 8
  store i64 %79, i64* %3, align 8
  br label %134

80:                                               ; preds = %70
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = call i64 @ieee802154_hdr_peek(%struct.sk_buff* %81, %struct.ieee802154_hdr* %6)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = call i32 @kfree_skb(%struct.sk_buff* %85)
  %87 = load i64, i64* @NET_XMIT_DROP, align 8
  store i64 %87, i64* %3, align 8
  br label %134

88:                                               ; preds = %80
  %89 = call i32 @ieee802154_max_payload(%struct.ieee802154_hdr* %6)
  store i32 %89, i32* %7, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = call i32 @skb_tail_pointer(%struct.sk_buff* %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = call i32 @skb_network_header(%struct.sk_buff* %92)
  %94 = sub nsw i32 %91, %93
  %95 = load i32, i32* %7, align 4
  %96 = icmp sle i32 %94, %95
  br i1 %96, label %97, label %119

97:                                               ; preds = %88
  %98 = load %struct.net_device*, %struct.net_device** %5, align 8
  %99 = call %struct.TYPE_4__* @lowpan_802154_dev(%struct.net_device* %98)
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load %struct.net_device*, %struct.net_device** %5, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  %109 = load i64, i64* %9, align 8
  %110 = load %struct.net_device*, %struct.net_device** %5, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %109
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %112, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %118 = call i64 @dev_queue_xmit(%struct.sk_buff* %117)
  store i64 %118, i64* %3, align 8
  br label %134

119:                                              ; preds = %88
  %120 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %121 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %122 = load %struct.net_device*, %struct.net_device** %5, align 8
  %123 = load i64, i64* %9, align 8
  %124 = load i64, i64* %10, align 8
  %125 = call i64 @lowpan_xmit_fragmented(%struct.sk_buff* %121, %struct.net_device* %122, %struct.ieee802154_hdr* %6, i64 %123, i64 %124)
  store i64 %125, i64* %12, align 8
  %126 = load i64, i64* %12, align 8
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %119
  %129 = load i64, i64* @NET_XMIT_DROP, align 8
  br label %132

130:                                              ; preds = %119
  %131 = load i64, i64* %12, align 8
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i64 [ %129, %128 ], [ %131, %130 ]
  store i64 %133, i64* %3, align 8
  br label %134

134:                                              ; preds = %132, %97, %84, %76, %67, %56
  %135 = load i64, i64* %3, align 8
  ret i64 %135
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i64 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i64, i64, i32) #1

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_unshare(%struct.sk_buff*, i32) #1

declare dso_local i32 @lowpan_header(%struct.sk_buff*, %struct.net_device*, i64*, i64*) #1

declare dso_local i64 @ieee802154_hdr_peek(%struct.sk_buff*, %struct.ieee802154_hdr*) #1

declare dso_local i32 @ieee802154_max_payload(%struct.ieee802154_hdr*) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @lowpan_802154_dev(%struct.net_device*) #1

declare dso_local i64 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i64 @lowpan_xmit_fragmented(%struct.sk_buff*, %struct.net_device*, %struct.ieee802154_hdr*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
