; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_ovs_nla_free_set_action.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_ovs_nla_free_set_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.ovs_tunnel_info = type { i64 }
%struct.dst_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlattr*)* @ovs_nla_free_set_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ovs_nla_free_set_action(%struct.nlattr* %0) #0 {
  %2 = alloca %struct.nlattr*, align 8
  %3 = alloca %struct.nlattr*, align 8
  %4 = alloca %struct.ovs_tunnel_info*, align 8
  store %struct.nlattr* %0, %struct.nlattr** %2, align 8
  %5 = load %struct.nlattr*, %struct.nlattr** %2, align 8
  %6 = call i8* @nla_data(%struct.nlattr* %5)
  %7 = bitcast i8* %6 to %struct.nlattr*
  store %struct.nlattr* %7, %struct.nlattr** %3, align 8
  %8 = load %struct.nlattr*, %struct.nlattr** %3, align 8
  %9 = call i32 @nla_type(%struct.nlattr* %8)
  switch i32 %9, label %19 [
    i32 128, label %10
  ]

10:                                               ; preds = %1
  %11 = load %struct.nlattr*, %struct.nlattr** %3, align 8
  %12 = call i8* @nla_data(%struct.nlattr* %11)
  %13 = bitcast i8* %12 to %struct.ovs_tunnel_info*
  store %struct.ovs_tunnel_info* %13, %struct.ovs_tunnel_info** %4, align 8
  %14 = load %struct.ovs_tunnel_info*, %struct.ovs_tunnel_info** %4, align 8
  %15 = getelementptr inbounds %struct.ovs_tunnel_info, %struct.ovs_tunnel_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.dst_entry*
  %18 = call i32 @dst_release(%struct.dst_entry* %17)
  br label %19

19:                                               ; preds = %1, %10
  ret void
}

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_type(%struct.nlattr*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
