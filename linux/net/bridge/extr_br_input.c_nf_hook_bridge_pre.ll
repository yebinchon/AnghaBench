; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_input.c_nf_hook_bridge_pre.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_input.c_nf_hook_bridge_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@RX_HANDLER_CONSUMED = common dso_local global i32 0, align 4
@NFPROTO_BRIDGE = common dso_local global i64 0, align 8
@NF_BR_PRE_ROUTING = common dso_local global i64 0, align 8
@NF_VERDICT_MASK = common dso_local global i32 0, align 4
@RX_HANDLER_PASS = common dso_local global i32 0, align 4
@nf_hooks_needed = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sk_buff**)* @nf_hook_bridge_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_hook_bridge_pre(%struct.sk_buff* %0, %struct.sk_buff** %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff**, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %4, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.net* @dev_net(i32 %7)
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = call i32 @br_handle_frame_finish(%struct.net* %8, i32* null, %struct.sk_buff* %9)
  %11 = load i32, i32* @RX_HANDLER_CONSUMED, align 4
  ret i32 %11
}

declare dso_local i32 @br_handle_frame_finish(%struct.net*, i32*, %struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
