; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_inet_child_forget.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_inet_child_forget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_sock = type { %struct.sock* }
%struct.sock = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 (%struct.sock*, i32)* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@O_NONBLOCK = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.request_sock*, %struct.sock*)* @inet_child_forget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inet_child_forget(%struct.sock* %0, %struct.request_sock* %1, %struct.sock* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.request_sock*, align 8
  %6 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.request_sock* %1, %struct.request_sock** %5, align 8
  store %struct.sock* %2, %struct.sock** %6, align 8
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %10, align 8
  %12 = load %struct.sock*, %struct.sock** %6, align 8
  %13 = load i32, i32* @O_NONBLOCK, align 4
  %14 = call i32 %11(%struct.sock* %12, i32 %13)
  %15 = load %struct.sock*, %struct.sock** %6, align 8
  %16 = call i32 @sock_orphan(%struct.sock* %15)
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @percpu_counter_inc(i32 %21)
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IPPROTO_TCP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %3
  %29 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %30 = call %struct.TYPE_6__* @tcp_rsk(%struct.request_sock* %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %28
  %35 = load %struct.sock*, %struct.sock** %6, align 8
  %36 = call %struct.TYPE_5__* @tcp_sk(%struct.sock* %35)
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.request_sock* @rcu_access_pointer(i32 %38)
  %40 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %41 = icmp ne %struct.request_sock* %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load %struct.sock*, %struct.sock** %4, align 8
  %45 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %46 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %45, i32 0, i32 0
  %47 = load %struct.sock*, %struct.sock** %46, align 8
  %48 = icmp ne %struct.sock* %44, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @BUG_ON(i32 %49)
  %51 = load %struct.sock*, %struct.sock** %6, align 8
  %52 = call %struct.TYPE_5__* @tcp_sk(%struct.sock* %51)
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @RCU_INIT_POINTER(i32 %54, i32* null)
  br label %56

56:                                               ; preds = %34, %28, %3
  %57 = load %struct.sock*, %struct.sock** %6, align 8
  %58 = call i32 @inet_csk_destroy_sock(%struct.sock* %57)
  ret void
}

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @percpu_counter_inc(i32) #1

declare dso_local %struct.TYPE_6__* @tcp_rsk(%struct.request_sock*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.request_sock* @rcu_access_pointer(i32) #1

declare dso_local %struct.TYPE_5__* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @inet_csk_destroy_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
