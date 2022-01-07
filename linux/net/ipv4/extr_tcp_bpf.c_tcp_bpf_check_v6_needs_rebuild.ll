; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bpf.c_tcp_bpf_check_v6_needs_rebuild.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bpf.c_tcp_bpf_check_v6_needs_rebuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto = type { i32 }
%struct.sock = type { i64 }

@AF_INET6 = common dso_local global i64 0, align 8
@tcpv6_prot_saved = common dso_local global %struct.proto* null, align 8
@tcpv6_prot_lock = common dso_local global i32 0, align 4
@tcp_bpf_prots = common dso_local global i32* null, align 8
@TCP_BPF_IPV6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.proto*)* @tcp_bpf_check_v6_needs_rebuild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_bpf_check_v6_needs_rebuild(%struct.sock* %0, %struct.proto* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.proto*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.proto* %1, %struct.proto** %4, align 8
  %5 = load %struct.sock*, %struct.sock** %3, align 8
  %6 = getelementptr inbounds %struct.sock, %struct.sock* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @AF_INET6, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %36

10:                                               ; preds = %2
  %11 = load %struct.proto*, %struct.proto** %4, align 8
  %12 = call %struct.proto* @smp_load_acquire(%struct.proto** @tcpv6_prot_saved)
  %13 = icmp ne %struct.proto* %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %10
  %18 = call i32 @spin_lock_bh(i32* @tcpv6_prot_lock)
  %19 = load %struct.proto*, %struct.proto** %4, align 8
  %20 = load %struct.proto*, %struct.proto** @tcpv6_prot_saved, align 8
  %21 = icmp ne %struct.proto* %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %17
  %26 = load i32*, i32** @tcp_bpf_prots, align 8
  %27 = load i64, i64* @TCP_BPF_IPV6, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.proto*, %struct.proto** %4, align 8
  %31 = call i32 @tcp_bpf_rebuild_protos(i32 %29, %struct.proto* %30)
  %32 = load %struct.proto*, %struct.proto** %4, align 8
  %33 = call i32 @smp_store_release(%struct.proto** @tcpv6_prot_saved, %struct.proto* %32)
  br label %34

34:                                               ; preds = %25, %17
  %35 = call i32 @spin_unlock_bh(i32* @tcpv6_prot_lock)
  br label %36

36:                                               ; preds = %34, %10, %2
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.proto* @smp_load_acquire(%struct.proto**) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @tcp_bpf_rebuild_protos(i32, %struct.proto*) #1

declare dso_local i32 @smp_store_release(%struct.proto**, %struct.proto*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
