; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_queue.c_nfqnl_put_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_queue.c_nfqnl_put_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_queue_entry = type { %struct.TYPE_2__, %struct.sk_buff* }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i64, i64, i32, i32 }
%struct.nlattr = type { i32 }

@PF_BRIDGE = common dso_local global i64 0, align 8
@NFQA_VLAN = common dso_local global i32 0, align 4
@NFQA_VLAN_TCI = common dso_local global i32 0, align 4
@NFQA_VLAN_PROTO = common dso_local global i32 0, align 4
@NFQA_L2HDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_queue_entry*, %struct.sk_buff*)* @nfqnl_put_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfqnl_put_bridge(%struct.nf_queue_entry* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_queue_entry*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32, align 4
  store %struct.nf_queue_entry* %0, %struct.nf_queue_entry** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %4, align 8
  %10 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %9, i32 0, i32 1
  %11 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %11, %struct.sk_buff** %6, align 8
  %12 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %4, align 8
  %13 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PF_BRIDGE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call i32 @skb_mac_header_was_set(%struct.sk_buff* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18, %2
  store i32 0, i32* %3, align 4
  br label %84

23:                                               ; preds = %18
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %23
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load i32, i32* @NFQA_VLAN, align 4
  %30 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %28, i32 %29)
  store %struct.nlattr* %30, %struct.nlattr** %7, align 8
  %31 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %32 = icmp ne %struct.nlattr* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %83

34:                                               ; preds = %27
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = load i32, i32* @NFQA_VLAN_TCI, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @htons(i32 %39)
  %41 = call i64 @nla_put_be16(%struct.sk_buff* %35, i32 %36, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %34
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = load i32, i32* @NFQA_VLAN_PROTO, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @nla_put_be16(%struct.sk_buff* %44, i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43, %34
  br label %83

52:                                               ; preds = %43
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %55 = call i32 @nla_nest_end(%struct.sk_buff* %53, %struct.nlattr* %54)
  br label %56

56:                                               ; preds = %52, %23
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %56
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %67, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %8, align 4
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = load i32, i32* @NFQA_L2HDR, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = call i32 @skb_mac_header(%struct.sk_buff* %76)
  %78 = call i64 @nla_put(%struct.sk_buff* %73, i32 %74, i32 %75, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %64
  br label %83

81:                                               ; preds = %64
  br label %82

82:                                               ; preds = %81, %56
  store i32 0, i32* %3, align 4
  br label %84

83:                                               ; preds = %80, %51, %33
  store i32 -1, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %82, %22
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @skb_mac_header_was_set(%struct.sk_buff*) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
