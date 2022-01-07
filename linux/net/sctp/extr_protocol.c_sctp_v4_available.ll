; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_protocol.c_sctp_v4_available.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_protocol.c_sctp_v4_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_addr = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.sctp_sock = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.net = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@INADDR_ANY = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.sctp_addr*, %struct.sctp_sock*)* @sctp_v4_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_v4_available(%union.sctp_addr* %0, %struct.sctp_sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.sctp_addr*, align 8
  %5 = alloca %struct.sctp_sock*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  store %union.sctp_addr* %0, %union.sctp_addr** %4, align 8
  store %struct.sctp_sock* %1, %struct.sctp_sock** %5, align 8
  %8 = load %struct.sctp_sock*, %struct.sctp_sock** %5, align 8
  %9 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = call %struct.net* @sock_net(i32* %10)
  store %struct.net* %11, %struct.net** %6, align 8
  %12 = load %struct.net*, %struct.net** %6, align 8
  %13 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %14 = bitcast %union.sctp_addr* %13 to %struct.TYPE_7__*
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @inet_addr_type(%struct.net* %12, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %20 = bitcast %union.sctp_addr* %19 to %struct.TYPE_7__*
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @INADDR_ANY, align 4
  %25 = call i32 @htonl(i32 %24)
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @RTN_LOCAL, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load %struct.sctp_sock*, %struct.sctp_sock** %5, align 8
  %33 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %31
  %38 = load %struct.net*, %struct.net** %6, align 8
  %39 = getelementptr inbounds %struct.net, %struct.net* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %51

44:                                               ; preds = %37, %31, %27, %2
  %45 = load %struct.sctp_sock*, %struct.sctp_sock** %5, align 8
  %46 = call i32 @sctp_opt2sk(%struct.sctp_sock* %45)
  %47 = call i64 @ipv6_only_sock(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %51

50:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %49, %43
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.net* @sock_net(i32*) #1

declare dso_local i32 @inet_addr_type(%struct.net*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @ipv6_only_sock(i32) #1

declare dso_local i32 @sctp_opt2sk(%struct.sctp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
