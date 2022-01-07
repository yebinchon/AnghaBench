; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_inet6_connection_sock.c_inet6_csk_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_inet6_connection_sock.c_inet6_csk_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32, i64 }
%struct.sk_buff = type { i32 }
%struct.flowi = type { i32 }
%struct.ipv6_pinfo = type { i32, i32 }
%struct.flowi6 = type { i32 }
%struct.dst_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet6_csk_xmit(%struct.sock* %0, %struct.sk_buff* %1, %struct.flowi* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.flowi*, align 8
  %8 = alloca %struct.ipv6_pinfo*, align 8
  %9 = alloca %struct.flowi6, align 4
  %10 = alloca %struct.dst_entry*, align 8
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.flowi* %2, %struct.flowi** %7, align 8
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %12)
  store %struct.ipv6_pinfo* %13, %struct.ipv6_pinfo** %8, align 8
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = call %struct.dst_entry* @inet6_csk_route_socket(%struct.sock* %14, %struct.flowi6* %9)
  store %struct.dst_entry* %15, %struct.dst_entry** %10, align 8
  %16 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %17 = call i64 @IS_ERR(%struct.dst_entry* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %21 = call i32 @PTR_ERR(%struct.dst_entry* %20)
  %22 = sub nsw i32 0, %21
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.sock*, %struct.sock** %5, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call i32 @kfree_skb(%struct.sk_buff* %27)
  %29 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %30 = call i32 @PTR_ERR(%struct.dst_entry* %29)
  store i32 %30, i32* %4, align 4
  br label %58

31:                                               ; preds = %3
  %32 = call i32 (...) @rcu_read_lock()
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %35 = call i32 @skb_dst_set_noref(%struct.sk_buff* %33, %struct.dst_entry* %34)
  %36 = load %struct.sock*, %struct.sock** %5, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %9, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load %struct.sock*, %struct.sock** %5, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = load %struct.sock*, %struct.sock** %5, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %46 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @rcu_dereference(i32 %47)
  %49 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %50 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sock*, %struct.sock** %5, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ip6_xmit(%struct.sock* %40, %struct.sk_buff* %41, %struct.flowi6* %9, i32 %44, i32 %48, i32 %51, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = call i32 (...) @rcu_read_unlock()
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %31, %19
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.dst_entry* @inet6_csk_route_socket(%struct.sock*, %struct.flowi6*) #1

declare dso_local i64 @IS_ERR(%struct.dst_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.dst_entry*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @skb_dst_set_noref(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local i32 @ip6_xmit(%struct.sock*, %struct.sk_buff*, %struct.flowi6*, i32, i32, i32, i32) #1

declare dso_local i32 @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
