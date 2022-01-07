; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_inet6_skb_msgname.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_inet6_skb_msgname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%union.sctp_addr = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32, i64, i32 }
%struct.sctphdr = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i8*, i32*)* @sctp_inet6_skb_msgname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_inet6_skb_msgname(%struct.sk_buff* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %union.sctp_addr*, align 8
  %8 = alloca %struct.sctphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %88

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %union.sctp_addr*
  store %union.sctp_addr* %14, %union.sctp_addr** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call %struct.sctphdr* @sctp_hdr(%struct.sk_buff* %15)
  store %struct.sctphdr* %16, %struct.sctphdr** %8, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call %struct.TYPE_10__* @ip_hdr(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %22, label %41

22:                                               ; preds = %12
  %23 = load i32, i32* @AF_INET, align 4
  %24 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %25 = bitcast %union.sctp_addr* %24 to %struct.TYPE_7__*
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 8
  %27 = load %struct.sctphdr*, %struct.sctphdr** %8, align 8
  %28 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %31 = bitcast %union.sctp_addr* %30 to %struct.TYPE_7__*
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call %struct.TYPE_10__* @ip_hdr(%struct.sk_buff* %33)
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %38 = bitcast %union.sctp_addr* %37 to %struct.TYPE_7__*
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 8
  br label %80

41:                                               ; preds = %12
  %42 = load i32, i32* @AF_INET6, align 4
  %43 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %44 = bitcast %union.sctp_addr* %43 to %struct.TYPE_8__*
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 4
  store i32 %42, i32* %45, align 8
  %46 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %47 = bitcast %union.sctp_addr* %46 to %struct.TYPE_8__*
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.sctphdr*, %struct.sctphdr** %8, align 8
  %50 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %53 = bitcast %union.sctp_addr* %52 to %struct.TYPE_8__*
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = call %struct.TYPE_9__* @ipv6_hdr(%struct.sk_buff* %55)
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %60 = bitcast %union.sctp_addr* %59 to %struct.TYPE_8__*
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 8
  %62 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %63 = bitcast %union.sctp_addr* %62 to %struct.TYPE_8__*
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = call i32 @ipv6_addr_type(i32* %64)
  %66 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %41
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = call i64 @sctp_v6_skb_iif(%struct.sk_buff* %70)
  %72 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %73 = bitcast %union.sctp_addr* %72 to %struct.TYPE_8__*
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i64 %71, i64* %74, align 8
  br label %79

75:                                               ; preds = %41
  %76 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %77 = bitcast %union.sctp_addr* %76 to %struct.TYPE_8__*
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %75, %69
  br label %80

80:                                               ; preds = %79, %22
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @sctp_sk(i32 %83)
  %85 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %86 = call i32 @sctp_v6_addr_to_user(i32 %84, %union.sctp_addr* %85)
  %87 = load i32*, i32** %6, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %80, %11
  ret void
}

declare dso_local %struct.sctphdr* @sctp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_10__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_9__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local i64 @sctp_v6_skb_iif(%struct.sk_buff*) #1

declare dso_local i32 @sctp_v6_addr_to_user(i32, %union.sctp_addr*) #1

declare dso_local i32 @sctp_sk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
