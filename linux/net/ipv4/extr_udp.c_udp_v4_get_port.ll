; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_udp_v4_get_port.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_udp_v4_get_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@INADDR_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_v4_get_port(%struct.sock* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call i32 @sock_net(%struct.sock* %7)
  %9 = load i32, i32* @INADDR_ANY, align 4
  %10 = call i32 @htonl(i32 %9)
  %11 = load i16, i16* %4, align 2
  %12 = call i32 @ipv4_portaddr_hash(i32 %8, i32 %10, i16 zeroext %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call i32 @sock_net(%struct.sock* %13)
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = call %struct.TYPE_4__* @inet_sk(%struct.sock* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ipv4_portaddr_hash(i32 %14, i32 %18, i16 zeroext 0)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = call %struct.TYPE_3__* @udp_sk(%struct.sock* %21)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = load i16, i16* %4, align 2
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @udp_lib_get_port(%struct.sock* %24, i16 zeroext %25, i32 %26)
  ret i32 %27
}

declare dso_local i32 @ipv4_portaddr_hash(i32, i32, i16 zeroext) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local %struct.TYPE_4__* @inet_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_3__* @udp_sk(%struct.sock*) #1

declare dso_local i32 @udp_lib_get_port(%struct.sock*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
