; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow.c_parse_vlan_tag.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow.c_parse_vlan_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.vlan_head = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@VLAN_CFI_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.vlan_head*, i32)* @parse_vlan_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_vlan_tag(%struct.sk_buff* %0, %struct.vlan_head* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.vlan_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vlan_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.vlan_head* %1, %struct.vlan_head** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to %struct.vlan_head*
  store %struct.vlan_head* %16, %struct.vlan_head** %8, align 8
  %17 = load %struct.vlan_head*, %struct.vlan_head** %8, align 8
  %18 = getelementptr inbounds %struct.vlan_head, %struct.vlan_head* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @eth_type_vlan(i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %100

27:                                               ; preds = %3
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %31, 12
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %100

37:                                               ; preds = %27
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i32 @pskb_may_pull(%struct.sk_buff* %38, i32 12)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %100

48:                                               ; preds = %37
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to %struct.vlan_head*
  store %struct.vlan_head* %53, %struct.vlan_head** %8, align 8
  %54 = load %struct.vlan_head*, %struct.vlan_head** %8, align 8
  %55 = getelementptr inbounds %struct.vlan_head, %struct.vlan_head* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @VLAN_CFI_MASK, align 4
  %58 = call i32 @htons(i32 %57)
  %59 = or i32 %56, %58
  %60 = load %struct.vlan_head*, %struct.vlan_head** %6, align 8
  %61 = getelementptr inbounds %struct.vlan_head, %struct.vlan_head* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.vlan_head*, %struct.vlan_head** %8, align 8
  %63 = getelementptr inbounds %struct.vlan_head, %struct.vlan_head* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.vlan_head*, %struct.vlan_head** %6, align 8
  %66 = getelementptr inbounds %struct.vlan_head, %struct.vlan_head* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %96

70:                                               ; preds = %48
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = call i32 @skb_mac_header(%struct.sk_buff* %74)
  %76 = sub nsw i32 %73, %75
  store i32 %76, i32* %9, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @__skb_push(%struct.sk_buff* %77, i32 %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = call i32 @__skb_vlan_pop(%struct.sk_buff* %80, i32* %10)
  store i32 %81, i32* %11, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @__skb_pull(%struct.sk_buff* %82, i32 %83)
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %70
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %4, align 4
  br label %100

89:                                               ; preds = %70
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = load %struct.vlan_head*, %struct.vlan_head** %6, align 8
  %92 = getelementptr inbounds %struct.vlan_head, %struct.vlan_head* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %90, i32 %93, i32 %94)
  br label %99

96:                                               ; preds = %48
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = call i32 @__skb_pull(%struct.sk_buff* %97, i32 8)
  br label %99

99:                                               ; preds = %96, %89
  store i32 1, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %87, %45, %36, %26
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @eth_type_vlan(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_vlan_pop(%struct.sk_buff*, i32*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
