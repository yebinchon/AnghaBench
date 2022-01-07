; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_route_ptp_hello.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_route_ptp_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }

@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* @dn_route_ptp_hello to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_route_ptp_hello(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %8 = call i32 @dn_dev_hello(%struct.sk_buff* %7)
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = call i32 @dn_neigh_pointopoint_hello(%struct.sk_buff* %9)
  %11 = load i32, i32* @NET_RX_SUCCESS, align 4
  ret i32 %11
}

declare dso_local i32 @dn_dev_hello(%struct.sk_buff*) #1

declare dso_local i32 @dn_neigh_pointopoint_hello(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
