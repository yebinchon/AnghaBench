; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_nf_bridge_update_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_nf_bridge_update_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8* }
%struct.nf_bridge_info = type { i32 }

@ETH_P_8021Q = common dso_local global i32 0, align 4
@ETH_P_PPP_SES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_bridge_update_protocol(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.nf_bridge_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %4 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %5 = call %struct.nf_bridge_info* @nf_bridge_info_get(%struct.sk_buff* %4)
  store %struct.nf_bridge_info* %5, %struct.nf_bridge_info** %3, align 8
  %6 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %3, align 8
  %7 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %20 [
    i32 130, label %9
    i32 129, label %14
    i32 128, label %19
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* @ETH_P_8021Q, align 4
  %11 = call i8* @htons(i32 %10)
  %12 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  br label %20

14:                                               ; preds = %1
  %15 = load i32, i32* @ETH_P_PPP_SES, align 4
  %16 = call i8* @htons(i32 %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %1, %19, %14, %9
  ret void
}

declare dso_local %struct.nf_bridge_info* @nf_bridge_info_get(%struct.sk_buff*) #1

declare dso_local i8* @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
