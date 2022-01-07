; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_inet6_bind_verify.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_inet6_bind_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_sock = type { %struct.TYPE_12__*, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { %struct.sctp_af* }
%struct.sctp_af = type { i32 (%union.sctp_addr*, %struct.sctp_sock*)* }
%struct.TYPE_8__ = type { i64, i32 }
%union.sctp_addr = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.net_device = type { i32 }
%struct.net = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_sock*, %union.sctp_addr*)* @sctp_inet6_bind_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_inet6_bind_verify(%struct.sctp_sock* %0, %union.sctp_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_sock*, align 8
  %5 = alloca %union.sctp_addr*, align 8
  %6 = alloca %struct.sctp_af*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.net*, align 8
  store %struct.sctp_sock* %0, %struct.sctp_sock** %4, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %5, align 8
  %10 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %11 = bitcast %union.sctp_addr* %10 to %struct.TYPE_7__*
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AF_INET6, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %18 = bitcast %union.sctp_addr* %17 to %struct.TYPE_7__*
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call %struct.sctp_af* @sctp_get_af_specific(i64 %20)
  store %struct.sctp_af* %21, %struct.sctp_af** %6, align 8
  br label %83

22:                                               ; preds = %2
  %23 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %24 = bitcast %union.sctp_addr* %23 to %struct.TYPE_11__*
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = call i32 @ipv6_addr_type(i32* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %77

31:                                               ; preds = %22
  %32 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %33 = bitcast %union.sctp_addr* %32 to %struct.TYPE_11__*
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %90

38:                                               ; preds = %31
  %39 = load %struct.sctp_sock*, %struct.sctp_sock** %4, align 8
  %40 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = call %struct.net* @sock_net(i32* %41)
  store %struct.net* %42, %struct.net** %9, align 8
  %43 = call i32 (...) @rcu_read_lock()
  %44 = load %struct.net*, %struct.net** %9, align 8
  %45 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %46 = bitcast %union.sctp_addr* %45 to %struct.TYPE_11__*
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.net_device* @dev_get_by_index_rcu(%struct.net* %44, i32 %48)
  store %struct.net_device* %49, %struct.net_device** %8, align 8
  %50 = load %struct.net_device*, %struct.net_device** %8, align 8
  %51 = icmp ne %struct.net_device* %50, null
  br i1 %51, label %52, label %73

52:                                               ; preds = %38
  %53 = load %struct.sctp_sock*, %struct.sctp_sock** %4, align 8
  %54 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %75, label %58

58:                                               ; preds = %52
  %59 = load %struct.net*, %struct.net** %9, align 8
  %60 = getelementptr inbounds %struct.net, %struct.net* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %58
  %66 = load %struct.net*, %struct.net** %9, align 8
  %67 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %68 = bitcast %union.sctp_addr* %67 to %struct.TYPE_11__*
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load %struct.net_device*, %struct.net_device** %8, align 8
  %71 = call i64 @ipv6_chk_addr(%struct.net* %66, i32* %69, %struct.net_device* %70, i32 0)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %65, %38
  %74 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %3, align 4
  br label %90

75:                                               ; preds = %65, %58, %52
  %76 = call i32 (...) @rcu_read_unlock()
  br label %77

77:                                               ; preds = %75, %22
  %78 = load %struct.sctp_sock*, %struct.sctp_sock** %4, align 8
  %79 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %78, i32 0, i32 0
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load %struct.sctp_af*, %struct.sctp_af** %81, align 8
  store %struct.sctp_af* %82, %struct.sctp_af** %6, align 8
  br label %83

83:                                               ; preds = %77, %16
  %84 = load %struct.sctp_af*, %struct.sctp_af** %6, align 8
  %85 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %84, i32 0, i32 0
  %86 = load i32 (%union.sctp_addr*, %struct.sctp_sock*)*, i32 (%union.sctp_addr*, %struct.sctp_sock*)** %85, align 8
  %87 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %88 = load %struct.sctp_sock*, %struct.sctp_sock** %4, align 8
  %89 = call i32 %86(%union.sctp_addr* %87, %struct.sctp_sock* %88)
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %83, %73, %37
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i64) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local %struct.net* @sock_net(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @dev_get_by_index_rcu(%struct.net*, i32) #1

declare dso_local i64 @ipv6_chk_addr(%struct.net*, i32*, %struct.net_device*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
