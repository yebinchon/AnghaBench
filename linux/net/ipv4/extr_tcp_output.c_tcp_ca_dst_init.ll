; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_ca_dst_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_ca_dst_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dst_entry = type { i32 }
%struct.inet_connection_sock = type { %struct.tcp_congestion_ops*, i32 }
%struct.tcp_congestion_ops = type { i32 }

@RTAX_CC_ALGO = common dso_local global i32 0, align 4
@TCP_CA_UNSPEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.dst_entry*)* @tcp_ca_dst_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_ca_dst_init(%struct.sock* %0, %struct.dst_entry* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.inet_connection_sock*, align 8
  %6 = alloca %struct.tcp_congestion_ops*, align 8
  %7 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.dst_entry* %1, %struct.dst_entry** %4, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %8)
  store %struct.inet_connection_sock* %9, %struct.inet_connection_sock** %5, align 8
  %10 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %11 = load i32, i32* @RTAX_CC_ALGO, align 4
  %12 = call i64 @dst_metric(%struct.dst_entry* %10, i32 %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @TCP_CA_UNSPEC, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %50

17:                                               ; preds = %2
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load i64, i64* %7, align 8
  %20 = call %struct.tcp_congestion_ops* @tcp_ca_find_key(i64 %19)
  store %struct.tcp_congestion_ops* %20, %struct.tcp_congestion_ops** %6, align 8
  %21 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %6, align 8
  %22 = icmp ne %struct.tcp_congestion_ops* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %6, align 8
  %25 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @try_module_get(i32 %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %23, %17
  %30 = phi i1 [ false, %17 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %36 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %35, i32 0, i32 0
  %37 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %36, align 8
  %38 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @module_put(i32 %39)
  %41 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %42 = call i32 @tcp_ca_dst_locked(%struct.dst_entry* %41)
  %43 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %44 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %6, align 8
  %46 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %47 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %46, i32 0, i32 0
  store %struct.tcp_congestion_ops* %45, %struct.tcp_congestion_ops** %47, align 8
  br label %48

48:                                               ; preds = %34, %29
  %49 = call i32 (...) @rcu_read_unlock()
  br label %50

50:                                               ; preds = %48, %16
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i64 @dst_metric(%struct.dst_entry*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tcp_congestion_ops* @tcp_ca_find_key(i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @try_module_get(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @tcp_ca_dst_locked(%struct.dst_entry*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
