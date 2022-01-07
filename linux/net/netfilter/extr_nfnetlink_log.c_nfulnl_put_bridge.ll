; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_log.c_nfulnl_put_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_log.c_nfulnl_put_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfulnl_instance = type { i32 }
%struct.sk_buff = type { i64, i64, i32, i32 }
%struct.nlattr = type { i32 }

@NFULA_VLAN = common dso_local global i32 0, align 4
@NFULA_VLAN_TCI = common dso_local global i32 0, align 4
@NFULA_VLAN_PROTO = common dso_local global i32 0, align 4
@NFULA_L2HDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfulnl_instance*, %struct.sk_buff*)* @nfulnl_put_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfulnl_put_bridge(%struct.nfulnl_instance* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfulnl_instance*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca i32, align 4
  store %struct.nfulnl_instance* %0, %struct.nfulnl_instance** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = call i32 @skb_mac_header_was_set(%struct.sk_buff* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %83

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %12
  %17 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %4, align 8
  %18 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NFULA_VLAN, align 4
  %21 = call %struct.nlattr* @nla_nest_start(i32 %19, i32 %20)
  store %struct.nlattr* %21, %struct.nlattr** %6, align 8
  %22 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %23 = icmp ne %struct.nlattr* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  br label %82

25:                                               ; preds = %16
  %26 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %4, align 8
  %27 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NFULA_VLAN_TCI, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @htons(i32 %32)
  %34 = call i64 @nla_put_be16(i32 %28, i32 %29, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %25
  %37 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %4, align 8
  %38 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @NFULA_VLAN_PROTO, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @nla_put_be16(i32 %39, i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36, %25
  br label %82

47:                                               ; preds = %36
  %48 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %4, align 8
  %49 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %52 = call i32 @nla_nest_end(i32 %50, %struct.nlattr* %51)
  br label %53

53:                                               ; preds = %47, %12
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %53
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %7, align 4
  %70 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %4, align 8
  %71 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @NFULA_L2HDR, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = call i32 @skb_mac_header(%struct.sk_buff* %75)
  %77 = call i64 @nla_put(i32 %72, i32 %73, i32 %74, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %61
  br label %82

80:                                               ; preds = %61
  br label %81

81:                                               ; preds = %80, %53
  store i32 0, i32* %3, align 4
  br label %83

82:                                               ; preds = %79, %46, %24
  store i32 -1, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %81, %11
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @skb_mac_header_was_set(%struct.sk_buff*) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local %struct.nlattr* @nla_nest_start(i32, i32) #1

declare dso_local i64 @nla_put_be16(i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @nla_nest_end(i32, %struct.nlattr*) #1

declare dso_local i64 @nla_put(i32, i32, i32, i32) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
