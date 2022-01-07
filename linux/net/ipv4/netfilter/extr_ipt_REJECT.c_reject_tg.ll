; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ipt_REJECT.c_reject_tg.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ipt_REJECT.c_reject_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.ipt_reject_info* }
%struct.ipt_reject_info = type { i32 }

@ICMP_NET_UNREACH = common dso_local global i32 0, align 4
@ICMP_HOST_UNREACH = common dso_local global i32 0, align 4
@ICMP_PROT_UNREACH = common dso_local global i32 0, align 4
@ICMP_PORT_UNREACH = common dso_local global i32 0, align 4
@ICMP_NET_ANO = common dso_local global i32 0, align 4
@ICMP_HOST_ANO = common dso_local global i32 0, align 4
@ICMP_PKT_FILTERED = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @reject_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reject_tg(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.ipt_reject_info*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %7 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %8 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %7, i32 0, i32 0
  %9 = load %struct.ipt_reject_info*, %struct.ipt_reject_info** %8, align 8
  store %struct.ipt_reject_info* %9, %struct.ipt_reject_info** %5, align 8
  %10 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %11 = call i32 @xt_hooknum(%struct.xt_action_param* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.ipt_reject_info*, %struct.ipt_reject_info** %5, align 8
  %13 = getelementptr inbounds %struct.ipt_reject_info, %struct.ipt_reject_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %57 [
    i32 131, label %15
    i32 133, label %20
    i32 129, label %25
    i32 130, label %30
    i32 132, label %35
    i32 134, label %40
    i32 136, label %45
    i32 128, label %50
    i32 135, label %56
  ]

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = load i32, i32* @ICMP_NET_UNREACH, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @nf_send_unreach(%struct.sk_buff* %16, i32 %17, i32 %18)
  br label %57

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = load i32, i32* @ICMP_HOST_UNREACH, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @nf_send_unreach(%struct.sk_buff* %21, i32 %22, i32 %23)
  br label %57

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = load i32, i32* @ICMP_PROT_UNREACH, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @nf_send_unreach(%struct.sk_buff* %26, i32 %27, i32 %28)
  br label %57

30:                                               ; preds = %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = load i32, i32* @ICMP_PORT_UNREACH, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @nf_send_unreach(%struct.sk_buff* %31, i32 %32, i32 %33)
  br label %57

35:                                               ; preds = %2
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = load i32, i32* @ICMP_NET_ANO, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @nf_send_unreach(%struct.sk_buff* %36, i32 %37, i32 %38)
  br label %57

40:                                               ; preds = %2
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = load i32, i32* @ICMP_HOST_ANO, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @nf_send_unreach(%struct.sk_buff* %41, i32 %42, i32 %43)
  br label %57

45:                                               ; preds = %2
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = load i32, i32* @ICMP_PKT_FILTERED, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @nf_send_unreach(%struct.sk_buff* %46, i32 %47, i32 %48)
  br label %57

50:                                               ; preds = %2
  %51 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %52 = call i32 @xt_net(%struct.xt_action_param* %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @nf_send_reset(i32 %52, %struct.sk_buff* %53, i32 %54)
  br label %56

56:                                               ; preds = %2, %50
  br label %57

57:                                               ; preds = %2, %56, %45, %40, %35, %30, %25, %20, %15
  %58 = load i32, i32* @NF_DROP, align 4
  ret i32 %58
}

declare dso_local i32 @xt_hooknum(%struct.xt_action_param*) #1

declare dso_local i32 @nf_send_unreach(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nf_send_reset(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @xt_net(%struct.xt_action_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
