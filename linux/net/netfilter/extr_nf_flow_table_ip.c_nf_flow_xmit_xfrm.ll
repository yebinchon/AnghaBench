; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_ip.c_nf_flow_xmit_xfrm.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_ip.c_nf_flow_xmit_xfrm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_hook_state = type { i32, i32 }
%struct.dst_entry = type { i32 }

@NF_STOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_hook_state*, %struct.dst_entry*)* @nf_flow_xmit_xfrm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_flow_xmit_xfrm(%struct.sk_buff* %0, %struct.nf_hook_state* %1, %struct.dst_entry* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nf_hook_state*, align 8
  %6 = alloca %struct.dst_entry*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nf_hook_state* %1, %struct.nf_hook_state** %5, align 8
  store %struct.dst_entry* %2, %struct.dst_entry** %6, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call i32 @skb_orphan(%struct.sk_buff* %7)
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %11 = call i32 @skb_dst_set_noref(%struct.sk_buff* %9, %struct.dst_entry* %10)
  %12 = load %struct.nf_hook_state*, %struct.nf_hook_state** %5, align 8
  %13 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.nf_hook_state*, %struct.nf_hook_state** %5, align 8
  %16 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32 @dst_output(i32 %14, i32 %17, %struct.sk_buff* %18)
  %20 = load i32, i32* @NF_STOLEN, align 4
  ret i32 %20
}

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_set_noref(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local i32 @dst_output(i32, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
