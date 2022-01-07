; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_gre.c_ip6gre_dellink.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_gre.c_ip6gre_dellink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.list_head = type { i32 }
%struct.net = type { i32 }
%struct.ip6gre_net = type { %struct.net_device* }

@ip6gre_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.list_head*)* @ip6gre_dellink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6gre_dellink(%struct.net_device* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.ip6gre_net*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.net* @dev_net(%struct.net_device* %7)
  store %struct.net* %8, %struct.net** %5, align 8
  %9 = load %struct.net*, %struct.net** %5, align 8
  %10 = load i32, i32* @ip6gre_net_id, align 4
  %11 = call %struct.ip6gre_net* @net_generic(%struct.net* %9, i32 %10)
  store %struct.ip6gre_net* %11, %struct.ip6gre_net** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = load %struct.ip6gre_net*, %struct.ip6gre_net** %6, align 8
  %14 = getelementptr inbounds %struct.ip6gre_net, %struct.ip6gre_net* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  %16 = icmp ne %struct.net_device* %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = load %struct.list_head*, %struct.list_head** %4, align 8
  %20 = call i32 @unregister_netdevice_queue(%struct.net_device* %18, %struct.list_head* %19)
  br label %21

21:                                               ; preds = %17, %2
  ret void
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.ip6gre_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @unregister_netdevice_queue(%struct.net_device*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
