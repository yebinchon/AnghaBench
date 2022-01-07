; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_ipv4.c_dccp_do_pmtu_discovery.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_ipv4.c_dccp_do_pmtu_discovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 }
%struct.iphdr = type { i32 }
%struct.dst_entry = type { i32 }
%struct.inet_sock = type { i64 }
%struct.dccp_sock = type { i32 }
%struct.TYPE_2__ = type { i64 }

@DCCP_LISTEN = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@IP_PMTUDISC_DONT = common dso_local global i64 0, align 8
@DCCP_PKT_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.iphdr*, i64)* @dccp_do_pmtu_discovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dccp_do_pmtu_discovery(%struct.sock* %0, %struct.iphdr* %1, i64 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dst_entry*, align 8
  %8 = alloca %struct.inet_sock*, align 8
  %9 = alloca %struct.dccp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.iphdr* %1, %struct.iphdr** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.inet_sock* @inet_sk(%struct.sock* %10)
  store %struct.inet_sock* %11, %struct.inet_sock** %8, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %12)
  store %struct.dccp_sock* %13, %struct.dccp_sock** %9, align 8
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DCCP_LISTEN, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %70

20:                                               ; preds = %3
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call %struct.dst_entry* @inet_csk_update_pmtu(%struct.sock* %21, i64 %22)
  store %struct.dst_entry* %23, %struct.dst_entry** %7, align 8
  %24 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %25 = icmp ne %struct.dst_entry* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %70

27:                                               ; preds = %20
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %30 = call i64 @dst_mtu(%struct.dst_entry* %29)
  %31 = icmp slt i64 %28, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %35 = call i64 @ip_dont_fragment(%struct.sock* %33, %struct.dst_entry* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @EMSGSIZE, align 4
  %39 = load %struct.sock*, %struct.sock** %4, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %37, %32, %27
  %42 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %43 = call i64 @dst_mtu(%struct.dst_entry* %42)
  store i64 %43, i64* %6, align 8
  %44 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %45 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IP_PMTUDISC_DONT, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %41
  %50 = load %struct.sock*, %struct.sock** %4, align 8
  %51 = call i64 @ip_sk_accept_pmtu(%struct.sock* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %49
  %54 = load %struct.sock*, %struct.sock** %4, align 8
  %55 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load %struct.sock*, %struct.sock** %4, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @dccp_sync_mss(%struct.sock* %61, i64 %62)
  %64 = load %struct.sock*, %struct.sock** %4, align 8
  %65 = load %struct.dccp_sock*, %struct.dccp_sock** %9, align 8
  %66 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @DCCP_PKT_SYNC, align 4
  %69 = call i32 @dccp_send_sync(%struct.sock* %64, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %19, %26, %60, %53, %49, %41
  ret void
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.dst_entry* @inet_csk_update_pmtu(%struct.sock*, i64) #1

declare dso_local i64 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i64 @ip_dont_fragment(%struct.sock*, %struct.dst_entry*) #1

declare dso_local i64 @ip_sk_accept_pmtu(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @dccp_sync_mss(%struct.sock*, i64) #1

declare dso_local i32 @dccp_send_sync(%struct.sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
