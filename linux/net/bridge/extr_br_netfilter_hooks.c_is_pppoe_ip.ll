; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_is_pppoe_ip.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_is_pppoe_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net = type { i32 }
%struct.brnf_net = type { i64 }

@brnf_net_id = common dso_local global i32 0, align 4
@ETH_P_PPP_SES = common dso_local global i32 0, align 4
@PPP_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net*)* @is_pppoe_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_pppoe_ip(%struct.sk_buff* %0, %struct.net* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.brnf_net*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net* %1, %struct.net** %4, align 8
  %6 = load %struct.net*, %struct.net** %4, align 8
  %7 = load i32, i32* @brnf_net_id, align 4
  %8 = call %struct.brnf_net* @net_generic(%struct.net* %6, i32 %7)
  store %struct.brnf_net* %8, %struct.brnf_net** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @ETH_P_PPP_SES, align 4
  %13 = call i64 @htons(i32 %12)
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call i64 @pppoe_proto(%struct.sk_buff* %16)
  %18 = load i32, i32* @PPP_IP, align 4
  %19 = call i64 @htons(i32 %18)
  %20 = icmp eq i64 %17, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.brnf_net*, %struct.brnf_net** %5, align 8
  %23 = getelementptr inbounds %struct.brnf_net, %struct.brnf_net* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %21, %15, %2
  %27 = phi i1 [ false, %15 ], [ false, %2 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  ret i32 %28
}

declare dso_local %struct.brnf_net* @net_generic(%struct.net*, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @pppoe_proto(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
