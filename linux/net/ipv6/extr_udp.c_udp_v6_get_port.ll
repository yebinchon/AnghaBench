; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_udp.c_udp_v6_get_port.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_udp.c_udp_v6_get_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.TYPE_2__ = type { i32 }

@in6addr_any = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_v6_get_port(%struct.sock* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call i32 @sock_net(%struct.sock* %7)
  %9 = load i16, i16* %4, align 2
  %10 = call i32 @ipv6_portaddr_hash(i32 %8, i32* @in6addr_any, i16 zeroext %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call i32 @sock_net(%struct.sock* %11)
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 0
  %15 = call i32 @ipv6_portaddr_hash(i32 %12, i32* %14, i16 zeroext 0)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = call %struct.TYPE_2__* @udp_sk(%struct.sock* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = load i16, i16* %4, align 2
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @udp_lib_get_port(%struct.sock* %20, i16 zeroext %21, i32 %22)
  ret i32 %23
}

declare dso_local i32 @ipv6_portaddr_hash(i32, i32*, i16 zeroext) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @udp_sk(%struct.sock*) #1

declare dso_local i32 @udp_lib_get_port(%struct.sock*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
