; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_tnl = type { i32, %struct.net* }
%struct.net = type { i32 }
%struct.__ip6_tnl_parm = type { i32 }
%struct.ip6_tnl_net = type { i32 }

@ip6_tnl_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip6_tnl*, %struct.__ip6_tnl_parm*)* @ip6_tnl_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_tnl_update(%struct.ip6_tnl* %0, %struct.__ip6_tnl_parm* %1) #0 {
  %3 = alloca %struct.ip6_tnl*, align 8
  %4 = alloca %struct.__ip6_tnl_parm*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.ip6_tnl_net*, align 8
  %7 = alloca i32, align 4
  store %struct.ip6_tnl* %0, %struct.ip6_tnl** %3, align 8
  store %struct.__ip6_tnl_parm* %1, %struct.__ip6_tnl_parm** %4, align 8
  %8 = load %struct.ip6_tnl*, %struct.ip6_tnl** %3, align 8
  %9 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %8, i32 0, i32 1
  %10 = load %struct.net*, %struct.net** %9, align 8
  store %struct.net* %10, %struct.net** %5, align 8
  %11 = load %struct.net*, %struct.net** %5, align 8
  %12 = load i32, i32* @ip6_tnl_net_id, align 4
  %13 = call %struct.ip6_tnl_net* @net_generic(%struct.net* %11, i32 %12)
  store %struct.ip6_tnl_net* %13, %struct.ip6_tnl_net** %6, align 8
  %14 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %6, align 8
  %15 = load %struct.ip6_tnl*, %struct.ip6_tnl** %3, align 8
  %16 = call i32 @ip6_tnl_unlink(%struct.ip6_tnl_net* %14, %struct.ip6_tnl* %15)
  %17 = call i32 (...) @synchronize_net()
  %18 = load %struct.ip6_tnl*, %struct.ip6_tnl** %3, align 8
  %19 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %20 = call i32 @ip6_tnl_change(%struct.ip6_tnl* %18, %struct.__ip6_tnl_parm* %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %6, align 8
  %22 = load %struct.ip6_tnl*, %struct.ip6_tnl** %3, align 8
  %23 = call i32 @ip6_tnl_link(%struct.ip6_tnl_net* %21, %struct.ip6_tnl* %22)
  %24 = load %struct.ip6_tnl*, %struct.ip6_tnl** %3, align 8
  %25 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @netdev_state_change(i32 %26)
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local %struct.ip6_tnl_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @ip6_tnl_unlink(%struct.ip6_tnl_net*, %struct.ip6_tnl*) #1

declare dso_local i32 @synchronize_net(...) #1

declare dso_local i32 @ip6_tnl_change(%struct.ip6_tnl*, %struct.__ip6_tnl_parm*) #1

declare dso_local i32 @ip6_tnl_link(%struct.ip6_tnl_net*, %struct.ip6_tnl*) #1

declare dso_local i32 @netdev_state_change(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
