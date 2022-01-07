; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_l2tp.c_l2tp_mt4.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_l2tp.c_l2tp_mt4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { i32 }
%struct.iphdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @l2tp_mt4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_mt4(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %8)
  store %struct.iphdr* %9, %struct.iphdr** %6, align 8
  %10 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %11 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %28 [
    i32 128, label %14
    i32 129, label %21
  ]

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %17 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %18 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @l2tp_udp_mt(%struct.sk_buff* %15, %struct.xt_action_param* %16, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %29

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %24 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %25 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @l2tp_ip_mt(%struct.sk_buff* %22, %struct.xt_action_param* %23, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %21, %14
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @l2tp_udp_mt(%struct.sk_buff*, %struct.xt_action_param*, i32) #1

declare dso_local i32 @l2tp_ip_mt(%struct.sk_buff*, %struct.xt_action_param*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
