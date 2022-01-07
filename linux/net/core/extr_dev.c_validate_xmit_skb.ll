; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_validate_xmit_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_validate_xmit_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.net_device = type { i32 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, %struct.net_device*, i32*)* @validate_xmit_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @validate_xmit_skb(%struct.sk_buff* %0, %struct.net_device* %1, i32* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call i32 @netif_skb_features(%struct.sk_buff* %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.sk_buff* @validate_xmit_vlan(%struct.sk_buff* %12, i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %103

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = call %struct.sk_buff* @sk_validate_xmit_skb(%struct.sk_buff* %23, %struct.net_device* %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %5, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %103

33:                                               ; preds = %22
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @netif_needs_gso(%struct.sk_buff* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call %struct.sk_buff* @skb_gso_segment(%struct.sk_buff* %39, i32 %40)
  store %struct.sk_buff* %41, %struct.sk_buff** %9, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %43 = call i64 @IS_ERR(%struct.sk_buff* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %100

46:                                               ; preds = %38
  %47 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %48 = icmp ne %struct.sk_buff* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i32 @consume_skb(%struct.sk_buff* %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %52, %struct.sk_buff** %5, align 8
  br label %53

53:                                               ; preds = %49, %46
  br label %54

54:                                               ; preds = %53
  br label %94

55:                                               ; preds = %33
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @skb_needs_linearize(%struct.sk_buff* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = call i64 @__skb_linearize(%struct.sk_buff* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %100

65:                                               ; preds = %60, %55
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %93

71:                                               ; preds = %65
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = call i32 @skb_checksum_start_offset(%struct.sk_buff* %78)
  %80 = call i32 @skb_set_inner_transport_header(%struct.sk_buff* %77, i32 %79)
  br label %86

81:                                               ; preds = %71
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = call i32 @skb_checksum_start_offset(%struct.sk_buff* %83)
  %85 = call i32 @skb_set_transport_header(%struct.sk_buff* %82, i32 %84)
  br label %86

86:                                               ; preds = %81, %76
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i64 @skb_csum_hwoffload_help(%struct.sk_buff* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %100

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92, %65
  br label %94

94:                                               ; preds = %93, %54
  %95 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = call %struct.sk_buff* @validate_xmit_xfrm(%struct.sk_buff* %95, i32 %96, i32* %97)
  store %struct.sk_buff* %98, %struct.sk_buff** %5, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %99, %struct.sk_buff** %4, align 8
  br label %107

100:                                              ; preds = %91, %64, %45
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = call i32 @kfree_skb(%struct.sk_buff* %101)
  br label %103

103:                                              ; preds = %100, %32, %21
  %104 = load %struct.net_device*, %struct.net_device** %6, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 0
  %106 = call i32 @atomic_long_inc(i32* %105)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %107

107:                                              ; preds = %103, %94
  %108 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %108
}

declare dso_local i32 @netif_skb_features(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @validate_xmit_vlan(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sk_buff* @sk_validate_xmit_skb(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @netif_needs_gso(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_gso_segment(%struct.sk_buff*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i64 @skb_needs_linearize(%struct.sk_buff*, i32) #1

declare dso_local i64 @__skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_inner_transport_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_checksum_start_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_csum_hwoffload_help(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @validate_xmit_xfrm(%struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
