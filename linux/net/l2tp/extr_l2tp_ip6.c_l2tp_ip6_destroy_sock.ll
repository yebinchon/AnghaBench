; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ip6.c_l2tp_ip6_destroy_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ip6.c_l2tp_ip6_destroy_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.l2tp_tunnel* }
%struct.l2tp_tunnel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @l2tp_ip6_destroy_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2tp_ip6_destroy_sock(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.l2tp_tunnel*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = getelementptr inbounds %struct.sock, %struct.sock* %4, i32 0, i32 0
  %6 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %5, align 8
  store %struct.l2tp_tunnel* %6, %struct.l2tp_tunnel** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call i32 @lock_sock(%struct.sock* %7)
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call i32 @ip6_flush_pending_frames(%struct.sock* %9)
  %11 = load %struct.sock*, %struct.sock** %2, align 8
  %12 = call i32 @release_sock(%struct.sock* %11)
  %13 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %3, align 8
  %14 = icmp ne %struct.l2tp_tunnel* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %3, align 8
  %17 = call i32 @l2tp_tunnel_delete(%struct.l2tp_tunnel* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = call i32 @inet6_destroy_sock(%struct.sock* %19)
  ret void
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @ip6_flush_pending_frames(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @l2tp_tunnel_delete(%struct.l2tp_tunnel*) #1

declare dso_local i32 @inet6_destroy_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
