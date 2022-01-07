; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp_tunnel.c_setup_udp_tunnel_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp_tunnel.c_setup_udp_tunnel_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.udp_tunnel_sock_cfg = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_udp_tunnel_sock(%struct.net* %0, %struct.socket* %1, %struct.udp_tunnel_sock_cfg* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.udp_tunnel_sock_cfg*, align 8
  %7 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  store %struct.udp_tunnel_sock_cfg* %2, %struct.udp_tunnel_sock_cfg** %6, align 8
  %8 = load %struct.socket*, %struct.socket** %5, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %10 = load %struct.sock*, %struct.sock** %9, align 8
  store %struct.sock* %10, %struct.sock** %7, align 8
  %11 = load %struct.sock*, %struct.sock** %7, align 8
  %12 = call %struct.TYPE_4__* @inet_sk(%struct.sock* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.sock*, %struct.sock** %7, align 8
  %15 = call i32 @inet_inc_convert_csum(%struct.sock* %14)
  %16 = load %struct.sock*, %struct.sock** %7, align 8
  %17 = load %struct.udp_tunnel_sock_cfg*, %struct.udp_tunnel_sock_cfg** %6, align 8
  %18 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rcu_assign_sk_user_data(%struct.sock* %16, i32 %19)
  %21 = load %struct.udp_tunnel_sock_cfg*, %struct.udp_tunnel_sock_cfg** %6, align 8
  %22 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sock*, %struct.sock** %7, align 8
  %25 = call %struct.TYPE_3__* @udp_sk(%struct.sock* %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 5
  store i32 %23, i32* %26, align 4
  %27 = load %struct.udp_tunnel_sock_cfg*, %struct.udp_tunnel_sock_cfg** %6, align 8
  %28 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sock*, %struct.sock** %7, align 8
  %31 = call %struct.TYPE_3__* @udp_sk(%struct.sock* %30)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  store i32 %29, i32* %32, align 4
  %33 = load %struct.udp_tunnel_sock_cfg*, %struct.udp_tunnel_sock_cfg** %6, align 8
  %34 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sock*, %struct.sock** %7, align 8
  %37 = call %struct.TYPE_3__* @udp_sk(%struct.sock* %36)
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  store i32 %35, i32* %38, align 4
  %39 = load %struct.udp_tunnel_sock_cfg*, %struct.udp_tunnel_sock_cfg** %6, align 8
  %40 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sock*, %struct.sock** %7, align 8
  %43 = call %struct.TYPE_3__* @udp_sk(%struct.sock* %42)
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  %45 = load %struct.udp_tunnel_sock_cfg*, %struct.udp_tunnel_sock_cfg** %6, align 8
  %46 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sock*, %struct.sock** %7, align 8
  %49 = call %struct.TYPE_3__* @udp_sk(%struct.sock* %48)
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.udp_tunnel_sock_cfg*, %struct.udp_tunnel_sock_cfg** %6, align 8
  %52 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sock*, %struct.sock** %7, align 8
  %55 = call %struct.TYPE_3__* @udp_sk(%struct.sock* %54)
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  %57 = load %struct.socket*, %struct.socket** %5, align 8
  %58 = call i32 @udp_tunnel_encap_enable(%struct.socket* %57)
  ret void
}

declare dso_local %struct.TYPE_4__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @inet_inc_convert_csum(%struct.sock*) #1

declare dso_local i32 @rcu_assign_sk_user_data(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_3__* @udp_sk(%struct.sock*) #1

declare dso_local i32 @udp_tunnel_encap_enable(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
