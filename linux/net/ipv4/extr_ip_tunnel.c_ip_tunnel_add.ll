; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel.c_ip_tunnel_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel.c_ip_tunnel_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_tunnel_net = type { i32 }
%struct.ip_tunnel = type { i32, i64, i32 }
%struct.hlist_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_tunnel_net*, %struct.ip_tunnel*)* @ip_tunnel_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_tunnel_add(%struct.ip_tunnel_net* %0, %struct.ip_tunnel* %1) #0 {
  %3 = alloca %struct.ip_tunnel_net*, align 8
  %4 = alloca %struct.ip_tunnel*, align 8
  %5 = alloca %struct.hlist_head*, align 8
  store %struct.ip_tunnel_net* %0, %struct.ip_tunnel_net** %3, align 8
  store %struct.ip_tunnel* %1, %struct.ip_tunnel** %4, align 8
  %6 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %3, align 8
  %7 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %8 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %7, i32 0, i32 2
  %9 = call %struct.hlist_head* @ip_bucket(%struct.ip_tunnel_net* %6, i32* %8)
  store %struct.hlist_head* %9, %struct.hlist_head** %5, align 8
  %10 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %11 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %3, align 8
  %16 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %19 = call i32 @rcu_assign_pointer(i32 %17, %struct.ip_tunnel* %18)
  br label %20

20:                                               ; preds = %14, %2
  %21 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %22 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %21, i32 0, i32 0
  %23 = load %struct.hlist_head*, %struct.hlist_head** %5, align 8
  %24 = call i32 @hlist_add_head_rcu(i32* %22, %struct.hlist_head* %23)
  ret void
}

declare dso_local %struct.hlist_head* @ip_bucket(%struct.ip_tunnel_net*, i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.ip_tunnel*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, %struct.hlist_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
