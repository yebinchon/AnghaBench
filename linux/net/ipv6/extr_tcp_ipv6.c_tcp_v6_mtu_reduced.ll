; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_tcp_ipv6.c_tcp_v6_mtu_reduced.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_tcp_ipv6.c_tcp_v6_mtu_reduced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dst_entry = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@TCPF_LISTEN = common dso_local global i32 0, align 4
@TCPF_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @tcp_v6_mtu_reduced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_v6_mtu_reduced(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.dst_entry*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = getelementptr inbounds %struct.sock, %struct.sock* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = shl i32 1, %6
  %8 = load i32, i32* @TCPF_LISTEN, align 4
  %9 = load i32, i32* @TCPF_CLOSE, align 4
  %10 = or i32 %8, %9
  %11 = and i32 %7, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %39

14:                                               ; preds = %1
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = load %struct.sock*, %struct.sock** %2, align 8
  %17 = call %struct.TYPE_3__* @tcp_sk(%struct.sock* %16)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.dst_entry* @inet6_csk_update_pmtu(%struct.sock* %15, i32 %19)
  store %struct.dst_entry* %20, %struct.dst_entry** %3, align 8
  %21 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %22 = icmp ne %struct.dst_entry* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  br label %39

24:                                               ; preds = %14
  %25 = load %struct.sock*, %struct.sock** %2, align 8
  %26 = call %struct.TYPE_4__* @inet_csk(%struct.sock* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %30 = call i64 @dst_mtu(%struct.dst_entry* %29)
  %31 = icmp sgt i64 %28, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load %struct.sock*, %struct.sock** %2, align 8
  %34 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %35 = call i64 @dst_mtu(%struct.dst_entry* %34)
  %36 = call i32 @tcp_sync_mss(%struct.sock* %33, i64 %35)
  %37 = load %struct.sock*, %struct.sock** %2, align 8
  %38 = call i32 @tcp_simple_retransmit(%struct.sock* %37)
  br label %39

39:                                               ; preds = %13, %23, %32, %24
  ret void
}

declare dso_local %struct.dst_entry* @inet6_csk_update_pmtu(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_3__* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @inet_csk(%struct.sock*) #1

declare dso_local i64 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i32 @tcp_sync_mss(%struct.sock*, i64) #1

declare dso_local i32 @tcp_simple_retransmit(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
