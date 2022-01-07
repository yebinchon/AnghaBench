; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_datagram.c_ip4_datagram_release_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_datagram.c_ip4_datagram_release_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.inet_sock = type { i32, i32, i32, i32, i32 }
%struct.ip_options_rcu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.dst_entry = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 (%struct.dst_entry*, i32)* }
%struct.flowi4 = type { i32 }
%struct.rtable = type { %struct.dst_entry }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip4_datagram_release_cb(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.inet_sock*, align 8
  %4 = alloca %struct.ip_options_rcu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dst_entry*, align 8
  %7 = alloca %struct.flowi4, align 4
  %8 = alloca %struct.rtable*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call %struct.inet_sock* @inet_sk(%struct.sock* %9)
  store %struct.inet_sock* %10, %struct.inet_sock** %3, align 8
  %11 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %12 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = call i32 (...) @rcu_read_lock()
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = call %struct.dst_entry* @__sk_dst_get(%struct.sock* %15)
  store %struct.dst_entry* %16, %struct.dst_entry** %6, align 8
  %17 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %18 = icmp ne %struct.dst_entry* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %1
  %20 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %21 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %26 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64 (%struct.dst_entry*, i32)*, i64 (%struct.dst_entry*, i32)** %28, align 8
  %30 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %31 = call i64 %29(%struct.dst_entry* %30, i32 0)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24, %19, %1
  %34 = call i32 (...) @rcu_read_unlock()
  br label %89

35:                                               ; preds = %24
  %36 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %37 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.ip_options_rcu* @rcu_dereference(i32 %38)
  store %struct.ip_options_rcu* %39, %struct.ip_options_rcu** %4, align 8
  %40 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %4, align 8
  %41 = icmp ne %struct.ip_options_rcu* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %35
  %43 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %4, align 8
  %44 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %4, align 8
  %50 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %48, %42, %35
  %54 = load %struct.sock*, %struct.sock** %2, align 8
  %55 = call i32 @sock_net(%struct.sock* %54)
  %56 = load %struct.sock*, %struct.sock** %2, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %59 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %62 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %65 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.sock*, %struct.sock** %2, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.sock*, %struct.sock** %2, align 8
  %71 = call i32 @RT_CONN_FLAGS(%struct.sock* %70)
  %72 = load %struct.sock*, %struct.sock** %2, align 8
  %73 = getelementptr inbounds %struct.sock, %struct.sock* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.rtable* @ip_route_output_ports(i32 %55, %struct.flowi4* %7, %struct.sock* %56, i32 %57, i32 %60, i32 %63, i32 %66, i32 %69, i32 %71, i32 %74)
  store %struct.rtable* %75, %struct.rtable** %8, align 8
  %76 = load %struct.rtable*, %struct.rtable** %8, align 8
  %77 = call i32 @IS_ERR(%struct.rtable* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %53
  %80 = load %struct.rtable*, %struct.rtable** %8, align 8
  %81 = getelementptr inbounds %struct.rtable, %struct.rtable* %80, i32 0, i32 0
  br label %83

82:                                               ; preds = %53
  br label %83

83:                                               ; preds = %82, %79
  %84 = phi %struct.dst_entry* [ %81, %79 ], [ null, %82 ]
  store %struct.dst_entry* %84, %struct.dst_entry** %6, align 8
  %85 = load %struct.sock*, %struct.sock** %2, align 8
  %86 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %87 = call i32 @sk_dst_set(%struct.sock* %85, %struct.dst_entry* %86)
  %88 = call i32 (...) @rcu_read_unlock()
  br label %89

89:                                               ; preds = %83, %33
  ret void
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.dst_entry* @__sk_dst_get(%struct.sock*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.ip_options_rcu* @rcu_dereference(i32) #1

declare dso_local %struct.rtable* @ip_route_output_ports(i32, %struct.flowi4*, %struct.sock*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @RT_CONN_FLAGS(%struct.sock*) #1

declare dso_local i32 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @sk_dst_set(%struct.sock*, %struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
