; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_mpls.c_tcf_mpls_act.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_mpls.c_tcf_mpls_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.tc_action = type { i32 }
%struct.tcf_result = type { i32 }
%struct.tcf_mpls = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tcf_mpls_params = type { i32, i32 }

@TC_ACT_SHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)* @tcf_mpls_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_mpls_act(%struct.sk_buff* %0, %struct.tc_action* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tc_action*, align 8
  %7 = alloca %struct.tcf_result*, align 8
  %8 = alloca %struct.tcf_mpls*, align 8
  %9 = alloca %struct.tcf_mpls_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tc_action* %1, %struct.tc_action** %6, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %7, align 8
  %13 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %14 = call %struct.tcf_mpls* @to_mpls(%struct.tc_action* %13)
  store %struct.tcf_mpls* %14, %struct.tcf_mpls** %8, align 8
  %15 = load %struct.tcf_mpls*, %struct.tcf_mpls** %8, align 8
  %16 = getelementptr inbounds %struct.tcf_mpls, %struct.tcf_mpls* %15, i32 0, i32 3
  %17 = call i32 @tcf_lastuse_update(i32* %16)
  %18 = load %struct.tcf_mpls*, %struct.tcf_mpls** %8, align 8
  %19 = getelementptr inbounds %struct.tcf_mpls, %struct.tcf_mpls* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @this_cpu_ptr(i32 %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call i32 @bstats_cpu_update(i32 %22, %struct.sk_buff* %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i64 @skb_at_tc_ingress(%struct.sk_buff* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %3
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @skb_push_rcsum(%struct.sk_buff* %29, i32 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %12, align 4
  br label %43

37:                                               ; preds = %3
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i32 @skb_network_header(%struct.sk_buff* %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call i32 @skb_mac_header(%struct.sk_buff* %40)
  %42 = sub nsw i32 %39, %41
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %37, %28
  %44 = load %struct.tcf_mpls*, %struct.tcf_mpls** %8, align 8
  %45 = getelementptr inbounds %struct.tcf_mpls, %struct.tcf_mpls* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @READ_ONCE(i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.tcf_mpls*, %struct.tcf_mpls** %8, align 8
  %49 = getelementptr inbounds %struct.tcf_mpls, %struct.tcf_mpls* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.tcf_mpls_params* @rcu_dereference_bh(i32 %50)
  store %struct.tcf_mpls_params* %51, %struct.tcf_mpls_params** %9, align 8
  %52 = load %struct.tcf_mpls_params*, %struct.tcf_mpls_params** %9, align 8
  %53 = getelementptr inbounds %struct.tcf_mpls_params, %struct.tcf_mpls_params* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %102 [
    i32 129, label %55
    i32 128, label %65
    i32 130, label %85
    i32 131, label %96
  ]

55:                                               ; preds = %43
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = load %struct.tcf_mpls_params*, %struct.tcf_mpls_params** %9, align 8
  %58 = getelementptr inbounds %struct.tcf_mpls_params, %struct.tcf_mpls_params* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @skb_mpls_pop(%struct.sk_buff* %56, i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %114

64:                                               ; preds = %55
  br label %102

65:                                               ; preds = %43
  %66 = load %struct.tcf_mpls_params*, %struct.tcf_mpls_params** %9, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @eth_p_mpls(i32 %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @tcf_mpls_get_lse(i32* null, %struct.tcf_mpls_params* %66, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.tcf_mpls_params*, %struct.tcf_mpls_params** %9, align 8
  %78 = getelementptr inbounds %struct.tcf_mpls_params, %struct.tcf_mpls_params* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @skb_mpls_push(%struct.sk_buff* %75, i32 %76, i32 %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %65
  br label %114

84:                                               ; preds = %65
  br label %102

85:                                               ; preds = %43
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = call i32* @mpls_hdr(%struct.sk_buff* %86)
  %88 = load %struct.tcf_mpls_params*, %struct.tcf_mpls_params** %9, align 8
  %89 = call i32 @tcf_mpls_get_lse(i32* %87, %struct.tcf_mpls_params* %88, i32 0)
  store i32 %89, i32* %10, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @skb_mpls_update_lse(%struct.sk_buff* %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %114

95:                                               ; preds = %85
  br label %102

96:                                               ; preds = %43
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = call i32 @skb_mpls_dec_ttl(%struct.sk_buff* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %114

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %43, %101, %95, %84, %64
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = call i64 @skb_at_tc_ingress(%struct.sk_buff* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @skb_pull_rcsum(%struct.sk_buff* %107, i32 %110)
  br label %112

112:                                              ; preds = %106, %102
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %4, align 4
  br label %122

114:                                              ; preds = %100, %94, %83, %63
  %115 = load %struct.tcf_mpls*, %struct.tcf_mpls** %8, align 8
  %116 = getelementptr inbounds %struct.tcf_mpls, %struct.tcf_mpls* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @this_cpu_ptr(i32 %118)
  %120 = call i32 @qstats_drop_inc(i32 %119)
  %121 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %114, %112
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.tcf_mpls* @to_mpls(%struct.tc_action*) #1

declare dso_local i32 @tcf_lastuse_update(i32*) #1

declare dso_local i32 @bstats_cpu_update(i32, %struct.sk_buff*) #1

declare dso_local i32 @this_cpu_ptr(i32) #1

declare dso_local i64 @skb_at_tc_ingress(%struct.sk_buff*) #1

declare dso_local i32 @skb_push_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local %struct.tcf_mpls_params* @rcu_dereference_bh(i32) #1

declare dso_local i32 @skb_mpls_pop(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @tcf_mpls_get_lse(i32*, %struct.tcf_mpls_params*, i32) #1

declare dso_local i32 @eth_p_mpls(i32) #1

declare dso_local i32 @skb_mpls_push(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32* @mpls_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_mpls_update_lse(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_mpls_dec_ttl(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i32 @qstats_drop_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
