; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_inet6_send_verify.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_inet6_send_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_sock = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.sctp_af* }
%struct.sctp_af = type { i32 }
%struct.TYPE_5__ = type { i32 }
%union.sctp_addr = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.net_device = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_sock*, %union.sctp_addr*)* @sctp_inet6_send_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_inet6_send_verify(%struct.sctp_sock* %0, %union.sctp_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_sock*, align 8
  %5 = alloca %union.sctp_addr*, align 8
  %6 = alloca %struct.sctp_af*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  store %struct.sctp_sock* %0, %struct.sctp_sock** %4, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %5, align 8
  store %struct.sctp_af* null, %struct.sctp_af** %6, align 8
  %9 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %10 = bitcast %union.sctp_addr* %9 to %struct.TYPE_8__*
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AF_INET6, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %17 = bitcast %union.sctp_addr* %16 to %struct.TYPE_8__*
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call %struct.sctp_af* @sctp_get_af_specific(i64 %19)
  store %struct.sctp_af* %20, %struct.sctp_af** %6, align 8
  br label %59

21:                                               ; preds = %2
  %22 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %23 = bitcast %union.sctp_addr* %22 to %struct.TYPE_6__*
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = call i32 @ipv6_addr_type(i32* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %21
  %31 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %32 = bitcast %union.sctp_addr* %31 to %struct.TYPE_6__*
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %63

37:                                               ; preds = %30
  %38 = call i32 (...) @rcu_read_lock()
  %39 = load %struct.sctp_sock*, %struct.sctp_sock** %4, align 8
  %40 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = call i32 @sock_net(i32* %41)
  %43 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %44 = bitcast %union.sctp_addr* %43 to %struct.TYPE_6__*
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.net_device* @dev_get_by_index_rcu(i32 %42, i32 %46)
  store %struct.net_device* %47, %struct.net_device** %8, align 8
  %48 = call i32 (...) @rcu_read_unlock()
  %49 = load %struct.net_device*, %struct.net_device** %8, align 8
  %50 = icmp ne %struct.net_device* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %63

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %21
  %54 = load %struct.sctp_sock*, %struct.sctp_sock** %4, align 8
  %55 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load %struct.sctp_af*, %struct.sctp_af** %57, align 8
  store %struct.sctp_af* %58, %struct.sctp_af** %6, align 8
  br label %59

59:                                               ; preds = %53, %15
  %60 = load %struct.sctp_af*, %struct.sctp_af** %6, align 8
  %61 = icmp ne %struct.sctp_af* %60, null
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %51, %36
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i64) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @dev_get_by_index_rcu(i32, i32) #1

declare dso_local i32 @sock_net(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
