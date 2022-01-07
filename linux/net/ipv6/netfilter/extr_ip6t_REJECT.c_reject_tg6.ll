; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6t_REJECT.c_reject_tg6.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6t_REJECT.c_reject_tg6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.ip6t_reject_info* }
%struct.ip6t_reject_info = type { i32 }
%struct.net = type { i32 }

@ICMPV6_NOROUTE = common dso_local global i32 0, align 4
@ICMPV6_ADM_PROHIBITED = common dso_local global i32 0, align 4
@ICMPV6_NOT_NEIGHBOUR = common dso_local global i32 0, align 4
@ICMPV6_ADDR_UNREACH = common dso_local global i32 0, align 4
@ICMPV6_PORT_UNREACH = common dso_local global i32 0, align 4
@ICMPV6_POLICY_FAIL = common dso_local global i32 0, align 4
@ICMPV6_REJECT_ROUTE = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @reject_tg6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reject_tg6(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.ip6t_reject_info*, align 8
  %6 = alloca %struct.net*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %7 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %8 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %7, i32 0, i32 0
  %9 = load %struct.ip6t_reject_info*, %struct.ip6t_reject_info** %8, align 8
  store %struct.ip6t_reject_info* %9, %struct.ip6t_reject_info** %5, align 8
  %10 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %11 = call %struct.net* @xt_net(%struct.xt_action_param* %10)
  store %struct.net* %11, %struct.net** %6, align 8
  %12 = load %struct.ip6t_reject_info*, %struct.ip6t_reject_info** %5, align 8
  %13 = getelementptr inbounds %struct.ip6t_reject_info, %struct.ip6t_reject_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %71 [
    i32 132, label %15
    i32 135, label %22
    i32 133, label %29
    i32 136, label %36
    i32 130, label %43
    i32 134, label %50
    i32 128, label %51
    i32 131, label %57
    i32 129, label %64
  ]

15:                                               ; preds = %2
  %16 = load %struct.net*, %struct.net** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = load i32, i32* @ICMPV6_NOROUTE, align 4
  %19 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %20 = call i32 @xt_hooknum(%struct.xt_action_param* %19)
  %21 = call i32 @nf_send_unreach6(%struct.net* %16, %struct.sk_buff* %17, i32 %18, i32 %20)
  br label %71

22:                                               ; preds = %2
  %23 = load %struct.net*, %struct.net** %6, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = load i32, i32* @ICMPV6_ADM_PROHIBITED, align 4
  %26 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %27 = call i32 @xt_hooknum(%struct.xt_action_param* %26)
  %28 = call i32 @nf_send_unreach6(%struct.net* %23, %struct.sk_buff* %24, i32 %25, i32 %27)
  br label %71

29:                                               ; preds = %2
  %30 = load %struct.net*, %struct.net** %6, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = load i32, i32* @ICMPV6_NOT_NEIGHBOUR, align 4
  %33 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %34 = call i32 @xt_hooknum(%struct.xt_action_param* %33)
  %35 = call i32 @nf_send_unreach6(%struct.net* %30, %struct.sk_buff* %31, i32 %32, i32 %34)
  br label %71

36:                                               ; preds = %2
  %37 = load %struct.net*, %struct.net** %6, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = load i32, i32* @ICMPV6_ADDR_UNREACH, align 4
  %40 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %41 = call i32 @xt_hooknum(%struct.xt_action_param* %40)
  %42 = call i32 @nf_send_unreach6(%struct.net* %37, %struct.sk_buff* %38, i32 %39, i32 %41)
  br label %71

43:                                               ; preds = %2
  %44 = load %struct.net*, %struct.net** %6, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = load i32, i32* @ICMPV6_PORT_UNREACH, align 4
  %47 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %48 = call i32 @xt_hooknum(%struct.xt_action_param* %47)
  %49 = call i32 @nf_send_unreach6(%struct.net* %44, %struct.sk_buff* %45, i32 %46, i32 %48)
  br label %71

50:                                               ; preds = %2
  br label %71

51:                                               ; preds = %2
  %52 = load %struct.net*, %struct.net** %6, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %54 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %55 = call i32 @xt_hooknum(%struct.xt_action_param* %54)
  %56 = call i32 @nf_send_reset6(%struct.net* %52, %struct.sk_buff* %53, i32 %55)
  br label %71

57:                                               ; preds = %2
  %58 = load %struct.net*, %struct.net** %6, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %60 = load i32, i32* @ICMPV6_POLICY_FAIL, align 4
  %61 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %62 = call i32 @xt_hooknum(%struct.xt_action_param* %61)
  %63 = call i32 @nf_send_unreach6(%struct.net* %58, %struct.sk_buff* %59, i32 %60, i32 %62)
  br label %71

64:                                               ; preds = %2
  %65 = load %struct.net*, %struct.net** %6, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = load i32, i32* @ICMPV6_REJECT_ROUTE, align 4
  %68 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %69 = call i32 @xt_hooknum(%struct.xt_action_param* %68)
  %70 = call i32 @nf_send_unreach6(%struct.net* %65, %struct.sk_buff* %66, i32 %67, i32 %69)
  br label %71

71:                                               ; preds = %2, %64, %57, %51, %50, %43, %36, %29, %22, %15
  %72 = load i32, i32* @NF_DROP, align 4
  ret i32 %72
}

declare dso_local %struct.net* @xt_net(%struct.xt_action_param*) #1

declare dso_local i32 @nf_send_unreach6(%struct.net*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @xt_hooknum(%struct.xt_action_param*) #1

declare dso_local i32 @nf_send_reset6(%struct.net*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
