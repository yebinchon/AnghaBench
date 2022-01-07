; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_diag.c_sctp_diag_dump_one.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_diag.c_sctp_diag_dump_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.inet_diag_req_v2 = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, i32, i32*, i32 }
%struct.net = type { i32 }
%union.sctp_addr = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i32, i32 }
%struct.sctp_comm_param = type { i32, %struct.nlmsghdr*, %struct.inet_diag_req_v2*, %struct.sk_buff* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i8* null, align 8
@sctp_tsp_dump_one = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.inet_diag_req_v2*)* @sctp_diag_dump_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_diag_dump_one(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.inet_diag_req_v2* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca %struct.inet_diag_req_v2*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %union.sctp_addr, align 8
  %9 = alloca %union.sctp_addr, align 8
  %10 = alloca %struct.sctp_comm_param, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  store %struct.inet_diag_req_v2* %2, %struct.inet_diag_req_v2** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.net* @sock_net(i32 %13)
  store %struct.net* %14, %struct.net** %7, align 8
  %15 = getelementptr inbounds %struct.sctp_comm_param, %struct.sctp_comm_param* %10, i32 0, i32 0
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = load i32, i32* @CAP_NET_ADMIN, align 4
  %18 = call i32 @netlink_net_capable(%struct.sk_buff* %16, i32 %17)
  store i32 %18, i32* %15, align 8
  %19 = getelementptr inbounds %struct.sctp_comm_param, %struct.sctp_comm_param* %10, i32 0, i32 1
  %20 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  store %struct.nlmsghdr* %20, %struct.nlmsghdr** %19, align 8
  %21 = getelementptr inbounds %struct.sctp_comm_param, %struct.sctp_comm_param* %10, i32 0, i32 2
  %22 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %6, align 8
  store %struct.inet_diag_req_v2* %22, %struct.inet_diag_req_v2** %21, align 8
  %23 = getelementptr inbounds %struct.sctp_comm_param, %struct.sctp_comm_param* %10, i32 0, i32 3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %24, %struct.sk_buff** %23, align 8
  %25 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %6, align 8
  %26 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AF_INET, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %67

30:                                               ; preds = %3
  %31 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %6, align 8
  %32 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = bitcast %union.sctp_addr* %8 to %struct.TYPE_6__*
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %6, align 8
  %38 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = bitcast %union.sctp_addr* %8 to %struct.TYPE_6__*
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load i64, i64* @AF_INET, align 8
  %47 = bitcast %union.sctp_addr* %8 to %struct.TYPE_6__*
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %6, align 8
  %50 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = bitcast %union.sctp_addr* %9 to %struct.TYPE_6__*
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %6, align 8
  %56 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = bitcast %union.sctp_addr* %9 to %struct.TYPE_6__*
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load i64, i64* @AF_INET, align 8
  %65 = bitcast %union.sctp_addr* %9 to %struct.TYPE_6__*
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %100

67:                                               ; preds = %3
  %68 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %6, align 8
  %69 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = bitcast %union.sctp_addr* %8 to %struct.TYPE_8__*
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = bitcast %union.sctp_addr* %8 to %struct.TYPE_8__*
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %6, align 8
  %77 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @memcpy(i32* %75, i32* %79, i32 4)
  %81 = load i8*, i8** @AF_INET6, align 8
  %82 = bitcast %union.sctp_addr* %8 to %struct.TYPE_8__*
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  %84 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %6, align 8
  %85 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = bitcast %union.sctp_addr* %9 to %struct.TYPE_8__*
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = bitcast %union.sctp_addr* %9 to %struct.TYPE_8__*
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %6, align 8
  %93 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @memcpy(i32* %91, i32* %95, i32 4)
  %97 = load i8*, i8** @AF_INET6, align 8
  %98 = bitcast %union.sctp_addr* %9 to %struct.TYPE_8__*
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %67, %30
  %101 = load i32, i32* @sctp_tsp_dump_one, align 4
  %102 = load %struct.net*, %struct.net** %7, align 8
  %103 = call i32 @sctp_transport_lookup_process(i32 %101, %struct.net* %102, %union.sctp_addr* %8, %union.sctp_addr* %9, %struct.sctp_comm_param* %10)
  ret i32 %103
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @netlink_net_capable(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sctp_transport_lookup_process(i32, %struct.net*, %union.sctp_addr*, %union.sctp_addr*, %struct.sctp_comm_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
