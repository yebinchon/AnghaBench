; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_tcp.c_rds_tcp_tune.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_tcp.c_rds_tcp_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32 }
%struct.net = type { i32 }
%struct.rds_tcp_net = type { i64, i64 }

@rds_tcp_netid = common dso_local global i32 0, align 4
@SOCK_SNDBUF_LOCK = common dso_local global i32 0, align 4
@SOCK_RCVBUF_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_tcp_tune(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.rds_tcp_net*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %6 = load %struct.socket*, %struct.socket** %2, align 8
  %7 = getelementptr inbounds %struct.socket, %struct.socket* %6, i32 0, i32 0
  %8 = load %struct.sock*, %struct.sock** %7, align 8
  store %struct.sock* %8, %struct.sock** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.net* @sock_net(%struct.sock* %9)
  store %struct.net* %10, %struct.net** %4, align 8
  %11 = load %struct.net*, %struct.net** %4, align 8
  %12 = load i32, i32* @rds_tcp_netid, align 4
  %13 = call %struct.rds_tcp_net* @net_generic(%struct.net* %11, i32 %12)
  store %struct.rds_tcp_net* %13, %struct.rds_tcp_net** %5, align 8
  %14 = load %struct.socket*, %struct.socket** %2, align 8
  %15 = call i32 @rds_tcp_nonagle(%struct.socket* %14)
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = call i32 @lock_sock(%struct.sock* %16)
  %18 = load %struct.rds_tcp_net*, %struct.rds_tcp_net** %5, align 8
  %19 = getelementptr inbounds %struct.rds_tcp_net, %struct.rds_tcp_net* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load %struct.rds_tcp_net*, %struct.rds_tcp_net** %5, align 8
  %24 = getelementptr inbounds %struct.rds_tcp_net, %struct.rds_tcp_net* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* @SOCK_SNDBUF_LOCK, align 4
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %22, %1
  %34 = load %struct.rds_tcp_net*, %struct.rds_tcp_net** %5, align 8
  %35 = getelementptr inbounds %struct.rds_tcp_net, %struct.rds_tcp_net* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.rds_tcp_net*, %struct.rds_tcp_net** %5, align 8
  %40 = getelementptr inbounds %struct.rds_tcp_net, %struct.rds_tcp_net* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.sock*, %struct.sock** %3, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* @SOCK_RCVBUF_LOCK, align 4
  %45 = load %struct.sock*, %struct.sock** %3, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %38, %33
  %50 = load %struct.sock*, %struct.sock** %3, align 8
  %51 = call i32 @release_sock(%struct.sock* %50)
  ret void
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.rds_tcp_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @rds_tcp_nonagle(%struct.socket*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
