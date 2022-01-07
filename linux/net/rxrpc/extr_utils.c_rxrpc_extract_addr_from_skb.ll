; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_utils.c_rxrpc_extract_addr_from_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_utils.c_rxrpc_extract_addr_from_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_rxrpc = type { i32, %struct.TYPE_11__, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@SOCK_DGRAM = common dso_local global i8* null, align 8
@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"AF_RXRPC: Unknown eth protocol %u\0A\00", align 1
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxrpc_extract_addr_from_skb(%struct.sockaddr_rxrpc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_rxrpc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.sockaddr_rxrpc* %0, %struct.sockaddr_rxrpc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %6 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %4, align 8
  %7 = call i32 @memset(%struct.sockaddr_rxrpc* %6, i32 0, i32 40)
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ntohs(i32 %10)
  switch i32 %11, label %40 [
    i32 129, label %12
  ]

12:                                               ; preds = %2
  %13 = load i8*, i8** @SOCK_DGRAM, align 8
  %14 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %4, align 8
  %15 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %4, align 8
  %17 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %16, i32 0, i32 0
  store i32 12, i32* %17, align 8
  %18 = load i32, i32* @AF_INET, align 4
  %19 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %4, align 8
  %20 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  store i32 %18, i32* %22, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call %struct.TYPE_12__* @udp_hdr(%struct.sk_buff* %23)
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %4, align 8
  %28 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  store i32 %26, i32* %30, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call %struct.TYPE_14__* @ip_hdr(%struct.sk_buff* %31)
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %4, align 8
  %36 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store i32 %34, i32* %39, align 4
  store i32 0, i32* %3, align 4
  br label %48

40:                                               ; preds = %2
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ntohs(i32 %43)
  %45 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EAFNOSUPPORT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %40, %12
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @memset(%struct.sockaddr_rxrpc*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.TYPE_12__* @udp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_14__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
