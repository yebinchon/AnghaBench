; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_inet_csk_rebuild_route.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_inet_csk_rebuild_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.sock = type { i32, i32 }
%struct.flowi = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.flowi4 }
%struct.flowi4 = type { i32 }
%struct.inet_sock = type { i32, i32, i32, i32, i32 }
%struct.ip_options_rcu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.rtable = type { %struct.dst_entry }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dst_entry* (%struct.sock*, %struct.flowi*)* @inet_csk_rebuild_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dst_entry* @inet_csk_rebuild_route(%struct.sock* %0, %struct.flowi* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.flowi*, align 8
  %5 = alloca %struct.inet_sock*, align 8
  %6 = alloca %struct.ip_options_rcu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.flowi4*, align 8
  %9 = alloca %struct.rtable*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.flowi* %1, %struct.flowi** %4, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.inet_sock* @inet_sk(%struct.sock* %10)
  store %struct.inet_sock* %11, %struct.inet_sock** %5, align 8
  %12 = load %struct.inet_sock*, %struct.inet_sock** %5, align 8
  %13 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = call i32 (...) @rcu_read_lock()
  %16 = load %struct.inet_sock*, %struct.inet_sock** %5, align 8
  %17 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.ip_options_rcu* @rcu_dereference(i32 %18)
  store %struct.ip_options_rcu* %19, %struct.ip_options_rcu** %6, align 8
  %20 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %6, align 8
  %21 = icmp ne %struct.ip_options_rcu* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %6, align 8
  %24 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %6, align 8
  %30 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %28, %22, %2
  %34 = load %struct.flowi*, %struct.flowi** %4, align 8
  %35 = getelementptr inbounds %struct.flowi, %struct.flowi* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store %struct.flowi4* %36, %struct.flowi4** %8, align 8
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = call i32 @sock_net(%struct.sock* %37)
  %39 = load %struct.flowi4*, %struct.flowi4** %8, align 8
  %40 = load %struct.sock*, %struct.sock** %3, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.inet_sock*, %struct.inet_sock** %5, align 8
  %43 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.inet_sock*, %struct.inet_sock** %5, align 8
  %46 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.inet_sock*, %struct.inet_sock** %5, align 8
  %49 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sock*, %struct.sock** %3, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sock*, %struct.sock** %3, align 8
  %55 = call i32 @RT_CONN_FLAGS(%struct.sock* %54)
  %56 = load %struct.sock*, %struct.sock** %3, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.rtable* @ip_route_output_ports(i32 %38, %struct.flowi4* %39, %struct.sock* %40, i32 %41, i32 %44, i32 %47, i32 %50, i32 %53, i32 %55, i32 %58)
  store %struct.rtable* %59, %struct.rtable** %9, align 8
  %60 = load %struct.rtable*, %struct.rtable** %9, align 8
  %61 = call i64 @IS_ERR(%struct.rtable* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %33
  store %struct.rtable* null, %struct.rtable** %9, align 8
  br label %64

64:                                               ; preds = %63, %33
  %65 = load %struct.rtable*, %struct.rtable** %9, align 8
  %66 = icmp ne %struct.rtable* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load %struct.sock*, %struct.sock** %3, align 8
  %69 = load %struct.rtable*, %struct.rtable** %9, align 8
  %70 = getelementptr inbounds %struct.rtable, %struct.rtable* %69, i32 0, i32 0
  %71 = call i32 @sk_setup_caps(%struct.sock* %68, %struct.dst_entry* %70)
  br label %72

72:                                               ; preds = %67, %64
  %73 = call i32 (...) @rcu_read_unlock()
  %74 = load %struct.rtable*, %struct.rtable** %9, align 8
  %75 = getelementptr inbounds %struct.rtable, %struct.rtable* %74, i32 0, i32 0
  ret %struct.dst_entry* %75
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ip_options_rcu* @rcu_dereference(i32) #1

declare dso_local %struct.rtable* @ip_route_output_ports(i32, %struct.flowi4*, %struct.sock*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @RT_CONN_FLAGS(%struct.sock*) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @sk_setup_caps(%struct.sock*, %struct.dst_entry*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
