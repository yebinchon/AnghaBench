; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_vti.c_vti_newlink.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_vti.c_vti_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ip_tunnel_parm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @vti_newlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vti_newlink(%struct.net* %0, %struct.net_device* %1, %struct.nlattr** %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.netlink_ext_ack*, align 8
  %11 = alloca %struct.ip_tunnel_parm, align 4
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %8, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %9, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %14 = call i32 @vti_netlink_parms(%struct.nlattr** %13, %struct.ip_tunnel_parm* %11, i32* %12)
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %17 = load i32, i32* %12, align 4
  %18 = call i32 @ip_tunnel_newlink(%struct.net_device* %15, %struct.nlattr** %16, %struct.ip_tunnel_parm* %11, i32 %17)
  ret i32 %18
}

declare dso_local i32 @vti_netlink_parms(%struct.nlattr**, %struct.ip_tunnel_parm*, i32*) #1

declare dso_local i32 @ip_tunnel_newlink(%struct.net_device*, %struct.nlattr**, %struct.ip_tunnel_parm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
