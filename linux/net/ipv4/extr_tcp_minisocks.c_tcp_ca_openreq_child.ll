; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_minisocks.c_tcp_ca_openreq_child.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_minisocks.c_tcp_ca_openreq_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dst_entry = type { i32 }
%struct.inet_connection_sock = type { %struct.tcp_congestion_ops*, i32, i32 }
%struct.tcp_congestion_ops = type { i32 }

@RTAX_CC_ALGO = common dso_local global i32 0, align 4
@TCP_CA_UNSPEC = common dso_local global i64 0, align 8
@TCP_CA_Open = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_ca_openreq_child(%struct.sock* %0, %struct.dst_entry* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.inet_connection_sock*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcp_congestion_ops*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.dst_entry* %1, %struct.dst_entry** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %9)
  store %struct.inet_connection_sock* %10, %struct.inet_connection_sock** %5, align 8
  %11 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %12 = load i32, i32* @RTAX_CC_ALGO, align 4
  %13 = call i64 @dst_metric(%struct.dst_entry* %11, i32 %12)
  store i64 %13, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @TCP_CA_UNSPEC, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %2
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load i64, i64* %6, align 8
  %20 = call %struct.tcp_congestion_ops* @tcp_ca_find_key(i64 %19)
  store %struct.tcp_congestion_ops* %20, %struct.tcp_congestion_ops** %8, align 8
  %21 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %8, align 8
  %22 = icmp ne %struct.tcp_congestion_ops* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %8, align 8
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
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %36 = call i32 @tcp_ca_dst_locked(%struct.dst_entry* %35)
  %37 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %38 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %8, align 8
  %40 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %41 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %40, i32 0, i32 0
  store %struct.tcp_congestion_ops* %39, %struct.tcp_congestion_ops** %41, align 8
  store i32 1, i32* %7, align 4
  br label %42

42:                                               ; preds = %34, %29
  %43 = call i32 (...) @rcu_read_unlock()
  br label %44

44:                                               ; preds = %42, %2
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %44
  %48 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %49 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %54 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %53, i32 0, i32 0
  %55 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %54, align 8
  %56 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @try_module_get(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %52, %47
  %61 = load %struct.sock*, %struct.sock** %3, align 8
  %62 = call i32 @tcp_assign_congestion_control(%struct.sock* %61)
  br label %63

63:                                               ; preds = %60, %52, %44
  %64 = load %struct.sock*, %struct.sock** %3, align 8
  %65 = load i32, i32* @TCP_CA_Open, align 4
  %66 = call i32 @tcp_set_ca_state(%struct.sock* %64, i32 %65)
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i64 @dst_metric(%struct.dst_entry*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tcp_congestion_ops* @tcp_ca_find_key(i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @try_module_get(i32) #1

declare dso_local i32 @tcp_ca_dst_locked(%struct.dst_entry*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @tcp_assign_congestion_control(%struct.sock*) #1

declare dso_local i32 @tcp_set_ca_state(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
