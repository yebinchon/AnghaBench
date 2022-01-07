; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svcsock.c_svc_udp_get_dest_address4.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svcsock.c_svc_udp_get_dest_address4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.cmsghdr = type { i64 }
%struct.in_pktinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@IP_PKTINFO = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.cmsghdr*)* @svc_udp_get_dest_address4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_udp_get_dest_address4(%struct.svc_rqst* %0, %struct.cmsghdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.cmsghdr*, align 8
  %6 = alloca %struct.in_pktinfo*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.cmsghdr* %1, %struct.cmsghdr** %5, align 8
  %8 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %9 = call %struct.in_pktinfo* @CMSG_DATA(%struct.cmsghdr* %8)
  store %struct.in_pktinfo* %9, %struct.in_pktinfo** %6, align 8
  %10 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %11 = call %struct.sockaddr_in* @svc_daddr_in(%struct.svc_rqst* %10)
  store %struct.sockaddr_in* %11, %struct.sockaddr_in** %7, align 8
  %12 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %13 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IP_PKTINFO, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

18:                                               ; preds = %2
  %19 = load i32, i32* @AF_INET, align 4
  %20 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.in_pktinfo*, %struct.in_pktinfo** %6, align 8
  %23 = getelementptr inbounds %struct.in_pktinfo, %struct.in_pktinfo* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %18, %17
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.in_pktinfo* @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local %struct.sockaddr_in* @svc_daddr_in(%struct.svc_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
