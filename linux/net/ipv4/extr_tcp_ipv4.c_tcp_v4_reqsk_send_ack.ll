; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ipv4.c_tcp_v4_reqsk_send_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ipv4.c_tcp_v4_reqsk_send_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.sk_buff = type { i32 }
%struct.request_sock = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%union.tcp_md5_addr = type { i32 }

@TCP_LISTEN = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@IP_REPLY_ARG_NOSRCCHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*, %struct.request_sock*)* @tcp_v4_reqsk_send_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_v4_reqsk_send_ack(%struct.sock* %0, %struct.sk_buff* %1, %struct.request_sock* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.request_sock*, align 8
  %7 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.request_sock* %2, %struct.request_sock** %6, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @TCP_LISTEN, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %15 = call %struct.TYPE_6__* @tcp_rsk(%struct.request_sock* %14)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  br label %24

19:                                               ; preds = %3
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = call %struct.TYPE_5__* @tcp_sk(%struct.sock* %20)
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  br label %24

24:                                               ; preds = %19, %13
  %25 = phi i64 [ %18, %13 ], [ %23, %19 ]
  store i64 %25, i64* %7, align 8
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %30 = call %struct.TYPE_6__* @tcp_rsk(%struct.request_sock* %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %34 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %37 = call %struct.TYPE_8__* @inet_rsk(%struct.request_sock* %36)
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = ashr i32 %35, %39
  %41 = call i64 (...) @tcp_time_stamp_raw()
  %42 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %43 = call %struct.TYPE_6__* @tcp_rsk(%struct.request_sock* %42)
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %41, %45
  %47 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %48 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sock*, %struct.sock** %4, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = call %struct.TYPE_7__* @ip_hdr(%struct.sk_buff* %51)
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = bitcast i32* %53 to %union.tcp_md5_addr*
  %55 = load i32, i32* @AF_INET, align 4
  %56 = call i32 @tcp_md5_do_lookup(%struct.sock* %50, %union.tcp_md5_addr* %54, i32 %55)
  %57 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %58 = call %struct.TYPE_8__* @inet_rsk(%struct.request_sock* %57)
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %24
  %63 = load i32, i32* @IP_REPLY_ARG_NOSRCCHECK, align 4
  br label %65

64:                                               ; preds = %24
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 0, %64 ]
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = call %struct.TYPE_7__* @ip_hdr(%struct.sk_buff* %67)
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @tcp_v4_send_ack(%struct.sock* %26, %struct.sk_buff* %27, i64 %28, i32 %32, i32 %40, i64 %46, i32 %49, i32 0, i32 %56, i32 %66, i32 %70)
  ret void
}

declare dso_local %struct.TYPE_6__* @tcp_rsk(%struct.request_sock*) #1

declare dso_local %struct.TYPE_5__* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_v4_send_ack(%struct.sock*, %struct.sk_buff*, i64, i32, i32, i64, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @inet_rsk(%struct.request_sock*) #1

declare dso_local i64 @tcp_time_stamp_raw(...) #1

declare dso_local i32 @tcp_md5_do_lookup(%struct.sock*, %union.tcp_md5_addr*, i32) #1

declare dso_local %struct.TYPE_7__* @ip_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
