; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_datagram.c_ip6_datagram_release_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_datagram.c_ip6_datagram_release_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dst_entry = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 (%struct.dst_entry*, i32)* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip6_datagram_release_cb(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.dst_entry*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = getelementptr inbounds %struct.sock, %struct.sock* %4, i32 0, i32 0
  %6 = call i64 @ipv6_addr_v4mapped(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %39

9:                                                ; preds = %1
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load %struct.sock*, %struct.sock** %2, align 8
  %12 = call %struct.dst_entry* @__sk_dst_get(%struct.sock* %11)
  store %struct.dst_entry* %12, %struct.dst_entry** %3, align 8
  %13 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %14 = icmp ne %struct.dst_entry* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %9
  %16 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %17 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %22 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64 (%struct.dst_entry*, i32)*, i64 (%struct.dst_entry*, i32)** %24, align 8
  %26 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %27 = load %struct.sock*, %struct.sock** %2, align 8
  %28 = call %struct.TYPE_4__* @inet6_sk(%struct.sock* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 %25(%struct.dst_entry* %26, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %20, %15, %9
  %34 = call i32 (...) @rcu_read_unlock()
  br label %39

35:                                               ; preds = %20
  %36 = call i32 (...) @rcu_read_unlock()
  %37 = load %struct.sock*, %struct.sock** %2, align 8
  %38 = call i32 @ip6_datagram_dst_update(%struct.sock* %37, i32 0)
  br label %39

39:                                               ; preds = %35, %33, %8
  ret void
}

declare dso_local i64 @ipv6_addr_v4mapped(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.dst_entry* @__sk_dst_get(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ip6_datagram_dst_update(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
