; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_xfrm6_tunnel.c_xfrm6_tunnel_spi_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_xfrm6_tunnel.c_xfrm6_tunnel_spi_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.xfrm6_tunnel_spi = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm6_tunnel_spi_lookup(%struct.net* %0, i32* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.xfrm6_tunnel_spi*, align 8
  %6 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = call i32 (...) @rcu_read_lock_bh()
  %8 = load %struct.net*, %struct.net** %3, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call %struct.xfrm6_tunnel_spi* @__xfrm6_tunnel_spi_lookup(%struct.net* %8, i32* %9)
  store %struct.xfrm6_tunnel_spi* %10, %struct.xfrm6_tunnel_spi** %5, align 8
  %11 = load %struct.xfrm6_tunnel_spi*, %struct.xfrm6_tunnel_spi** %5, align 8
  %12 = icmp ne %struct.xfrm6_tunnel_spi* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.xfrm6_tunnel_spi*, %struct.xfrm6_tunnel_spi** %5, align 8
  %15 = getelementptr inbounds %struct.xfrm6_tunnel_spi, %struct.xfrm6_tunnel_spi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi i32 [ %16, %13 ], [ 0, %17 ]
  store i32 %19, i32* %6, align 4
  %20 = call i32 (...) @rcu_read_unlock_bh()
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @htonl(i32 %21)
  ret i32 %22
}

declare dso_local i32 @rcu_read_lock_bh(...) #1

declare dso_local %struct.xfrm6_tunnel_spi* @__xfrm6_tunnel_spi_lookup(%struct.net*, i32*) #1

declare dso_local i32 @rcu_read_unlock_bh(...) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
