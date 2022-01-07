; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_sk_update_pmtu.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_sk_update_pmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.sock = type { i32, i32, i32, i32 }
%struct.dst_entry = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 (%struct.dst_entry*, i32)* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip6_sk_update_pmtu(%struct.sk_buff* %0, %struct.sock* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dst_entry*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sock*, %struct.sock** %5, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @l3mdev_master_ifindex(i64 %22)
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %19, %14, %3
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = load %struct.sock*, %struct.sock** %5, align 8
  %27 = call i32 @sock_net(%struct.sock* %26)
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.sock*, %struct.sock** %5, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sock*, %struct.sock** %5, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ip6_update_pmtu(%struct.sk_buff* %25, i32 %27, i32 %28, i32 %29, i32 %32, i32 %35)
  %37 = load %struct.sock*, %struct.sock** %5, align 8
  %38 = call %struct.dst_entry* @__sk_dst_get(%struct.sock* %37)
  store %struct.dst_entry* %38, %struct.dst_entry** %8, align 8
  %39 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %40 = icmp ne %struct.dst_entry* %39, null
  br i1 %40, label %41, label %59

41:                                               ; preds = %24
  %42 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %43 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %48 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64 (%struct.dst_entry*, i32)*, i64 (%struct.dst_entry*, i32)** %50, align 8
  %52 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %53 = load %struct.sock*, %struct.sock** %5, align 8
  %54 = call %struct.TYPE_4__* @inet6_sk(%struct.sock* %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 %51(%struct.dst_entry* %52, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46, %41, %24
  br label %77

60:                                               ; preds = %46
  %61 = load %struct.sock*, %struct.sock** %5, align 8
  %62 = call i32 @bh_lock_sock(%struct.sock* %61)
  %63 = load %struct.sock*, %struct.sock** %5, align 8
  %64 = call i32 @sock_owned_by_user(%struct.sock* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %60
  %67 = load %struct.sock*, %struct.sock** %5, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 1
  %69 = call i32 @ipv6_addr_v4mapped(i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load %struct.sock*, %struct.sock** %5, align 8
  %73 = call i32 @ip6_datagram_dst_update(%struct.sock* %72, i32 0)
  br label %74

74:                                               ; preds = %71, %66, %60
  %75 = load %struct.sock*, %struct.sock** %5, align 8
  %76 = call i32 @bh_unlock_sock(%struct.sock* %75)
  br label %77

77:                                               ; preds = %74, %59
  ret void
}

declare dso_local i32 @l3mdev_master_ifindex(i64) #1

declare dso_local i32 @ip6_update_pmtu(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.dst_entry* @__sk_dst_get(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @ipv6_addr_v4mapped(i32*) #1

declare dso_local i32 @ip6_datagram_dst_update(%struct.sock*, i32) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
