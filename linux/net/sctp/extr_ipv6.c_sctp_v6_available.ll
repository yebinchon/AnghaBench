; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_v6_available.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_v6_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_addr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sctp_sock = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.net = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.in6_addr = type { i32 }
%struct.TYPE_10__ = type { i32 (%union.sctp_addr*, %struct.sctp_sock*)* }

@IPV6_ADDR_ANY = common dso_local global i32 0, align 4
@IPV6_ADDR_MAPPED = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@IPV6_ADDR_UNICAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.sctp_addr*, %struct.sctp_sock*)* @sctp_v6_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_v6_available(%union.sctp_addr* %0, %struct.sctp_sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.sctp_addr*, align 8
  %5 = alloca %struct.sctp_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  store %union.sctp_addr* %0, %union.sctp_addr** %4, align 8
  store %struct.sctp_sock* %1, %struct.sctp_sock** %5, align 8
  %9 = load %struct.sctp_sock*, %struct.sctp_sock** %5, align 8
  %10 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = call %struct.net* @sock_net(i32* %11)
  store %struct.net* %12, %struct.net** %7, align 8
  %13 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %14 = bitcast %union.sctp_addr* %13 to %struct.TYPE_6__*
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = bitcast i32* %15 to %struct.in6_addr*
  store %struct.in6_addr* %16, %struct.in6_addr** %8, align 8
  %17 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %18 = call i32 @ipv6_addr_type(%struct.in6_addr* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %73

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @IPV6_ADDR_MAPPED, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %23
  %28 = load %struct.sctp_sock*, %struct.sctp_sock** %5, align 8
  %29 = icmp ne %struct.sctp_sock* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct.sctp_sock*, %struct.sctp_sock** %5, align 8
  %32 = call i32 @sctp_opt2sk(%struct.sctp_sock* %31)
  %33 = call i64 @ipv6_only_sock(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %73

36:                                               ; preds = %30, %27
  %37 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %38 = call i32 @sctp_v6_map_v4(%union.sctp_addr* %37)
  %39 = load i32, i32* @AF_INET, align 4
  %40 = call %struct.TYPE_10__* @sctp_get_af_specific(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32 (%union.sctp_addr*, %struct.sctp_sock*)*, i32 (%union.sctp_addr*, %struct.sctp_sock*)** %41, align 8
  %43 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %44 = load %struct.sctp_sock*, %struct.sctp_sock** %5, align 8
  %45 = call i32 %42(%union.sctp_addr* %43, %struct.sctp_sock* %44)
  store i32 %45, i32* %3, align 4
  br label %73

46:                                               ; preds = %23
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @IPV6_ADDR_UNICAST, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %73

52:                                               ; preds = %46
  %53 = load %struct.sctp_sock*, %struct.sctp_sock** %5, align 8
  %54 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %52
  %59 = load %struct.net*, %struct.net** %7, align 8
  %60 = getelementptr inbounds %struct.net, %struct.net* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %58
  %66 = load %struct.net*, %struct.net** %7, align 8
  %67 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %68 = call i64 @ipv6_chk_addr(%struct.net* %66, %struct.in6_addr* %67, i32* null, i32 0)
  %69 = icmp ne i64 %68, 0
  br label %70

70:                                               ; preds = %65, %58, %52
  %71 = phi i1 [ true, %58 ], [ true, %52 ], [ %69, %65 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %70, %51, %36, %35, %22
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.net* @sock_net(i32*) #1

declare dso_local i32 @ipv6_addr_type(%struct.in6_addr*) #1

declare dso_local i64 @ipv6_only_sock(i32) #1

declare dso_local i32 @sctp_opt2sk(%struct.sctp_sock*) #1

declare dso_local i32 @sctp_v6_map_v4(%union.sctp_addr*) #1

declare dso_local %struct.TYPE_10__* @sctp_get_af_specific(i32) #1

declare dso_local i64 @ipv6_chk_addr(%struct.net*, %struct.in6_addr*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
